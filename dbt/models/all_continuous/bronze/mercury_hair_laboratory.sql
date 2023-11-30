SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(HRQ010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HRQ010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HRQ010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(8 AS FLOAT64),0) AS INT64) THEN 'Could not obtain' -- categorize numeric values
WHEN HRQ010 IS NULL THEN NULL 
ELSE SAFE_CAST(HRQ010 AS STRING) 
 END as permanent_straightened_or_dyed, 

CASE
    WHEN HRXHG IS NULL THEN NULL 
ELSE SAFE_CAST(HRXHG AS FLOAT64) 
 END as total_hair_mercury_ppm_mql_version, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(HRDHGLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Detectable Result' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HRDHGLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'HRXHG is Below the MQL (Method Quantification Limit)' -- categorize numeric values
WHEN HRDHGLC IS NULL THEN NULL 
ELSE SAFE_CAST(HRDHGLC AS STRING) 
 END as hrxhg_hair_mercury_comment_mql, 

CASE
    WHEN HRDHG IS NULL THEN NULL 
ELSE SAFE_CAST(HRDHG AS FLOAT64) 
 END as total_hair_mercury_ppm_mdl_version, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(HRDHGLC2 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Detectable Result' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HRDHGLC2 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'HRDHG is Below the MDL (Method Detection Limit)' -- categorize numeric values
WHEN HRDHGLC2 IS NULL THEN NULL 
ELSE SAFE_CAST(HRDHGLC2 AS STRING) 
 END as hrdhg_hair_mercury_comment_mdl, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_mercury_hair_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/LAB22.htm
*/
