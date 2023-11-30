SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN WTSA2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSA2YR AS FLOAT64) 
 END as subsample_a_weights, 

CASE
    WHEN LBXSCU IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSCU AS FLOAT64) 
 END as serum_copper_ug_dl, 

CASE
    WHEN LBDSCUSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDSCUSI AS FLOAT64) 
 END as serum_copper_umol_l, 

CASE
    WHEN LBXSSE IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSSE AS FLOAT64) 
 END as serum_selenium_ug_l, 

CASE
    WHEN LBDSSESI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDSSESI AS FLOAT64) 
 END as serum_selenium_umol_l, 

CASE
    WHEN LBXSZN IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSZN AS FLOAT64) 
 END as serum_zinc_ug_dl, 

CASE
    WHEN LBDSZNSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDSZNSI AS FLOAT64) 
 END as serum_zinc_umol_l, 

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
 FROM {{ ref('stg_copper_selenium_zinc_serum_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/CUSEZN_I.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/CUSEZN_H.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/CUSEZN_G.htm
*/
