import csv
import datetime
import re
from io import StringIO

import google.cloud.bigquery
import httplib2 as lib2  # Example of the "as" function
import numpy as np
import pandas as pd
import pandas_gbq
from google.cloud import bigquery, storage
from google.cloud.bigquery import job
from googleapiclient.discovery import build


def update_bq_table(
    df,
    alias,
    dataset="nhanes",
    bucket="nhanes",
    truncate=True,
    max_error=0,
    schema=None,
):
    """
    Updates a BigQuery table with data from a DataFrame.

    Parameters:
    - df (pandas.DataFrame): The DataFrame containing data to upload.
    - alias (str): Alias for the table.
    - dataset (str, optional): The dataset ID in BigQuery. Defaults to 'nhanes'.
    - bucket (str, optional): The Google Cloud Storage bucket name. Defaults to 'nhanes'.
    - truncate (bool, optional): Flag to truncate the table before inserting new data. Defaults to True.
    - max_error (int, optional): The maximum number of bad records allowed. Defaults to 0.
    - schema (list, optional): The schema to use for the table. Defaults to None for autodetect.

    Returns:
    None
    """
    filename = alias + "_" + datetime.datetime.now().strftime("%Y%m%d_%H%M%S") + ".csv"

    upload_csv_from_df(
        bucket_name=bucket,
        bucket_folder=alias + "/",
        file_name=filename,
        dataframe=df,
    )

    if truncate == True:
        append = False
    else:
        append = True

    if schema == None:
        autodetect = True
    else:
        autodetect = False

    load_data_gbq(
        dataset_id=dataset,
        table_name=alias,
        bucket_name=bucket,
        bucket_folder=alias + "/",
        file_name=filename,
        schema=schema,
        autodetect=autodetect,
        append=append,
        bad_records=max_error,
    )


def upload_csv_from_df(bucket_name, bucket_folder, file_name, dataframe):
    """
    Uploads a DataFrame to Google Cloud Storage as a CSV file.

    Parameters:
    - bucket_name (str): Name of the Google Cloud Storage bucket.
    - bucket_folder (str): Folder path within the bucket.
    - file_name (str): Name of the file to be created.
    - dataframe (pandas.DataFrame): The DataFrame to be uploaded.

    Returns:
    None
    """
    client = storage.Client()
    bucket = client.get_bucket(bucket_name)
    blob = bucket.blob(bucket_folder + file_name)
    blob.upload_from_string(dataframe.to_csv(index=False, encoding="UTF-8"), "text/csv")
    print(file_name, "uploaded to", bucket_name, "/", bucket_folder)


def load_data_gbq(
    dataset_id,
    table_name,
    bucket_name,
    bucket_folder,
    file_name,
    schema,
    autodetect=False,
    append=True,
    bad_records=10,
):
    """
    Loads data from a CSV file in Google Cloud Storage into a BigQuery table.

    Parameters:
    - dataset_id (str): The dataset ID in BigQuery.
    - table_name (str): The name of the table to be updated or created.
    - bucket_name (str): The Google Cloud Storage bucket name.
    - bucket_folder (str): Folder path within the bucket.
    - file_name (str): Name of the CSV file in the bucket.
    - schema (list): The schema to be used for the table.
    - autodetect (bool, optional): Flag for schema autodetection. Defaults to False.
    - append (bool, optional): Flag to append data to the table. Defaults to True.
    - bad_records (int, optional): Number of bad records allowed. Defaults to 10.

    Returns:
    None
    """
    client = bigquery.Client()

    dataset_ref = client.dataset(dataset_id)
    job_config = bigquery.LoadJobConfig()
    if autodetect == True:
        job_config.autodetect = True
    else:
        job_config.autodetect = False
        job_config.schema = schema
    job_config.skip_leading_rows = 1
    if append == True:
        job_config.write_disposition = job.WriteDisposition.WRITE_APPEND
    else:
        job_config.write_disposition = job.WriteDisposition.WRITE_TRUNCATE
    job_config.source_format = job.SourceFormat.CSV
    job_config.max_bad_records = bad_records
    job_config.allow_quoted_newlines = True
    job_config.ignore_unknown_values = True
    job_config.encoding = "UTF-8"

    uri = "gs://" + bucket_name + "/" + bucket_folder + file_name
    load_job = client.load_table_from_uri(
        uri, dataset_ref.table(table_name), job_config=job_config
    )  # API request
    print("Starting job {}".format(load_job.job_id))

    load_job.result()  # Waits for table load to complete.
    print("Job finished.")

    destination_table = client.get_table(dataset_ref.table(table_name))
    print("Table Row Count {} rows.".format(destination_table.num_rows))


