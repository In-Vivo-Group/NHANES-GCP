SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN WTSAF2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSAF2YR AS FLOAT64) 
 END as fasting_subsample_2_year_mec_weight, 

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
 END as ldl_cholesterol_mg_dl, 

CASE
    WHEN LBDLDLSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDLDLSI AS FLOAT64) 
 END as ldl_cholesterol_mmol_l, 

CASE
    WHEN WTSAF4YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSAF4YR AS FLOAT64) 
 END as lab_4yr_am_3_11_fasting_12_weights, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_cholesterol_ldl_triglycerides_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/TRIGLY_H.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/TRIGLY_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/TRIGLY_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/TRIGLY_E.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/L13AM_C.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/L13AM_B.htm
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/LAB13AM.htm
*/
