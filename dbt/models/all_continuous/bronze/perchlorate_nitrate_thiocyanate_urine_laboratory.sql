SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN WTSA2YR IS NOT NULL THEN SAFE_CAST(WTSA2YR AS FLOAT64) -- correct wrong data types for numerical data 
WHEN WTSA2YR IS NOT NULL THEN SAFE_CAST(WTSA2YR AS FLOAT64) -- correct wrong data types for numerical data 
WHEN WTSA2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSA2YR AS FLOAT64) 
 END as subsample_a_weights, 

CASE
WHEN URXUP8 IS NULL THEN NULL 
ELSE SAFE_CAST(URXUP8 AS FLOAT64) 
 END as perchlorate_urine_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUP8LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUP8LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDUP8LC IS NULL THEN NULL 
ELSE SAFE_CAST(URDUP8LC AS STRING) 
 END as perchlorate_urine_comment_code, 

CASE
WHEN URXNO3 IS NULL THEN NULL 
ELSE SAFE_CAST(URXNO3 AS STRING) 
 END as nitrate_urine_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDNO3LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDNO3LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDNO3LC IS NULL THEN NULL 
ELSE SAFE_CAST(URDNO3LC AS STRING) 
 END as nitrate_urine_comment_code, 

CASE
WHEN URXSCN IS NULL THEN NULL 
ELSE SAFE_CAST(URXSCN AS STRING) 
 END as thiocyanate_urine_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDSCNLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDSCNLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDSCNLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDSCNLC AS STRING) 
 END as thiocyanate_urine_comment_code, 

CASE
WHEN WTSAPRP IS NOT NULL THEN SAFE_CAST(WTSAPRP AS FLOAT64) -- correct wrong data types for numerical data 
WHEN WTSAPRP IS NOT NULL THEN SAFE_CAST(WTSAPRP AS FLOAT64) -- correct wrong data types for numerical data 
WHEN WTSAPRP IS NULL THEN NULL 
ELSE SAFE_CAST(WTSAPRP AS FLOAT64) 
 END as subsample_a_weights_pre_pandemic, 

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
 FROM {{ ref('stg_perchlorate_nitrate_thiocyanate_urine_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/PERNT_J.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_PERNT.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/PERNT_I.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/PERNT_H.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/PERNT_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/PERNT_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/PERNT_E.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/PERNT_D.htm
*/
