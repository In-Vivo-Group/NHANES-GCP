SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN LBXSF1SI IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSF1SI AS FLOAT64) 
 END as lab_5_methyl_tetrahydrofolate_nmol_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDSF1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDSF1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDSF1LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDSF1LC AS STRING) 
 END as lab_5_methyl_tetrahydrofolate_cmt, 

CASE
    WHEN LBXSF2SI IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSF2SI AS FLOAT64) 
 END as folic_acid_nmol_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDSF2LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDSF2LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDSF2LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDSF2LC AS STRING) 
 END as folic_acid_cmt, 

CASE
    WHEN WTSA2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSA2YR AS FLOAT64) 
 END as environmental_a_two_year_weights, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_folate_forms_individual_serum_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/FOLFMS_E.htm
*/
