import datetime
import time
from urllib.parse import urlparse

import pandas as pd
import pandas_gbq
import requests
from bs4 import BeautifulSoup
from utils import (generate_filename, scrape_nhanes_table, update_bq_table,
                   upload_blob_from_string)

bucket_name = "nhanes_clean"

### GET METADATA DATAFRAME
df = pd.read_gbq(
    "SELECT * FROM nhanes.nhanes_file_metadata",
    project_id="nhanes-genai",
    dialect="standard",
)

print(f"Preparing to download data and docs from {len(df)} datasets")

### DOWNLOAD FILES FROM CDC AND STORE IN GCS BUCKET BY DATASET
start_time = time.time()
new_time = time.time()
for index, row in df.iterrows():
    if not row["doc_file_url"].endswith(".aspx"):
        try:
            r = requests.get(row["doc_file_url"], stream=True, timeout=20)
            html_content = r.content
            file_name = row["gcs_doc_filename"]
            upload_blob_from_string(
                bucket_name=bucket_name,
                bucket_folder=row["dataset"] + "/docs/",
                file_name=file_name,
                blob_string=html_content,
                encoding="text/html",
            )
        except Exception as ex:
            print(ex)
            print(f"Unable to upload {row['gcs_doc_filename']}")
    else:
        print(f"Skipping {row['doc_file_url']}")

    if (
        not pd.isnull(row["data_file_url"])
        and not "RDC" in row["data_file_url"]
        and row["gcs_data_filename"].lower().endswith(".xpt")
    ):
        try:
            data_file_df = pd.read_sas(row["data_file_url"])
            data_file_df.to_parquet(
                f"gs://{bucket_name}/{row['dataset']}/data/{row['gcs_data_filename'].replace('.XPT','.parquet')}"
            )
            print(
                f"{row['gcs_data_filename']} uploaded to gs://{bucket_name}/{row['dataset']}/data/"
            )
        except Exception as ex:
            print(ex)
            print(f"Unable to upload {row['gcs_data_filename']}")

    else:
        print(f"Skipping {row['gcs_data_filename']}")

    if index % 100 == 0 and index > 0:
        print(f"Last 100 files completed in {time.time() - new_time} seconds")
        new_time = time.time()

print(f"File Download process took {time.time() - start_time} seconds")
