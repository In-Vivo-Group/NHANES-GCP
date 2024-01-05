# Deploying NHANES-GCP in your Google Cloud project
The information below describes how to setup the NHANES dataset in your Google Cloud environment. At the end of this README, you will have:
1. A Google Cloud Storage bucket containing datasets and documentation from NHANES
2. A BigQuery dataset ('nhanes') containing the raw dataset for each NHANES Continuous table for all available years for each survey
3. A BigQuery dataset ('dbt') containing the transformed table for each NHANES Continuous survey for all available years. The transformations encode the variables according to the instructions provided in the CDC's documentation for each survey/year combination.

## PREREQUISITE: Ensure you have a Google Cloud account
If you do not currently have a Google Cloud account, navigate to [Google Cloud](https://cloud.google.com/) and set up your account. Create your first project as part of that setup process. Or you can create a new project and name it something meaningful for this NHANES work.

## PREREQUISITE: Ensure that you have linked your Google Cloud project to a billing account
This process costs under $10 to complete, but it is not free. In order to run this process, you will need to navigate to [Google Cloud Billing](https://console.cloud.google.com/billing). Once you are there, select your project and either "Add a Billing Account" or "Link a Billing Account". 
![Screenshot 2024-01-05 at 1 35 24 PM](https://github.com/In-Vivo-Group/NHANES-GPT/assets/8191939/b17f8d1b-c64c-4c44-9b4f-a88d64732fd7)
![Screenshot 2024-01-05 at 1 35 32 PM](https://github.com/In-Vivo-Group/NHANES-GPT/assets/8191939/391ad449-9cbc-4564-a2fa-1c6d20c89aa2)

## DEPLOYMENT: Navigate to Google Cloud Console and begin the process of deploying the cloud architecture using the steps below
Once you have an account and a project with a billing account associated, you can navigate to the [Google Cloud Console](https://console.cloud.google.com)

### 1. Activate your Cloud Shell in your Google Cloud project
Select "Activate Cloud Shell" from the top right hand corner.
![Screenshot 2024-01-05 at 12 32 46 PM](https://github.com/In-Vivo-Group/NHANES-GPT/assets/8191939/1b9c3adf-5b20-483d-9ab6-bc7409b129c1)

This will open a terminal at the bottom of your browser window.
![Screenshot 2024-01-05 at 12 33 00 PM](https://github.com/In-Vivo-Group/NHANES-GPT/assets/8191939/b95ebb4c-59f2-460c-94f4-fbd6a8b35f44)

### 2. Set the correct project name for your deployment as an environment variable
Run the following code in your shell.
```
export TF_VAR_project_id=$(gcloud config get-value project)
```
Confirm that the project is correct by running the line below in your shell.
```
echo $TF_VAR_project_id
```
![Screenshot 2024-01-05 at 12 35 32 PM](https://github.com/In-Vivo-Group/NHANES-GPT/assets/8191939/7677f4c5-110b-4be9-91f7-694b38faf28d)

### 3. Clone the repo into your Cloud Shell. Then, change the directory to the repo's infra directory (this present directory)

Run the following line in your shell to clone the repo.
```
git clone https://github.com/In-Vivo-Group/NHANES-GPT.git
```
![Screenshot 2024-01-05 at 12 36 35 PM](https://github.com/In-Vivo-Group/NHANES-GPT/assets/8191939/f46c86c2-c6f4-4c4d-94f9-f318a17b068a)

Then run the following to change the directory.
```
cd NHANES-GPT/infra
```

### 4. From the infra directory, install dependencies

Run the following line in your shell to install dependencies.
```
npm install 
```
![Screenshot 2024-01-05 at 12 38 18 PM](https://github.com/In-Vivo-Group/NHANES-GPT/assets/8191939/7bed6859-39c1-4861-86c4-ef69bb7ccde7)

### 5. Prepare to deploy the required infrastructure

Run each of the following lines. Below are the expected outputs for each line.
```
npm run get
```
![Screenshot 2024-01-05 at 1 18 59 PM](https://github.com/In-Vivo-Group/NHANES-GPT/assets/8191939/00635de7-3104-49cd-b585-f3186921f4aa)

```
npm run synth
```
![Screenshot 2024-01-05 at 1 19 24 PM](https://github.com/In-Vivo-Group/NHANES-GPT/assets/8191939/116f31ab-c1d4-4f3b-b13e-2c535d50508b)

### 6. Deploy the required infrastructure 

Run the line below.
```
npm run deploy
```
This will require you to approve the creation of the infrastructure in two ways:
1. The first dialog box will ask you to authorize your Cloud Shell to create permissions in the project. Ensure that you click "Authorize". This will only occur the first time you run this code in the shell.
2. The second dialog will ask you to "Approve" the creation of the infrastructure by hitting ENTER on your keyboard (screenshot below). Hit ENTER.

![Screenshot 2024-01-05 at 1 33 43 PM](https://github.com/In-Vivo-Group/NHANES-GPT/assets/8191939/799cdc65-dc48-408d-9c6b-171504875e28)

The output will look like the following:
![Screenshot 2024-01-05 at 1 34 10 PM](https://github.com/In-Vivo-Group/NHANES-GPT/assets/8191939/7043988a-9eb1-4e3b-b244-adf2fb17da2f)

When the process is completed successfully, you will see the following in your Cloud Shell:
![Screenshot 2024-01-05 at 2 11 25 PM](https://github.com/In-Vivo-Group/NHANES-GPT/assets/8191939/c1b20717-e7fc-4509-a1c0-2ca59b53476b)

#### NOTE: If you encounter any permissions errors on `npm run deploy`, just wait five minutes and run it again

Example errors you may encounter are below. We are working to minimize the occurrence of these errors, but that is not always possible. Just wait 5 minutes and run `npm run deploy` again.
![Screenshot 2024-01-05 at 2 37 49 PM](https://github.com/In-Vivo-Group/NHANES-GPT/assets/8191939/7fb2874e-4472-4ed0-8a8e-18dd37234922)
![Screenshot 2024-01-05 at 2 38 01 PM](https://github.com/In-Vivo-Group/NHANES-GPT/assets/8191939/08440bd8-f3c4-40f1-9a29-f2f5636f0085)

### 7. Confirm that the virtual machine (VM) that is building the datasets is running

Navigate to [Google Cloud Compute Instances](https://console.cloud.google.com/compute/instances) and confirm that the `p1-nhanes-compute-instance` is running.

### 8. Wait 7 hours, then navigate to BigQuery and confirm that the datasets are present

Navigate to [BigQuery](https://console.cloud.google.com/bigquery) and look at the datasets available for your project. You should see `nhanes` and `dbt`.

![Screenshot 2024-01-05 at 2 42 39 PM](https://github.com/In-Vivo-Group/NHANES-GPT/assets/8191939/855a74af-15dc-4187-b5f5-22d45b6a119e)

You may need to hit the arrow on your project name to view them. 

### 9. Wait at least 10 hours, then confirm that your VM has stopped running. 

Navigate to [Google Cloud Compute Instances](https://console.cloud.google.com/compute/instances) to confirm the VM is in a "Stopped" state.

We have sought to ensure, in as many ways as we can, that the VM shuts down automatically, but it is best to confirm directly to avoid any unwanted costs.

### 10. Navigate to BigQuery and start your journey of analyzing the data

Visit [BigQuery](https://console.cloud.google.com/bigquery) here. 

Visit the [BigQuery Documentation](https://cloud.google.com/bigquery/docs) for more information about how to use BigQuery.

