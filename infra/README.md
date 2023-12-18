# Deploying NHANES in GCP Cloud project

Create end-to-end NHANES dataset and required infra with Terraform CDK deployment

## Steps to deploy
- Create or use existing GCP project
- Create or use exisitng elevated service account
- Set the required environment variables for the project and service account
- Install CDKTF
- Deploy the Terraform CDK stack





1 - Set the correct project name for your GCP project.

```
export TF_VAR_project_id=[MY_GCP_PROJECT_ID]
```

** Note: Set each value `MY_GCP_PROJECT_ID` to the correct value for your environment! **

2 - Use GCP owner permission for creation of the CDKTF stack.


3 - Clone Repo, and change directory to infra

```
git clone https://github.com/In-Vivo-Group/NHANES-GPT.git
cd NHANES-GPT/infra
```


4 -  Install CDKTF and required dependencies

```
npm install 
```


5 - Deploy the Terraform CDK stack

```
npm run get
npm run synth
npm run deploy
```


