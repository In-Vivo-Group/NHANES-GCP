SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN WTSPC2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPC2YR AS FLOAT64) 
 END as two_year_mec_weight_of_water_perchlorate, 

CASE
WHEN LBXWIO IS NULL THEN NULL 
ELSE SAFE_CAST(LBXWIO AS FLOAT64) 
 END as iodide_water_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDWIOLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDWIOLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDWIOLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDWIOLC AS STRING) 
 END as iodide_water_comment_code, 

CASE
WHEN LBXWNO IS NULL THEN NULL 
ELSE SAFE_CAST(LBXWNO AS FLOAT64) 
 END as nitrate_water_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDWNOLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDWNOLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDWNOLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDWNOLC AS STRING) 
 END as nitrate_water_comment_code, 

CASE
WHEN LBXWP8 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXWP8 AS FLOAT64) 
 END as perchlorate_water_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDWP8LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDWP8LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDWP8LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDWP8LC AS STRING) 
 END as perchlorate_water_comment_code, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_perchlorate_nitrate_iodide_tap_water_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/WPIN_D.htm
*/
