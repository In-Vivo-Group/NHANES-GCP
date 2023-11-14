import re
import time

import duckdb
import numpy as np
import pandas as pd
import pandas_gbq

from utils import generate_filename, update_bq_table

bucket_name = "nhanes_clean"

### GET METADATA DATAFRAME
metadata_df = pd.read_gbq(
    """SELECT *,
    replace(gcs_data_filename,'.XPT','.parquet') as parquet_filename
    FROM nhanes.nhanes_file_metadata
    WHERE dataset = 'all-continuous-nhanes'
    AND page_component != 'Limited Access'
    """,
    project_id="nhanes-genai",
    dialect="standard",
)

### FIND UNIQUE DATA FILE AND PAGE COMPONENT COMBINATIONS TO COMBINE INTO TABLES
file_subset_df = metadata_df[["data_file_name", "page_component"]].drop_duplicates()
file_subset_df["data_file_name"] = file_subset_df["data_file_name"].str.strip()
file_subset_df["page_component"] = file_subset_df["page_component"].str.strip()

file_subset_df.drop_duplicates(inplace=True)

i = 0

start_time = time.time()
new_time = time.time()

### IDENTIFY WHICH COLUMNS TO INCLUDE IN THE DATA FROM METADATA
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

### FOR EACH TABLE, GENERATE A TABLE ALIAS, CONVERT DATA TYPES, UPLOAD
for data_file_name, page_component in file_subset_df.sort_values(
    by="data_file_name"
).values:
    file_df = metadata_df[
        (metadata_df["data_file_name"] == data_file_name.strip())
        & (metadata_df["page_component"].str.contains(page_component.strip()))
    ]
    if file_df["start_year"].max() > 2015:
        alias = generate_filename(
            data_file_name.lower() + " " + page_component.lower(), ""
        )

        df = duckdb.read_parquet(
            f"s3://{bucket_name}/all-continuous-nhanes/data/{alias}*.parquet",
            union_by_name=True,
            filename=True,
        ).to_df()

        df["survey"] = data_file_name
        df["survey_type"] = page_component
        if "SEQN" in df.columns:
            df["SEQN"] = df["SEQN"].astype("Int64")

        df["filename_only"] = df["filename"].apply(lambda x: x.split("/")[-1])

        df = df.merge(
            metadata_df[metadata_cols],
            how="left",
            left_on="filename_only",
            right_on="parquet_filename",
        )

        df["start_year"] = df["start_year"].astype("Int64")
        df["end_year"] = df["end_year"].astype("Int64")
        df["published_date"] = pd.to_datetime(df["published_date"], errors="ignore")

        df.drop(["filename_only"], axis=1, inplace=True)

        try:
            str_df = df.select_dtypes([object])
            str_df = str_df.stack().str.decode("utf-8").unstack()

            for col in str_df.columns:
                if col not in metadata_cols and col != "filename":
                    df[col] = str_df[col]
        except Exception as ex:
            print(ex)
            print(
                f"Unable to convert data types from bytes to string for: {data_file_name} - {page_component}"
            )

        update_bq_table(
            df,
            alias,
            dataset="nhanes",
            bucket="nhanes_clean",
            truncate=True,
            max_error=0,
            schema=None,
        )
        i += 1

        if i % 10 == 0 and i > 0:
            print(f"Last 10 datasets took {time.time() - new_time} seconds")

print(f"Entire process took {time.time() - start_time} seconds")
