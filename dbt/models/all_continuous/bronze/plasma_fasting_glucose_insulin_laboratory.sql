SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN WTSAF2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSAF2YR AS FLOAT64) 
 END as fasting_subsample_2_year_mec_weight, 

CASE
    WHEN LBXGLU IS NULL THEN NULL 
ELSE SAFE_CAST(LBXGLU AS FLOAT64) 
 END as fasting_glucose_mg_dl, 

CASE
    WHEN LBDGLUSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDGLUSI AS FLOAT64) 
 END as fasting_glucose_mmol_l, 

CASE
    WHEN LBXIN IS NULL THEN NULL 
ELSE SAFE_CAST(LBXIN AS FLOAT64) 
 END as insulin_uu_ml, 

CASE
    WHEN LBDINSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDINSI AS FLOAT64) 
 END as insulin_pmol_l, 

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
 FROM {{ ref('stg_plasma_fasting_glucose_insulin_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/GLU_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/GLU_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/GLU_E.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/GLU_D.htm
*/
