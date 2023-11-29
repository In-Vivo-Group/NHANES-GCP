SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN WTSAFPRP IS NULL THEN NULL 
ELSE SAFE_CAST(WTSAFPRP AS FLOAT64) 
 END as fasting_subsample_weight, 

CASE
WHEN LBXGLU IS NULL THEN NULL 
ELSE SAFE_CAST(LBXGLU AS FLOAT64) 
 END as fasting_glucose_mg_dl, 

CASE
WHEN LBDGLUSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDGLUSI AS FLOAT64) 
 END as fasting_glucose_mmol_l, 

CASE
WHEN WTSAF2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSAF2YR AS FLOAT64) 
 END as fasting_subsample_2_year_mec_weight, 

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
 FROM {{ ref('stg_plasma_fasting_glucose_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_GLU.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/GLU_I.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/GLU_H.htm
*/
