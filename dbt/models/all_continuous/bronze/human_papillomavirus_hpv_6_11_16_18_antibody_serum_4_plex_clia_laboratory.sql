SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXS06MK AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXS06MK AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN LBXS06MK IS NULL THEN NULL 
ELSE SAFE_CAST(LBXS06MK AS STRING) 
 END as hpv_06_merck_competitive_luminex_assay, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXS11MK AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXS11MK AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN LBXS11MK IS NULL THEN NULL 
ELSE SAFE_CAST(LBXS11MK AS STRING) 
 END as hpv_11_merck_competitive_luminex_assay, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXS16MK AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXS16MK AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN LBXS16MK IS NULL THEN NULL 
ELSE SAFE_CAST(LBXS16MK AS STRING) 
 END as hpv_16_merck_competitive_luminex_assay, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXS18MK AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXS18MK AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN LBXS18MK IS NULL THEN NULL 
ELSE SAFE_CAST(LBXS18MK AS STRING) 
 END as hpv_18_merck_competitive_luminex_assay, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_human_papillomavirus_hpv_6_11_16_18_antibody_serum_4_plex_clia_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/L52SER_C.htm
*/
