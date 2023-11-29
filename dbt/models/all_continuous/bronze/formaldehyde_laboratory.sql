SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN WTSA2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSA2YR AS FLOAT64) 
 END as subsample_a_weights, 

CASE
    WHEN LBXFOR IS NULL THEN NULL 
ELSE SAFE_CAST(LBXFOR AS FLOAT64) 
 END as formaldehyde_nmol_g_hb, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDFORLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'at or above the limit of detection' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDFORLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'below limit of detection' -- categorize numeric values
WHEN LBDFORLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDFORLC AS STRING) 
 END as formaldehyde_comment_code, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_formaldehyde_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/FORMAL_I.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/FORMAL_H.htm
*/
