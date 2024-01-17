# NHANES-GPT

- The public version of the data for this project can be found on the [NHANES website](https://www.cdc.gov/nchs/nhanes/index.htm).
- Potential data integration ideas can be found on the [data linkage site](https://www.cdc.gov/nchs/data-linkage/index.htm) and in the data [linkage PDF](https://www.cdc.gov/nchs/data/datalinkage/LinkageTable_1.pdf).

## To deploy this project in your environment

It's as simple as:

```{bash}
export TF_VAR_project_id=$(gcloud config get-value project)
git clone https://github.com/In-Vivo-Group/NHANES-GCP.git
cd NHANES-GCP/infra
npm install
npm run get
npm run synth
npm run deploy #Ensure that your shell is authorized to change permissions and that you press ENTER to approve the changes
```

But read the visit the [infrastructure README page](infra/README.md) for a detailed explanation. 

## Example Analyses

There are four example BigQuery ML models to demonstrate how to leverage BQML and the NHANES data set in GCP. They can be found in the [dbt ANALYSES page](dbt/analyses)
