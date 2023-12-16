#! /bin/bash

# Add Python 3.11 to apt

sudo add-apt-repository ppa:deadsnakes/ppa -y 
sudo apt-get update -y

# # Install Python 3.11
sudo apt-get install wget build-essential libncursesw5-dev unzip libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libffi-dev zlib1g-dev python3-pip python3.11  python3.11-dev python3.11-venv -y
touch /tmp/python3-11-installed.txt

#  Install Poetry
sudo mkdir /opt/poetry
sudo chmod 755 /opt/poetry
export POETRY_HOME=/opt/poetry
curl -sSL https://install.python-poetry.org | python3 -
export PATH="/opt/poetry/bin:$PATH"
poetry --version > /tmp/poetry-version.txt

#  install venv
python3.11 -m venv /root/myenv
source /root/myenv/bin/activate
mkdir /root/.dbt
python --version > /tmp/python-version.txt


export DATA_DIR=/data
mkdir $DATA_DIR
cd $DATA_DIR

## Data processing steps TODO: here
# git clone git@github.com:In-Vivo-Group/NHANES-GPT.git
# cd NHANES-GPT

# Set project home
export PROJECT_HOME=/data/dummy-dummy
# create dbt profile
sudo bash create_dbt_profile_template.sh
# install packages
poetry install

# TODO - Set evironment variables
export PROJECT_ID=$(gcloud config get-value project)
export BUCKET_NAME=$(gsutil ls -b "gs://*" | sed 's|gs://||; s|/$||'|grep storage-bucket-nhanes)
export GCP_KEY_ID=$(gcloud secrets versions access 1 --secret="duckdbaccessid" --project=$PROJECT_ID)
export GCP_ACCESS_KEY=$(gcloud secrets versions access latest --secret="duckdbaccesskey" --project=$PROJECT_ID)


echo "Environment variables set" > /tmp/env-vars-set.txt

# execute the data processing steps
cd $PROJECT_HOME/ELT
echo "Starting data scraping - expected to take 5 mins to complete"
python scrape_nhanes_metadata.py

sleep 10

echo "Starting data scraping - expected to take 3 hours"
# Expexted to take 3 hours
python scrape_nhanes_data_files.py

sleep 10

# Expexted to take 40 mins
echo "Starting data processing"
python create_nhanes_dataset.py



# Store column level data

bash get_bq_schemas.sh

# Create data models

python generate_dbt_models.py

# Finally, run dbt
echo "Starting dbt" 
cd $PROJECT_HOME/dbt
poetry run dbt build --select all_continuous.staging.* all_continuous.bronze.*

# Sleep for 5 mins to allow for dbt to finish
sleep 300

# Shutdown the instance
sudo shutdown -h now
