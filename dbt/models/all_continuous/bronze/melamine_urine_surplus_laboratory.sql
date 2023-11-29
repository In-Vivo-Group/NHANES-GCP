SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN WTSBMEL IS NULL THEN NULL 
ELSE SAFE_CAST(WTSBMEL AS FLOAT64) 
 END as melamine_subsample_weight, 

CASE
WHEN SSMEL IS NULL THEN NULL 
ELSE SAFE_CAST(SSMEL AS FLOAT64) 
 END as melamine, 

CASE
WHEN SSCYA IS NULL THEN NULL 
ELSE SAFE_CAST(SSCYA AS FLOAT64) 
 END as cyanuric_acid, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_melamine_urine_surplus_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/SSMEL_C.htm
*/
