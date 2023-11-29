SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN WTSVOC2Y IS NULL THEN NULL 
ELSE SAFE_CAST(WTSVOC2Y AS FLOAT64) 
 END as voc_subsample_weight, 

CASE
    WHEN LBXWBF IS NULL THEN NULL 
ELSE SAFE_CAST(LBXWBF AS FLOAT64) 
 END as water_bromoform_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDWBFLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDWBFLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDWBFLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDWBFLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDWBFLC AS STRING) 
 END as water_bromoform_comment_code, 

CASE
    WHEN LBXWCF IS NULL THEN NULL 
ELSE SAFE_CAST(LBXWCF AS FLOAT64) 
 END as water_chloroform_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDWCFLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDWCFLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDWCFLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDWCFLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDWCFLC AS STRING) 
 END as water_chloroform_comment_code, 

CASE
    WHEN LBXWBM IS NULL THEN NULL 
ELSE SAFE_CAST(LBXWBM AS FLOAT64) 
 END as water_bromodichloromethane_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDWBMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDWBMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDWBMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDWBMLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDWBMLC AS STRING) 
 END as water_bromodichloromethane_comment_code, 

CASE
    WHEN LBXWCM IS NULL THEN NULL 
ELSE SAFE_CAST(LBXWCM AS FLOAT64) 
 END as water_dibromochloromethane_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDWCMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDWCMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDWCMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDWCMLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDWCMLC AS STRING) 
 END as water_dibromochloromethane_comment_code, 

CASE
    WHEN LBXWME IS NULL THEN NULL 
ELSE SAFE_CAST(LBXWME AS FLOAT64) 
 END as water_mtbe_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDWMELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDWMELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDWMELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDWMELC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDWMELC AS STRING) 
 END as water_mtbe_comment_code, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_volatile_organic_compounds_vocs_water_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/VOC_F.htm
*/
