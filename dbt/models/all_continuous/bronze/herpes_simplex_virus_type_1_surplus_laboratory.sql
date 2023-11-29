SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN WTSSHS2Y IS NULL THEN NULL 
ELSE SAFE_CAST(WTSSHS2Y AS FLOAT64) 
 END as sshsv1_2_year_weights, 

CASE
WHEN WTSSHS4Y IS NULL THEN NULL 
ELSE SAFE_CAST(WTSSHS4Y AS FLOAT64) 
 END as sshsv1_4_year_weights_99_02, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSXHE1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSXHE1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'negative' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSXHE1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'indeterminate' -- categorize numeric values
WHEN SSXHE1 IS NULL THEN NULL 
ELSE SAFE_CAST(SSXHE1 AS STRING) 
 END as herpes_i, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_herpes_simplex_virus_type_1_surplus_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/SSHSV1_B.htm
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/SSHSV1_A.htm
*/
