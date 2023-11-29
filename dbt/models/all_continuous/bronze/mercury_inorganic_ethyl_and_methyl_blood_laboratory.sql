SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN LBXIHG IS NULL THEN NULL 
ELSE SAFE_CAST(LBXIHG AS FLOAT64) 
 END as mercury_inorganic_ug_l, 

CASE
WHEN LBDIHGSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDIHGSI AS FLOAT64) 
 END as mercury_inorganic_nmol_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDIHGLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDIHGLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDIHGLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDIHGLC AS STRING) 
 END as mercury_inorganic_comment_code, 

CASE
WHEN LBXBGE IS NULL THEN NULL 
ELSE SAFE_CAST(LBXBGE AS FLOAT64) 
 END as mercury_ethyl_ug_l, 

CASE
WHEN LBDBGESI IS NOT NULL THEN SAFE_CAST(LBDBGESI AS FLOAT64) -- correct wrong data types for numerical data 
WHEN LBDBGESI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDBGESI AS FLOAT64) 
 END as mercury_ethyl_nmol_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBGELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBGELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDBGELC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDBGELC AS STRING) 
 END as mercury_ethyl_comment_code, 

CASE
WHEN LBXBGM IS NULL THEN NULL 
ELSE SAFE_CAST(LBXBGM AS FLOAT64) 
 END as mercury_methyl_ug_l, 

CASE
WHEN LBDBGMSI IS NOT NULL THEN SAFE_CAST(LBDBGMSI AS FLOAT64) -- correct wrong data types for numerical data 
WHEN LBDBGMSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDBGMSI AS FLOAT64) 
 END as mercury_methyl_nmol_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBGMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBGMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDBGMLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDBGMLC AS STRING) 
 END as mercury_methyl_comment_code, 

CASE
WHEN WTSH2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSH2YR AS FLOAT64) 
 END as blood_metal_weights, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_mercury_inorganic_ethyl_and_methyl_blood_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/IHGEM_J.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/IHGEM_I.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/IHGEM_H.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/IHGEM_G.htm
*/
