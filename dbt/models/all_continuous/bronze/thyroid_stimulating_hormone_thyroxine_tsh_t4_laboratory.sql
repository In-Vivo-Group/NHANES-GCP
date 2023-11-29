SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN WTSTH2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSTH2YR AS FLOAT64) 
 END as thyroid_hormones_subsample_2_yr_mec_wgt, 

CASE
WHEN WTSTH4YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSTH4YR AS FLOAT64) 
 END as thyroid_hormones_subsample_4_yr_mec_wgt, 

CASE
WHEN LBXT4 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXT4 AS FLOAT64) 
 END as thyroxine_t4_ug_dl, 

CASE
WHEN LBDT4SI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDT4SI AS FLOAT64) 
 END as thyroxine_t4_nmol_l, 

CASE
WHEN LBXTSH IS NULL THEN NULL 
ELSE SAFE_CAST(LBXTSH AS FLOAT64) 
 END as thyroid_stim_hormone_tsh_uiu_ml, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_thyroid_stimulating_hormone_thyroxine_tsh_t4_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/L40T4_B.htm
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/LAB18T4.htm
*/
