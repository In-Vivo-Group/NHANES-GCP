

# TODO - Set evironment variables
export PROJECT_ID=$(gcloud config get-value project)
# TODO - Set evironment variables for bucket
export BUCKET_NAME=poc-storage-bucket-nhanes-001
export GCP_KEY_ID=$(gcloud secrets versions access latest --secret=GCP_KEY_ID)
# export GCP_KEY=$(gcloud secrets versions access latest --secret=GCP_KEY)
# execute the data processing steps
cd NHANES-GPT/ETL
python scrape_nhanes_metadata.py
sleep 30
# Expexted to take 3 hours
echo "Starting data scraping - expected to take 3 hours"
python scrape_nhanes_data_files.py
sleep 30

# Expexted to take 40 mins
echo "Starting data processing"
python create_nhanes_dataset.py


# Store column level data

bash get_bq_schemas.sh

# Create data models

python generate_dbt_models.py


# Finally, run dbt
cd ../dbt
poetry run dbt build --select all_continuous.staging.* all_continuous.bronze.*

# Sleep for 5 mins to allow for dbt to finish
sleep 300