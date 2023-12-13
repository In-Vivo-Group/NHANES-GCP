#! /bin/bash



sudo add-apt-repository ppa:deadsnakes/ppa -y 
sudo apt-get update -y
#sudo apt upgrade -y

# # Install Python 3.11
# do apt get for install - Abdul
sudo apt-get install wget build-essential libncursesw5-dev unzip libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libffi-dev zlib1g-dev python3-pip python3.11  python3.11-dev python3.11-venv -y
touch /tmp/python3-11-installed.txt

# # Install Poetry
sudo mkdir /opt/poetry
sudo chmod 755 /opt/poetry
export POETRY_HOME=/opt/poetry
curl -sSL https://install.python-poetry.org | python3 -
export PATH="/opt/poetry/bin:$PATH"
poetry --version > /tmp/poetry-version.txt

# # install venv
python3.11 -m venv myenv
source myenv/bin/activate
python --version > /tmp/python-version.txt

## Data processing steps TODO: here
git clone git@github.com:In-Vivo-Group/NHANES-GPT.git
cd NHANES-GPT
poetry install

# TODO - Set evironment variables
# export PROJECT_ID=...
# export BUCKET_NAME=...
# export GCP_KEY_ID=$(gcloud secrets versions access latest --secret=GCP_KEY_ID)
# export GCP_KEY=$(gcloud secrets versions access latest --secret=GCP_KEY)
# execute the data processing steps
cd NHANES-GPT/ETL
python scrape_nhanes_metadata.py
sleep 30

python scrape_nhanes_data_files.py

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

dbt build --select all_continuous.staging.* all_continuous.bronze.*

# Sleep for 5 mins to allow for dbt to finish
sleep 300

# Shutdown the instance
sudo shutdown -h now
