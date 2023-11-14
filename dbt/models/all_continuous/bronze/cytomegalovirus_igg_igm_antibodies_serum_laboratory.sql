SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXIGG AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXIGG AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'negative' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXIGG AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'indeterminate' -- categorize numeric values
WHEN LBXIGG IS NULL THEN NULL 
ELSE SAFE_CAST(LBXIGG AS STRING) 
 END as cytomegalovirus_cmv_igg, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXIGM AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXIGM AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'negative' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXIGM AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'indeterminate' -- categorize numeric values
WHEN LBXIGM IS NULL THEN NULL 
ELSE SAFE_CAST(LBXIGM AS STRING) 
 END as cytomegalovirus_cmv_igm, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXIGGA AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'low' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXIGGA AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'high' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXIGGA AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'indeterminate' -- categorize numeric values
WHEN LBXIGGA IS NULL THEN NULL 
ELSE SAFE_CAST(LBXIGGA AS STRING) 
 END as cytomegalovirus_cmv_igg_avidity, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_cytomegalovirus_igg_igm_antibodies_serum_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/CMV_J.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_CMV.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/CMV_G.htm
*/
