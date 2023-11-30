SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN WTSSMC2Y IS NULL THEN NULL 
ELSE SAFE_CAST(WTSSMC2Y AS FLOAT64) 
 END as ssmump_and_sscmv_2_year_weights, 

CASE
    WHEN SSISR IS NULL THEN NULL 
ELSE SAFE_CAST(SSISR AS FLOAT64) 
 END as specimen_index_ratio, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SSMUMPS AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSMUMPS AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSMUMPS AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Indeterminate' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSMUMPS AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Quantity not sufficient' -- categorize numeric values
WHEN SSMUMPS IS NULL THEN NULL 
ELSE SAFE_CAST(SSMUMPS AS STRING) 
 END as antibody_to_mumps, 

CASE
    WHEN WTSSMC4Y IS NULL THEN NULL 
ELSE SAFE_CAST(WTSSMC4Y AS FLOAT64) 
 END as ssmump_and_sscmv_4_year_weights_99_02, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_mumps_antibody_serum_surplus_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/SSMUMP_C.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/SSMUMP_B.htm
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/SSMUMP_A.htm
*/
