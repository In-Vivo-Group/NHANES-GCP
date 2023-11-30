SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN LBXVIC IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVIC AS FLOAT64) 
 END as vitamin_c_mg_dl, 

CASE
    WHEN LBDVICSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVICSI AS FLOAT64) 
 END as vitamin_c_umol_l, 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBDVICLC AS FLOAT64),0) AS INT64) AS STRING) = '0' THEN 'At or above detection limit' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBDVICLC AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Below lower detection limit' -- categorize string values 
WHEN LBDVICLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVICLC AS STRING) 
 END as vitamin_c_comment_code, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_vitamin_c_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/VIC_J.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/VIC_D.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/L06VIT_C.htm
*/
