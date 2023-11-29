SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN SSATG IS NULL THEN NULL 
ELSE SAFE_CAST(SSATG AS FLOAT64) 
 END as thyroglobulin_antibody, 

CASE
WHEN SST3F IS NULL THEN NULL 
ELSE SAFE_CAST(SST3F AS FLOAT64) 
 END as free_t3, 

CASE
WHEN SST4F IS NULL THEN NULL 
ELSE SAFE_CAST(SST4F AS FLOAT64) 
 END as free_t4, 

CASE
WHEN SSTGN IS NULL THEN NULL 
ELSE SAFE_CAST(SSTGN AS FLOAT64) 
 END as thyroglobulin, 

CASE
WHEN SSTPO IS NULL THEN NULL 
ELSE SAFE_CAST(SSTPO AS FLOAT64) 
 END as thyroperoxidase_antibody, 

CASE
WHEN SSTSH1 IS NULL THEN NULL 
ELSE SAFE_CAST(SSTSH1 AS FLOAT64) 
 END as thyroid_stimulating_hormone, 

CASE
WHEN SSTT3 IS NULL THEN NULL 
ELSE SAFE_CAST(SSTT3 AS FLOAT64) 
 END as total_t3, 

CASE
WHEN SSTT4 IS NULL THEN NULL 
ELSE SAFE_CAST(SSTT4 AS FLOAT64) 
 END as total_t4, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_thyroid_profile_surplus_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/SSNH4THY.htm
*/
