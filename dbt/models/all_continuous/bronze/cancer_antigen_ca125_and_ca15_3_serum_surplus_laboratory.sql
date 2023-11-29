SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN SSCA125 IS NULL THEN NULL 
ELSE SAFE_CAST(SSCA125 AS FLOAT64) 
 END as cancer_antigen_125_u_ml, 

CASE
WHEN SSCA153 IS NULL THEN NULL 
ELSE SAFE_CAST(SSCA153 AS FLOAT64) 
 END as cancer_antigen_15_3_mu_ml, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_cancer_antigen_ca125_and_ca15_3_serum_surplus_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/SSCA_B.htm
*/
