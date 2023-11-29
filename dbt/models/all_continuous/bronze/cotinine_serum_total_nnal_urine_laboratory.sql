SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN LBXCOT IS NULL THEN NULL 
ELSE SAFE_CAST(LBXCOT AS FLOAT64) 
 END as cotinine_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDCOTLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDCOTLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDCOTLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDCOTLC AS STRING) 
 END as cotinine_comment_code, 

CASE
WHEN URXNAL IS NULL THEN NULL 
ELSE SAFE_CAST(URXNAL AS FLOAT64) 
 END as urinary_total_nnal_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDNALLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDNALLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDNALLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDNALLC AS STRING) 
 END as urinary_total_nnal_comment_code, 

CASE
WHEN URXUCR IS NULL THEN NULL 
ELSE SAFE_CAST(URXUCR AS FLOAT64) 
 END as urinary_creatinine_mg_dl, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_cotinine_serum_total_nnal_urine_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/COTNAL_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/COTNAL_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/COTNAL_E.htm
*/
