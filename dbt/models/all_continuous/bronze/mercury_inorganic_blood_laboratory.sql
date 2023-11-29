SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN LBXIHG IS NULL THEN NULL 
ELSE SAFE_CAST(LBXIHG AS FLOAT64) 
 END as mercury_inorganic_ug_l, 

CASE
WHEN LBDIHGSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDIHGSI AS FLOAT64) 
 END as mercury_inorganic_umol_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDIHGLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDIHGLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDIHGLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDIHGLC AS STRING) 
 END as mercury_inorganic_comment_code, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_mercury_inorganic_blood_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/IHG_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/IHG_E.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/IHG_D.htm
*/
