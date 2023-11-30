import datetime
import logging
import os
import time
import requests

import pandas as pd
from utils import (generate_filename, scrape_nhanes_table, update_bq_table,
                   upload_blob_from_string)
from dotenv import load_dotenv

load_dotenv('./myenv.env')

# Constants
PROJECT_ID = os.getenv("PROJECT_ID")
BUCKET_NAME = os.getenv("BUCKET_NAME")
DATA_QUERY = "SELECT * FROM nhanes.nhanes_file_metadata"

# Configure logging
logging.basicConfig(level=logging.INFO)


def get_metadata_dataframe(query, project_id):
    """
    Fetches a DataFrame with metadata from a BigQuery table.

    Args:
        query (str): SQL query to fetch metadata.
        project_id (str): Google Cloud project ID.

    Returns:
        DataFrame: A pandas DataFrame containing the metadata.
    """
    return pd.read_gbq(query, project_id=project_id, dialect="standard")


def upload_document(bucket_name, row):
    """
    Uploads a document to Google Cloud Storage.

    Args:
        bucket_name (str): Name of the bucket where the document will be stored.
        row (pd.Series): Row from the DataFrame containing document information.
    """
    try:
        response = requests.get(row["doc_file_url"], stream=True, timeout=20)
        upload_blob_from_string(
            bucket_name=bucket_name,
            bucket_folder=row["dataset"] + "/docs/",
            file_name=row["gcs_doc_filename"],
            blob_string=response.content,
            encoding="text/html",
        )
    except Exception as ex:
        logging.error(f"Error uploading {row['gcs_doc_filename']}: {ex}")


def upload_data_file(bucket_name, row):
    """
    Uploads a data file to Google Cloud Storage.

    Args:
        bucket_name (str): Name of the bucket where the data file will be stored.
        row (pd.Series): Row from the DataFrame containing data file information.
    """
    try:
        data_file_df = pd.read_sas(row["data_file_url"])
        data_file_df.to_parquet(
            f"gs://{bucket_name}/{row['dataset']}/data/{row['gcs_data_filename'].replace('.XPT', '.parquet')}"
        )
    except Exception as ex:
        logging.error(f"Error uploading {row['gcs_data_filename']}: {ex}")


def process_files(df, bucket_name):
    """
    Processes and uploads files based on the metadata DataFrame.

    Args:
        df (DataFrame): DataFrame containing metadata about the files.
        bucket_name (str): Name of the Google Cloud Storage bucket.
    """
    start_time = time.time()
    for index, row in df.iterrows():
        if not row["doc_file_url"].endswith(".aspx"):
            upload_document(bucket_name, row)
        else:
            logging.info(f"Skipping document {row['doc_file_url']}")

        if (
            not pd.isnull(row["data_file_url"])
            and "RDC" not in row["data_file_url"]
            and row["gcs_data_filename"].lower().endswith(".xpt")
        ):
            upload_data_file(bucket_name, row)
        else:
            logging.info(f"Skipping data file {row['gcs_data_filename']}")

        if index % 100 == 0 and index > 0:
            logging.info(
                f"Last 100 files completed in {time.time() - start_time} seconds"
            )
            start_time = time.time()

    logging.info(f"File Download process took {time.time() - start_time} seconds")


def main():
    df = get_metadata_dataframe(DATA_QUERY, PROJECT_ID)
    logging.info(f"Preparing to download data and docs from {len(df)} datasets")
    process_files(df, BUCKET_NAME)


if __name__ == "__main__":
    main()
