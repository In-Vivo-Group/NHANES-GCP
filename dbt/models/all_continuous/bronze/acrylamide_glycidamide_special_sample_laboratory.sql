SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN WTFSM IS NULL THEN NULL 
ELSE SAFE_CAST(WTFSM AS FLOAT64) 
 END as smoking_weights, 

CASE
    WHEN LBXACR IS NULL THEN NULL 
ELSE SAFE_CAST(LBXACR AS FLOAT64) 
 END as acrylamide_pmol_g_hb, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDACRLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'detectable result' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDACRLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'below detectable limit' -- categorize numeric values
WHEN LBDACRLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDACRLC AS STRING) 
 END as acrylamide_comment_code, 

CASE
    WHEN LBXGLY IS NULL THEN NULL 
ELSE SAFE_CAST(LBXGLY AS FLOAT64) 
 END as glycideamide_pmol_g_hb, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDGLYLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'detectable result' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDGLYLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'below detectable limit' -- categorize numeric values
WHEN LBDGLYLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDGLYLC AS STRING) 
 END as glycidamide_comment_code, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_acrylamide_glycidamide_special_sample_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/AMDGDS_H.htm
*/
