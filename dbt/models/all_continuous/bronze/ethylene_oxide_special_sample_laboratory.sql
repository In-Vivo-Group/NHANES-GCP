SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN WTFSM IS NULL THEN NULL 
ELSE SAFE_CAST(WTFSM AS FLOAT64) 
 END as smoking_weights, 

CASE
WHEN LBXEOA IS NULL THEN NULL 
ELSE SAFE_CAST(LBXEOA AS FLOAT64) 
 END as ethylene_oxide_pmol_g_hb, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDEOALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'detectable result' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDEOALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'below detectable limit' -- categorize numeric values
WHEN LBDEOALC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDEOALC AS STRING) 
 END as ethylene_oxide_comment_code, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_ethylene_oxide_special_sample_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/ETHOXS_H.htm
*/
