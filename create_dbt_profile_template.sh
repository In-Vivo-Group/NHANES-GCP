#!/bin/bash
export PROJECT_ID=$(gcloud config get-value project)


# Set variables
mkdir /root/.dbt

cat > $HOME/.dbt/profiles.yml << EOF
default:
  target: dev
  outputs:
    dev:
      type: bigquery
      method: oauth
      project: $PROJECT_ID
      dataset: dbt
      threads: 4 
EOF

echo "Script execution completed."
