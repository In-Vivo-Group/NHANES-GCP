import datetime
import time
from urllib.parse import urlparse

import pandas as pd
import requests
from bs4 import BeautifulSoup
from utils import (generate_filename, scrape_nhanes_table, update_bq_table,
                   upload_blob_from_string)

bucket_name = "nhanes_clean"

print("Starting to scrape NHANES metadata")

### VISIT TOP-LEVEL PAGE AND RETRIEVE DATASET INFORMATION
response = requests.get(f"https://wwwn.cdc.gov/nchs/nhanes/default.aspx")

soup = BeautifulSoup(response.text, "lxml")

ids = [tag["id"] for tag in soup.select("div[id]")]

lis = soup.find("ul", id="nav-primary").find_all(
    "li", {"class": "list-group-item nav-lvl2"}
)
ids = [el.ul["id"] for el in lis if el.ul]
ids = [i for i in ids if "nhanes" in i]

# ['nav-group-all-continuous-nhanes',
#  'nav-group-nhanes-2021-2023',
#  'nav-group-nhanes-2017-2020',
#  'nav-group-nhanes-2019-2020']

start_time = time.time()
new_time = time.time()
dfs = []

base_url = "https://wwwn.cdc.gov"

print("Dataset information scraped. Beginning metadata downloads")

### LOOP THROUGH DATASETS AND DOWNLOAD METADATA FROM HTML TABLES
for nhanes_id in ids:
    lis_to_scrape = soup.find("ul", id=nhanes_id).find_all("li")
    for li in lis_to_scrape:
        if (
            "Data" in li.text.strip()
            and "Overview" not in li.text.strip()
            and "Errata" not in li.text.strip()
            and "Issues" not in li.text.strip()
            and "Files" not in li.text.strip()
        ):
            component_text = li.text.strip().replace("All ", "").replace(" Data", "")
            url = base_url + li.a["href"]
            dataset = nhanes_id.replace("nav-group-", "")
            r = requests.get(url, timeout=20)
            soup = BeautifulSoup(r.text,"lxml")
            df = scrape_nhanes_table(soup, component_text)

            columns = df.columns.tolist()
            df["page_component"] = component_text
            df["dataset"] = dataset
            df["last_updated"] = datetime.datetime.utcnow()

            if "years" in columns:
                df["years"] = df["years"].str.strip()
                df["start_year"] = (
                    df["years"].apply(lambda x: x.split("-")[0]).astype(int)
                )
                df["end_year"] = (
                    df["years"].apply(lambda x: x.split("-")[1]).astype(int)
                )
            if "doc_file" in columns:
                df["doc_file"] = df["doc_file"].str.strip()
            if "data_file" in columns:
                df["data_file"] = df["data_file"].str.strip()
            if "date_published" in columns:
                df["date_published"] = (
                    df["date_published"].str.strip().str.replace("Updated ", "")
                )
                df["published_date"] = pd.to_datetime(
                    df["date_published"], format="%B %Y", errors="ignore"
                )
            if "data_file_name" in columns:
                if "continuous" in dataset:
                    df["gcs_doc_filename"] = (
                        df["data_file_name"]
                        + " "
                        + df["dataset"].astype(str)
                        + " "
                        + df["start_year"].astype(str)
                        + " "
                        + df["end_year"].astype(str)
                        + " Documentation"
                    ).apply(lambda x: generate_filename(x, extension=".html"))
                    df["gcs_data_filename"] = (
                        df["data_file_name"]
                        + " "
                        + df["page_component"]
                        + " "
                        + df["dataset"].astype(str)
                        + " "
                        + df["start_year"].astype(str)
                        + " "
                        + df["end_year"].astype(str)
                        + " Data"
                    ).apply(lambda x: generate_filename(x, extension=".XPT"))
                else:
                    df["gcs_doc_filename"] = (
                        df["data_file_name"]
                        + " "
                        + df["page_component"]
                        + " "
                        + df["dataset"].astype(str)
                        + " Documentation"
                    ).apply(lambda x: generate_filename(x, extension=".html"))
                    df["gcs_data_filename"] = (
                        df["data_file_name"] + " " + df["dataset"].astype(str) + " Data"
                    ).apply(lambda x: generate_filename(x, extension=".XPT"))

            dfs.append(df)

### CONCATENATE METADATA AND UPLOAD TO GCS
yearly_df = pd.concat(dfs, ignore_index=True)

alias = "nhanes_file_metadata"
update_bq_table(
    yearly_df,
    alias,
    dataset="nhanes",
    bucket=bucket_name,
    truncate=True,
    max_error=0,
    schema=None,
)

print(f"Metadata process took {time.time() - start_time} seconds")
