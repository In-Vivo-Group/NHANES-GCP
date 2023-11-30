import datetime
import logging
import os
import time

import pandas as pd
import requests
from bs4 import BeautifulSoup
from utils import (generate_filename, scrape_nhanes_table, update_bq_table,
                   upload_blob_from_string)
from dotenv import load_dotenv

load_dotenv('./myenv.env')

# Setup logging
logging.basicConfig(
    level=logging.INFO, format="%(asctime)s - %(levelname)s - %(message)s"
)


BASE_URL = "https://wwwn.cdc.gov"
NHANES_URL = f"{BASE_URL}/nchs/nhanes/default.aspx"
PROJECT_ID = os.getenv("PROJECT_ID")
BUCKET_NAME = os.getenv("BUCKET_NAME")
DATASET_ALIAS = "nhanes_file_metadata"
DATASET_NAME = "nhanes"


def get_soup(url):
    """Return BeautifulSoup object for a given URL."""
    response = requests.get(url)
    return BeautifulSoup(response.text, "lxml")


def extract_dataset_ids(soup):
    """Extract NHANES dataset IDs from the soup object."""
    lis = soup.find("ul", id="nav-primary").find_all(
        "li", {"class": "list-group-item nav-lvl2"}
    )
    return [el.ul["id"] for el in lis if el.ul and "nhanes" in el.ul["id"]]


def should_scrape(li):
    """Determine if a list item should be scraped for data."""
    text = li.text.strip()
    return "Data" in text and all(
        exclude not in text for exclude in ["Overview", "Errata", "Issues", "Files"]
    )


def process_metadata(df, dataset, component_text):
    """Process and format the metadata DataFrame."""
    columns = df.columns.tolist()
    df["page_component"] = component_text.strip()
    df["dataset"] = dataset.strip()
    df["last_updated"] = datetime.datetime.utcnow()

    if "years" in columns:
        df["years"] = df["years"].str.strip()
        df["start_year"] = df["years"].apply(lambda x: x.split("-")[0]).astype(int)
        df["end_year"] = df["years"].apply(lambda x: x.split("-")[1]).astype(int)
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
                + df["page_component"]
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

    return df


def scrape_metadata_for_dataset(soup, dataset_id):
    """Scrape metadata for a given NHANES dataset ID."""
    dfs = []
    lis_to_scrape = soup.find("ul", id=dataset_id).find_all("li")
    for li in lis_to_scrape:
        if should_scrape(li):
            component_text = li.text.strip().replace("All ", "").replace(" Data", "")
            url = BASE_URL + li.a["href"]
            r = requests.get(url, timeout=20)
            soup = BeautifulSoup(r.text, "lxml")
            df = scrape_nhanes_table(soup, component_text)
            df = process_metadata(df, dataset_id.replace("nav-group-", ""), component_text)
            dfs.append(df)
    return dfs


def main():
    logging.info("Starting to scrape NHANES metadata")
    soup = get_soup(NHANES_URL)
    dataset_ids = extract_dataset_ids(soup)

    start_time = time.time()
    all_metadata_dfs = []

    logging.info("Dataset information scraped. Beginning metadata downloads")
    for dataset_id in dataset_ids:
        all_metadata_dfs.extend(scrape_metadata_for_dataset(soup, dataset_id))

    yearly_df = pd.concat(all_metadata_dfs, ignore_index=True)
    update_bq_table(
        yearly_df,
        DATASET_ALIAS,
        dataset=DATASET_NAME,
        bucket=BUCKET_NAME,
        truncate=True,
        max_error=0,
        schema=None,
    )

    logging.info(f"Metadata process took {time.time() - start_time} seconds")


if __name__ == "__main__":
    main()
