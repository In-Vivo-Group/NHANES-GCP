SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXHA AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXHA AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXHA AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Indeterminate' -- categorize numeric values
WHEN LBXHA IS NULL THEN NULL 
ELSE SAFE_CAST(LBXHA AS STRING) 
 END as hepatitis_a_antibody, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_hepatitis_a_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/HEPA_J.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_HEPA.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/HEPA_I.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/HEPA_H.htm
*/
