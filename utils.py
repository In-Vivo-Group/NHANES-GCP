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


def update_bq_table(
    df,
    alias,
    dataset="brightspace",
    bucket="aoeu-brightspace",
    truncate=True,
    max_error=10,
    schema=None,
):
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


def enforce_bq_schema(report_df, alias):
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
    client = storage.Client()
    bucket = client.get_bucket(bucket_name)
    blob = bucket.blob(bucket_folder + file_name)
    blob.upload_from_string(blob_string, content_type=encoding)
    print(file_name, "uploaded to", bucket_name, "/", bucket_folder)


def generate_filename(title, extension):
    return "_".join(re.sub(r"\W+", " ", title).lower().split()) + extension
