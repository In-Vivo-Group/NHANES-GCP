SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN LBXBCD IS NULL THEN NULL 
ELSE SAFE_CAST(LBXBCD AS FLOAT64) 
 END as blood_cadmium_ug_l, 

CASE
    WHEN LBDBCDSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDBCDSI AS FLOAT64) 
 END as blood_cadmium_nmol_l, 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBDBCDLC AS FLOAT64),0) AS INT64) AS STRING) = '0' THEN 'At or above the detection limit' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBDBCDLC AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Below lower detection limit' -- categorize string values 
WHEN LBDBCDLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDBCDLC AS STRING) 
 END as blood_cadmium_comment_code, 

CASE
    WHEN LBXBPB IS NULL THEN NULL 
ELSE SAFE_CAST(LBXBPB AS FLOAT64) 
 END as blood_lead_ug_dl, 

CASE
    WHEN LBDBPBSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDBPBSI AS FLOAT64) 
 END as blood_lead_umole_l, 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBDBPBLC AS FLOAT64),0) AS INT64) AS STRING) = '0' THEN 'At or above the detection limit' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBDBPBLC AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Below lower detection limit' -- categorize string values 
WHEN LBDBPBLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDBPBLC AS STRING) 
 END as blood_lead_comment_code, 

CASE
    WHEN LBXTHG IS NULL THEN NULL 
ELSE SAFE_CAST(LBXTHG AS FLOAT64) 
 END as mercury_total_ug_l, 

CASE
    WHEN LBDTHGSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDTHGSI AS FLOAT64) 
 END as mercury_total_umole_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDTHGLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDTHGLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDTHGLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDTHGLC AS STRING) 
 END as mercury_total_comment_code, 

CASE
    WHEN LBXIHG IS NULL THEN NULL 
ELSE SAFE_CAST(LBXIHG AS FLOAT64) 
 END as mercury_inorganic_ug_l, 

CASE
    WHEN LBDIHGSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDIHGSI AS FLOAT64) 
 END as mercury_inorganic_umol_l, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_cadmium_lead_total_mercury_blood_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/PBCD_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/PBCD_E.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/PBCD_D.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/L06BMT_C.htm
*/
