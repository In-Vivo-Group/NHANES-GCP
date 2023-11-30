#!/bin/bash

# Get the current GCP project ID
PROJECT_ID=$(gcloud config get-value project)

# Check if PROJECT_ID is empty
if [ -z "$PROJECT_ID" ]; then
    echo "GCP Project ID not found. Make sure you are logged in to gcloud and a project is set."
    exit 1
fi

# Read tables into an array
declare -a arr
while IFS= read -r line; do
    arr+=("$line")
done < <(./get_bq_tables.sh)

# Start Python script
echo "table_schemas = {" > ./all_continuous_nhanes_schemas.py

# Loop through the array to append table schemas
for i in "${arr[@]}"
do
   echo "'$i':" >> ./all_continuous_nhanes_schemas.py
   bq show --schema --format=prettyjson "${PROJECT_ID}:nhanes.$i" >> ./all_continuous_nhanes_schemas.py
   echo "," >> ./all_continuous_nhanes_schemas.py
done

# End Python script
echo "}" >> ./all_continuous_nhanes_schemas.py
