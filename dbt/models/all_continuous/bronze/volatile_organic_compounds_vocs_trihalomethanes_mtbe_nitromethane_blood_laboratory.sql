SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN WTSVOC2Y IS NULL THEN NULL 
ELSE SAFE_CAST(WTSVOC2Y AS FLOAT64) 
 END as voc_subsample_weight, 

CASE
WHEN LBXVBF IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVBF AS FLOAT64) 
 END as blood_bromoform_pg_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVBFLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVBFLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVBFLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDVBFLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVBFLC AS STRING) 
 END as blood_bromoform_comment_code, 

CASE
WHEN LBXVBM IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVBM AS FLOAT64) 
 END as blood_bromodichloromethane_pg_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVBMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVBMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVBMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDVBMLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVBMLC AS STRING) 
 END as blood_bromodichloromethane_comment_code, 

CASE
WHEN LBXVCF IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVCF AS FLOAT64) 
 END as blood_chloroform_pg_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVCFLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVCFLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVCFLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDVCFLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVCFLC AS STRING) 
 END as blood_chloroform_comment_code, 

CASE
WHEN LBXVCM IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVCM AS FLOAT64) 
 END as blood_dibromochloromethane_pg_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVCMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVCMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVCMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDVCMLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVCMLC AS STRING) 
 END as blood_dibromochloromethane_comment_code, 

CASE
WHEN LBXVME IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVME AS FLOAT64) 
 END as blood_mtbe_pg_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVMELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVMELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVMELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDVMELC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVMELC AS STRING) 
 END as blood_mtbe_comment_code, 

CASE
WHEN LBXNM IS NULL THEN NULL 
ELSE SAFE_CAST(LBXNM AS FLOAT64) 
 END as blood_nitromethane_pg_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDNMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDNMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDNMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDNMLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDNMLC AS STRING) 
 END as blood_nitromethane_comment_code, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_volatile_organic_compounds_vocs_trihalomethanes_mtbe_nitromethane_blood_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/VOCMWB_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/VOCMWB_F.htm
*/
