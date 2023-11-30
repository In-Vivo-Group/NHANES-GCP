SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN LBXCOT IS NULL THEN NULL 
ELSE SAFE_CAST(LBXCOT AS FLOAT64) 
 END as cotinine_serum_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDCOTLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDCOTLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDCOTLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDCOTLC AS STRING) 
 END as cotinine_serum_comment_code, 

CASE
    WHEN LBXHCT IS NULL THEN NULL 
ELSE SAFE_CAST(LBXHCT AS FLOAT64) 
 END as hydroxycotinine_serum_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDHCTLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDHCTLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDHCTLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDHCTLC AS STRING) 
 END as hydroxycotinine_serum_comment_code, 

CASE
    WHEN LBXHCOT IS NOT NULL THEN SAFE_CAST(LBXHCOT AS FLOAT64) -- correct wrong data types for numerical data 
WHEN LBXHCOT IS NULL THEN NULL 
ELSE SAFE_CAST(LBXHCOT AS FLOAT64) 
 END as hydroxycotinine_serum_ng_ml_LBXHCOT, 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBDHCOLC AS FLOAT64),0) AS INT64) AS STRING) = '0' THEN 'At or above detection limit' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBDHCOLC AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Below lower detection limit' -- categorize string values 
WHEN LBDHCOLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDHCOLC AS STRING) 
 END as hydroxycotinine_serum_comment_code_LBDHCOLC, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_cotinine_and_hydroxycotinine_serum_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/COT_J.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_COT.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/COT_I.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/COT_H.htm
*/
