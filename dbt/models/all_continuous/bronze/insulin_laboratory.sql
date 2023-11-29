SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN WTSAF2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSAF2YR AS FLOAT64) 
 END as fasting_subsample_2_year_mec_weight, 

CASE
    WHEN LBXIN IS NULL THEN NULL 
ELSE SAFE_CAST(LBXIN AS FLOAT64) 
 END as insulin_uu_ml, 

CASE
    WHEN LBDINSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDINSI AS FLOAT64) 
 END as insulin_pmol_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDINLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Detectable result' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDINLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below detectable limit' -- categorize numeric values
WHEN LBDINLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDINLC AS STRING) 
 END as insulin_comment_code, 

CASE
    WHEN WTSAFPRP IS NULL THEN NULL 
ELSE SAFE_CAST(WTSAFPRP AS FLOAT64) 
 END as fasting_subsample_weight, 

CASE
    WHEN PHAFSTHR IS NULL THEN NULL 
ELSE SAFE_CAST(PHAFSTHR AS FLOAT64) 
 END as total_length_of_food_fast_hours, 

CASE
    WHEN PHAFSTMN IS NULL THEN NULL 
ELSE SAFE_CAST(PHAFSTMN AS FLOAT64) 
 END as total_length_of_food_fast_minutes, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_insulin_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/INS_J.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_INS.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/INS_H.htm
*/
