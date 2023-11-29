SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN LBXBPB IS NULL THEN NULL 
ELSE SAFE_CAST(LBXBPB AS FLOAT64) 
 END as blood_lead_ug_dl, 

CASE
WHEN LBDBPBSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDBPBSI AS FLOAT64) 
 END as blood_lead_umol_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBPBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBPBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDBPBLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDBPBLC AS STRING) 
 END as blood_lead_comment_code, 

CASE
WHEN LBXBCD IS NULL THEN NULL 
ELSE SAFE_CAST(LBXBCD AS FLOAT64) 
 END as blood_cadmium_ug_l, 

CASE
WHEN LBDBCDSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDBCDSI AS FLOAT64) 
 END as blood_cadmium_nmol_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBCDLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBCDLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDBCDLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDBCDLC AS STRING) 
 END as blood_cadmium_comment_code, 

CASE
WHEN LBXTHG IS NULL THEN NULL 
ELSE SAFE_CAST(LBXTHG AS FLOAT64) 
 END as blood_mercury_total_ug_l, 

CASE
WHEN LBDTHGSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDTHGSI AS FLOAT64) 
 END as blood_mercury_total_umol_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDTHGLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDTHGLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDTHGLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDTHGLC AS STRING) 
 END as blood_mercury_total_comment_code, 

CASE
WHEN LBXBSE IS NULL THEN NULL 
ELSE SAFE_CAST(LBXBSE AS FLOAT64) 
 END as blood_selenium_ug_l, 

CASE
WHEN LBDBSESI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDBSESI AS FLOAT64) 
 END as blood_selenium_umol_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBSELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBSELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDBSELC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDBSELC AS STRING) 
 END as blood_selenium_comment_code, 

CASE
WHEN LBXBMN IS NULL THEN NULL 
ELSE SAFE_CAST(LBXBMN AS FLOAT64) 
 END as blood_manganese_ug_l, 

CASE
WHEN LBDBMNSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDBMNSI AS FLOAT64) 
 END as blood_manganese_umol_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBMNLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBMNLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDBMNLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDBMNLC AS STRING) 
 END as blood_manganese_comment_code, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_cadmium_lead_total_mercury_selenium_manganese_blood_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/PBCD_G.htm
*/
