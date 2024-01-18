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

But visit the [infrastructure README page](infra/README.md) for a detailed explanation. 

## Example Analyses

There are four example BigQuery ML models to demonstrate how to leverage BQML and the NHANES data set in GCP. They can be found in the [dbt ANALYSES page](dbt/analyses)

## Supporting Institutions

This project was developed in collaboration with and supported by [CorrDyn](https://www.corrdyn.com/), an enterprise data specialist with deep experience in healthcare and life sciences. For more information, check out the **Data in Biotech podcast** on [Apple](https://podcasts.apple.com/gb/podcast/data-in-biotech/id1708993594) or [Spotify](https://open.spotify.com/show/1KWmoMpvibsK9KFiVy8v83?si=444cda29472d427e), or connect with us on LinkedIn: [CorrDyn](https://www.linkedin.com/company/corrdyn/), [James Winegar](https://www.linkedin.com/in/james-winegar/) and [Ross Katz](https://www.linkedin.com/in/b-ross-katz/)
