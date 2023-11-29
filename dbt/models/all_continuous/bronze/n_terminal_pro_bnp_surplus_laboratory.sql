SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN WTSSCB2Y IS NULL THEN NULL 
ELSE SAFE_CAST(WTSSCB2Y AS FLOAT64) 
 END as cardiac_biomarkers_2_year_weights, 

CASE
WHEN WTSSCB4Y IS NULL THEN NULL 
ELSE SAFE_CAST(WTSSCB4Y AS FLOAT64) 
 END as cardiac_biomarker_4_yr_weights_1999_2002, 

CASE
WHEN SSBNP IS NULL THEN NULL 
ELSE SAFE_CAST(SSBNP AS FLOAT64) 
 END as nt_probnp_pg_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSBNPL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Within the detection limits' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSBNPL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSBNPL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Above upper detection limit' -- categorize numeric values
WHEN SSBNPL IS NULL THEN NULL 
ELSE SAFE_CAST(SSBNPL AS STRING) 
 END as nt_probnp_comment_code, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSPRIS AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'non-pristine' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSPRIS AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'pristine' -- categorize numeric values
WHEN SSPRIS IS NULL THEN NULL 
ELSE SAFE_CAST(SSPRIS AS STRING) 
 END as pristine_sample, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_n_terminal_pro_bnp_surplus_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/SSBNP_A.htm
*/
