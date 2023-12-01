#!/bin/bash

# Set variables
SERVICE_ACCOUNT_NAME="dbt-service-account"
KEYFILE_PATH="/home/jupyter/NHANES-GPT"
PROJECT=$(gcloud config get-value project)
KEYFILE="$SERVICE_ACCOUNT_NAME-key.json"

# Create a new service account
gcloud iam service-accounts create $SERVICE_ACCOUNT_NAME \
    --description="Service account for BigQuery Editor access for dbt" \
    --display-name="dbt BigQuery Editor"

# Grant roles to the service account (e.g., BigQuery Data Viewer)
gcloud projects add-iam-policy-binding $PROJECT \
    --member="serviceAccount:$SERVICE_ACCOUNT_NAME@$PROJECT.iam.gserviceaccount.com" \
    --role="roles/bigquery.dataEditor"

# Generate the key file
gcloud iam service-accounts keys create $KEYFILE_PATH/$KEYFILE \
    --iam-account "$SERVICE_ACCOUNT_NAME@$PROJECT.iam.gserviceaccount.com"

# Wait for the keyfile to be created
sleep 5

# Create the profile_template.yml file
cat > $KEYFILE_PATH/profile_template.yml << EOF
default:
  outputs:
    dev:
      dataset: dbt
      job_execution_timeout_seconds: 1200
      job_retries: 1
      keyfile: $KEYFILE_PATH/$KEYFILE
      location: US
      method: service-account
      priority: interactive
      project: $PROJECT
      threads: 4
      type: bigquery
  target: dev
EOF

echo "Script execution completed."
