SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDC1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDC1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN LBDC1 IS NULL THEN NULL 
ELSE SAFE_CAST(LBDC1 AS STRING) 
 END as cryptosporidium_17kda, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDC2 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDC2 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN LBDC2 IS NULL THEN NULL 
ELSE SAFE_CAST(LBDC2 AS STRING) 
 END as cryptosporidium_27kda, 

CASE
    WHEN LBXTO1 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXTO1 AS FLOAT64) 
 END as toxoplasma_igg, 

CASE
    WHEN LBXTO2 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXTO2 AS FLOAT64) 
 END as toxoplasma_igm, 

CASE
    WHEN LBXTO3 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXTO3 AS FLOAT64) 
 END as toxoplasma_dye, 

CASE
    WHEN REPLACE(LBXTO4,'.0','') = 'Toxoplasma Differential Agglutination' THEN 'Value was recorded' -- categorize string values 
WHEN LBXTO4 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXTO4 AS STRING) 
 END as toxoplasma_differential_agglutination, 

CASE
    WHEN REPLACE(LBXTO4IN,'.0','') = 'A' THEN 'Acute' -- categorize string values 
WHEN REPLACE(LBXTO4IN,'.0','') = 'C' THEN 'Chronic' -- categorize string values 
WHEN REPLACE(LBXTO4IN,'.0','') = 'E' THEN 'Equivocal' -- categorize string values 
WHEN LBXTO4IN IS NULL THEN NULL 
ELSE SAFE_CAST(LBXTO4IN AS STRING) 
 END as toxoplasma_agglutin_interpretation, 

CASE
    WHEN LBXTO5 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXTO5 AS FLOAT64) 
 END as toxoplasma_avidity_igg, 

CASE
    WHEN REPLACE(LBXTO5IN,'.0','') = 'A' THEN 'Acute' -- categorize string values 
WHEN REPLACE(LBXTO5IN,'.0','') = 'C' THEN 'Chronic' -- categorize string values 
WHEN REPLACE(LBXTO5IN,'.0','') = 'E' THEN 'Equivocal' -- categorize string values 
WHEN LBXTO5IN IS NULL THEN NULL 
ELSE SAFE_CAST(LBXTO5IN AS STRING) 
 END as toxoplasma_avidity_igg_interpretation, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_cryptosporidum_toxoplasma_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/LAB17.htm
*/
