SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN SSXNO3 IS NULL THEN NULL 
ELSE SAFE_CAST(SSXNO3 AS FLOAT64) 
 END as nitrate_ug_l, 

CASE
WHEN SSXSCN IS NULL THEN NULL 
ELSE SAFE_CAST(SSXSCN AS FLOAT64) 
 END as thiocyanate_ug_l, 

CASE
WHEN SSXUP8 IS NULL THEN NULL 
ELSE SAFE_CAST(SSXUP8 AS FLOAT64) 
 END as urinary_perchlorate_ug_l, 

CASE
WHEN URXUCR IS NULL THEN NULL 
ELSE SAFE_CAST(URXUCR AS FLOAT64) 
 END as creatinine_urine_mg_dl, 

CASE
WHEN WTUIO2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTUIO2YR AS FLOAT64) 
 END as subsample_2_year_mec_weight, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_perchlorate_nitrate_thiocyanate_urine_surplus_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/SSNO3P_B.htm
*/