def enforce_bq_schema(report_df, alias):
    """
    Enforces a BigQuery schema on a DataFrame and prepares it for upload.

    Parameters:
    - report_df (pandas.DataFrame): The DataFrame to enforce the schema on.
    - alias (str): Alias for the schema to be applied.

    Returns:
    tuple: A tuple containing the modified DataFrame and the schema list.
    """
    schema = []
    float_fields = []
    int_fields = []
    str_fields = []
    date_fields = []
    bool_fields = []
    for record in table_schemas[alias]:
        if "mode" not in record.keys():
            record["mode"] = "NULLABLE"
        schema.append(
            bigquery.SchemaField(record["name"], record["type"], record["mode"])
        )
        if record["type"] == "FLOAT":
            float_fields.append(record["name"])
        elif record["type"] == "STRING":
            str_fields.append(record["name"])
        elif record["type"] == "DATE":
            date_fields.append(record["name"])
        elif record["type"] == "INTEGER":
            int_fields.append(record["name"])
        elif record["type"] == "BOOLEAN":
            bool_fields.append(record["name"])
    column_list = [record["name"] for record in table_schemas[alias]]
    response_columns = list(report_df.columns)

    missing_columns = list(set(column_list) - set(response_columns))
    for column in missing_columns:
        report_df[column] = np.nan

    for field in float_fields:
        try:
            report_df[field] = pd.to_numeric(
                report_df[field]
                .fillna(0.0)
                .astype(str)
                .str.replace("%", "")
                .str.replace(",", "")
                .str.replace("$", "")
                .fillna(0.0)
            ).astype(float)
        except Exception as ex:
            print(field, "float")
            print(ex)
            pass

    for field in int_fields:
        try:
            report_df[field] = pd.to_numeric(
                report_df[field]
                .fillna(0)
                .astype(str)
                .str.replace("%", "")
                .str.replace(",", "")
                .str.replace("$", "")
                .replace(".0", "")
            ).astype(int)
        except Exception as ex:
            print(field, "int")
            print(ex)
            pass
    for field in str_fields:
        try:
            report_df[field] = report_df[field].fillna("").astype(str)
        except Exception as ex:
            print(field, "str")
            print(ex)
            pass
    for field in date_fields:
        try:
            report_df[field] = pd.to_datetime(
                report_df[field], errors="ignore"
            ).dt.date.dt.strftime("%Y-%m-%d")
        except Exception as ex:
            print(field, "date")
            print(ex)
            pass
    for field in bool_fields:
        try:
            if field in response_columns:
                d = {
                    "true": True,
                    "false": False,
                    "": False,
                    "True": True,
                    "False": False,
                    "N": False,
                    "Y": True,
                    "y": True,
                    "n": True,
                    True: True,
                    False: False,
                }
                report_df[field] = report_df[field].fillna(False).map(d)
            else:
                report_df[field] = False
        except Exception as ex:
            print(field, "bool")
            print(ex)
            pass

    report_df = report_df[column_list]

    return report_df, schema


def upload_blob_from_string(
    bucket_name, bucket_folder, file_name, blob_string, encoding="text/html"
):
    """
    Uploads a string as a blob to Google Cloud Storage.

    Parameters:
    - bucket_name (str): The Google Cloud Storage bucket name.
    - bucket_folder (str): Folder path within the bucket.
    - file_name (str): The name of the file to be created.
    - blob_string (str): The string content to be uploaded.
    - encoding (str, optional): The content type of the blob. Defaults to "text/html".

    Returns:
    None
    """
    client = storage.Client()
    bucket = client.get_bucket(bucket_name)
    blob = bucket.blob(bucket_folder + file_name)
    blob.upload_from_string(blob_string, content_type=encoding)
    print(file_name, "uploaded to", bucket_name, "/", bucket_folder)


def generate_filename(title, extension):
    """
    Generates a standardized filename from a title and extension.

    Parameters:
    - title (str): The title to base the filename on.
    - extension (str): The file extension.

    Returns:
    str: A formatted filename.
    """
    return (
        "_".join(
            re.sub(r"\W+", " ", title)
            .lower()
            .replace("î²", "beta")
            .replace("î", "i")
            .split()
        )
        + extension
    )


def scrape_nhanes_table(soup, component):
    """
    Scrapes data from an NHANES table and returns it as a DataFrame.

    Parameters:
    - soup (bs4.BeautifulSoup): The BeautifulSoup object containing the NHANES table.
    - component (str): The component of the NHANES data being scraped.

    Returns:
    pandas.DataFrame: DataFrame containing the scraped data.
    """
    table = soup.find("table", id="GridView1")

    headers = []
    for i in table.find_all("th"):
        title = i.text
        headers.append(title)

    base_url = "https://wwwn.cdc.gov"

    data = []

    for j in table.find_all("tr")[1:]:
        row_data = j.find_all("td")
        row = [i.text for i in row_data] + [
            base_url + i.a["href"] for i in row_data if i.find("a")
        ]
        data.append(row)

    if len(data[0]) == len(headers) + 2:
        headers = ["_".join(h.lower().split()) for h in headers] + [
            "doc_file_url",
            "data_file_url",
        ]
    elif len(data[0]) == len(headers) + 1:
        headers = ["_".join(h.lower().split()) for h in headers] + ["doc_file_url"]
    else:
        headers = ["_".join(h.lower().split()) for h in headers]

    df = pd.DataFrame(columns=headers, data=data)

    return df
