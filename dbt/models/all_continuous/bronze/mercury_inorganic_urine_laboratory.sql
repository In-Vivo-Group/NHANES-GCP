SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN WTSA2YR = 0 THEN NULL --remove no lab specimen samples from data 
WHEN WTSA2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSA2YR AS STRING) 
 END as subsample_a_weights, 

CASE
WHEN URXUHG IS NULL THEN NULL 
ELSE SAFE_CAST(URXUHG AS STRING) 
 END as urine_mercury_ug_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUHGLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUHGLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDUHGLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDUHGLC AS STRING) 
 END as mercury_urine_comment_code, 

CASE
WHEN WTSAPRP IS NOT NULL THEN SAFE_CAST(WTSAPRP AS FLOAT64) -- correct wrong data types for numerical data 
WHEN WTSAPRP = 0 THEN NULL --remove no lab specimen samples from data 
WHEN WTSAPRP IS NULL THEN NULL 
ELSE SAFE_CAST(WTSAPRP AS FLOAT64) 
 END as subsample_a_weights_pre_pandemic, 

CASE
WHEN URXUCR IS NULL THEN NULL 
ELSE SAFE_CAST(URXUCR AS FLOAT64) 
 END as creatinine_urine_mg_dl, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_mercury_inorganic_urine_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/UHG_J.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_UHG.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/UHG_I.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/UHG_H.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/UHG_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/UHG_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/UHG_E.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/UHG_D.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/L06UHG_C.htm
*/
