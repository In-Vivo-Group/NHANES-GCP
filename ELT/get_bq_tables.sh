#!/bin/bash

# Get the current GCP project ID
PROJECT_ID=$(gcloud config get-value project)

# Check if PROJECT_ID is empty
if [ -z "$PROJECT_ID" ]; then
    echo "GCP Project ID not found. Make sure you are logged in to gcloud and a project is set."
    exit 1
fi

# Lists all tables in the specified dataset of the current GCP project
# Excludes any table containing "---" or "nhanes_file_metadata"
bq ls --max_results 1000 "${PROJECT_ID}:nhanes" | awk 'NR > 1 && !/---/ && !/nhanes_file_metadata/ {print $1}'
