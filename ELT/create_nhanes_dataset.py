import logging
import os
import re
import time
import warnings

import duckdb
import numpy as np
import pandas as pd
import pandas_gbq
from dotenv import load_dotenv
from utils import generate_filename, update_bq_table

load_dotenv("myenv.env")

# Configure logging
logging.basicConfig(
    level=logging.INFO, format="%(asctime)s - %(levelname)s - %(message)s"
)

# Constants
BUCKET_NAME = os.getenv("BUCKET_NAME")
PROJECT_ID = os.getenv("PROJECT_ID")
GCP_KEY_ID = os.getenv("GCP_KEY_ID")
GCP_ACCESS_KEY = os.getenv("GCP_ACCESS_KEY")
DATASET = "nhanes"


# Set GCP DuckDB configurations using HMAC keys https://console.cloud.google.com/storage/settings;tab=interoperability
def configure_duckdb_gcp():
    """
    Configures DuckDB for use with GCP by setting necessary S3 configurations.
    Retrieves GCP access keys from environment variables.
    Raises EnvironmentError if keys are not found.
    """
    gcp_access_key_id = GCP_KEY_ID
    gcp_secret_access_key = GCP_ACCESS_KEY

    if not gcp_access_key_id or not gcp_secret_access_key:
        logging.error("GCP access key or secret key not set in environment variables.")
        raise EnvironmentError("GCP keys not found in environment variables.")

    duckdb.sql("SET s3_endpoint='storage.googleapis.com';")
    duckdb.sql(f"SET s3_access_key_id='{gcp_access_key_id}';")
    duckdb.sql(f"SET s3_secret_access_key='{gcp_secret_access_key}';")


# Get metadata dataframe
def get_metadata_df():
    """
    Retrieves metadata dataframe from BigQuery.

    Returns:
        DataFrame containing metadata information.
    """
    query = f"""
    SELECT *,
        replace(gcs_data_filename,'.XPT','.parquet') as parquet_filename
    FROM `{PROJECT_ID}.nhanes.nhanes_file_metadata`
    WHERE dataset = 'all-continuous-nhanes'
    AND page_component != 'Limited Access'
    """

    df = pd.read_gbq(query, project_id=PROJECT_ID, dialect="standard")
    return df


# Process each file
def process_file(file_df, data_file_name, page_component, metadata_df, metadata_cols):
    """
    Processes each file specified in the metadata dataframe.

    Args:
        file_df: DataFrame of specific file metadata.
        data_file_name: Name of the data file.
        page_component: The page component associated with the data file.
        metadata_df: DataFrame containing all metadata.
        metadata_cols: List of columns to retain from the metadata.

    Returns:
        True if processing is successful, False otherwise.
    """
    alias = generate_filename(data_file_name.lower() + " " + page_component.lower(), "")
    try:
        df = duckdb.read_parquet(
            f"s3://{BUCKET_NAME}/all-continuous-nhanes/data/{alias}*.parquet",
            union_by_name=True,
            filename=True,
        ).to_df()
    except Exception as ex:
        logging.error(f"{ex} for {alias}, skipping")
        return False

    # Data type conversion and merging
    df = convert_data_types_and_merge(df, file_df, metadata_cols)

    # Update BigQuery table
    update_bq_table(
        df,
        alias,
        dataset=DATASET,
        bucket=BUCKET_NAME,
        truncate=True,
        max_error=0,
        schema=None,
    )
    return True


# Convert data types and merge with metadata
def convert_data_types_and_merge(df, file_df, metadata_cols):
    """
    Converts data types and merges the dataframe with the metadata.

    Args:
        df: DataFrame containing the data to be processed.
        file_df: DataFrame of specific file metadata.
        metadata_cols: List of columns to retain from the metadata.

    Returns:
        DataFrame after conversion of data types and merging with metadata.
    """

    if "SEQN" in df.columns:
        df["SEQN"] = df["SEQN"].astype("Int64")

    for column in df.columns:
        if column not in ["filename", "SEQN"]:
            try:
                df[column] = pd.to_numeric(df[column], errors="coerce")
            except Exception as ex:
                logging.warning(f"{ex} for {column} in {alias}")

    df["filename_only"] = df["filename"].apply(lambda x: x.split("/")[-1])
    df = df.merge(
        file_df[metadata_cols],
        how="left",
        left_on="filename_only",
        right_on="parquet_filename",
    )
    df.drop(["filename_only"], axis=1, inplace=True)

    df["start_year"] = df["start_year"].astype("Int64")
    df["end_year"] = df["end_year"].astype("Int64")
    df["published_date"] = pd.to_datetime(df["published_date"], errors="ignore")

    return df


def main():
    configure_duckdb_gcp()
    warnings.simplefilter(action="ignore", category=FutureWarning)
    metadata_df = get_metadata_df()

    file_subset_df = metadata_df[["data_file_name", "page_component"]].drop_duplicates()
    file_subset_df["data_file_name"] = file_subset_df["data_file_name"].str.strip()
    file_subset_df["page_component"] = file_subset_df["page_component"].str.strip()

    metadata_cols = [
        "start_year",
        "end_year",
        "last_updated",
        "published_date",
        "parquet_filename",
        "data_file_url",
        "doc_file_url",
        "dataset",
    ]

    start_time = time.time()
    new_time = time.time()
    processed_count = 0

    for data_file_name, page_component in file_subset_df.sort_values(
        by="data_file_name"
    ).values:
        file_df = metadata_df[
            (metadata_df["data_file_name"] == data_file_name.strip())
            & (metadata_df["page_component"].str.contains(page_component.strip()))
        ]
        if process_file(
            file_df, data_file_name, page_component, metadata_df, metadata_cols
        ):
            processed_count += 1

        if processed_count % 10 == 0:
            logging.info(f"Last 10 datasets took {time.time() - new_time} seconds")
            new_time = time.time()

    logging.info(f"Entire process took {time.time() - start_time} seconds")


if __name__ == "__main__":
    main()
