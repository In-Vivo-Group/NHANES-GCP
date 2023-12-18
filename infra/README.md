# Deploying NHANES in GCP Cloud project

Create end-to-end NHANES dataset and required infra with Terraform CDK deployment

- Create required Service account & backend state GCS bucket
```
export PROJECT_ID=PROJECT_ID
# Existing Service Account or create new SA
export PROJECT_SA_ACCOUNT=service_account_email_address

gcloud projects add-iam-policy-binding $PROJECT_ID \
  --member="serviceAccount:$PROJECT_SA_ACCOUNT" \
  --role="roles/owner"
```
- SA key will be required to create CDKTF stack

- Set the correct project

```
gcloud config set project $PROJECT_ID
```

- Enable API's for project

```
gcloud services enable bigquery.googleapis.com
gcloud services enable cloudapis.googleapis.com
gcloud services enable cloudresourcemanager.googleapis.com
gcloud services enable compute.googleapis.com
gcloud services enable datastore.googleapis.com
gcloud services enable iam.googleapis.com
gcloud services enable iamcredentials.googleapis.com
gcloud services enable logging.googleapis.com
gcloud services enable monitoring.googleapis.com
gcloud services enable oslogin.googleapis.com
gcloud services enable secretmanager.googleapis.com
gcloud services enable servicemanagement.googleapis.com
gcloud services enable serviceusage.googleapis.com
gcloud services enable sql-component.googleapis.com
gcloud services enable storage-api.googleapis.com
gcloud services enable storage-component.googleapis.com
gcloud services enable storage.googleapis.com
```

- Install NodeJS if needed and install CDKTF

```
npm install --global cdktf-cli@latest

cdktf --version
```

- Clone Repo 

```
git clone https://github.com/In-Vivo-Group/NHANES-GPT.git

```


# Init CDKTF 

```

cd NHANES-GPT/infra
export PROJECT_ID=project-validation-10

cdktf init

cdktf provider add random
cdktf provider add provider-random


cdktf get
cdktf synth
cdktf deploy

```


