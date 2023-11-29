SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN SSCYPC IS NULL THEN NULL 
ELSE SAFE_CAST(SSCYPC AS FLOAT64) 
 END as cystatin_c_mg_l, 

CASE
WHEN WTSCY4YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSCY4YR AS FLOAT64) 
 END as surplus_sera_cystatin_99_02_weights, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_cystatin_c_surplus_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/SSCYST_B.htm
*/
