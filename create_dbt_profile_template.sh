#!/bin/bash

# Set variables
mkdir /root/.dbt

cat > $HOME/.dbt/profiles.yml << EOF
default:
  target: dev
  outputs:
    dev:
      type: bigquery
      method: oauth
      project: corrdyn-nhanes
      dataset: dbt
      threads: 4 
EOF

echo "Script execution completed."
