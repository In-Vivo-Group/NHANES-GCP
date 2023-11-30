SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN WTSAFPRP IS NULL THEN NULL 
ELSE SAFE_CAST(WTSAFPRP AS FLOAT64) 
 END as fasting_subsample_weight, 

CASE
    WHEN LBXTR IS NULL THEN NULL 
ELSE SAFE_CAST(LBXTR AS FLOAT64) 
 END as triglyceride_mg_dl, 

CASE
    WHEN LBDTRSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDTRSI AS FLOAT64) 
 END as triglyceride_mmol_l, 

CASE
    WHEN LBDLDL IS NULL THEN NULL 
ELSE SAFE_CAST(LBDLDL AS FLOAT64) 
 END as ldl_cholesterol_friedewald_mg_dl, 

CASE
    WHEN LBDLDLSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDLDLSI AS FLOAT64) 
 END as ldl_cholesterol_friedewald_mmol_l, 

CASE
    WHEN LBDLDLM IS NULL THEN NULL 
ELSE SAFE_CAST(LBDLDLM AS FLOAT64) 
 END as ldl_cholesterol_martin_hopkins_mg_dl, 

CASE
    WHEN LBDLDMSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDLDMSI AS FLOAT64) 
 END as ldl_cholesterol_martin_hopkins_mmol_l, 

CASE
    WHEN LBDLDLN IS NULL THEN NULL 
ELSE SAFE_CAST(LBDLDLN AS FLOAT64) 
 END as ldl_cholesterol_nih_equation_2_mg_dl, 

CASE
    WHEN LBDLDNSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDLDNSI AS FLOAT64) 
 END as ldl_cholesterol_nih_equation_2_mmol_l, 

CASE
    WHEN WTSAF2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSAF2YR AS FLOAT64) 
 END as fasting_subsample_2_year_mec_weight, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_cholesterol_low_density_lipoproteins_ldl_triglycerides_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_TRIGLY.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/TRIGLY_J.htm
*/
