SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN WTANA2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTANA2YR AS FLOAT64) 
 END as ana_subsample_2_year_weight, 

CASE
WHEN SSDFSS IS NULL THEN NULL 
ELSE SAFE_CAST(SSDFSS AS FLOAT64) 
 END as dense_fine_speckled_signal, 

CASE
WHEN SSDFSE IS NULL THEN NULL 
ELSE SAFE_CAST(SSDFSE AS FLOAT64) 
 END as dense_fine_speckled_eis_unit, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSDFSR AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSDFSR AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Postive' -- categorize numeric values
WHEN SSDFSR IS NULL THEN NULL 
ELSE SAFE_CAST(SSDFSR AS STRING) 
 END as dense_fine_speckled_result, 

CASE
WHEN WTANA6YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTANA6YR AS FLOAT64) 
 END as ana_subsample_6_year_weight, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_autoantibodies_anti_dfs70_autoantibody_analyses_surplus_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/SSDFS_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/SSDFS_A.htm
*/
