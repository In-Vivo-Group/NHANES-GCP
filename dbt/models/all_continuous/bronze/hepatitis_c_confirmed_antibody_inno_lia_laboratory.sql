SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDHCI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDHCI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDHCI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Negative Screening HCV Antibody' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDHCI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Positive HCV RNA' -- categorize numeric values
WHEN LBDHCI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDHCI AS STRING) 
 END as hepatitis_c_antibody_confirmed, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_hepatitis_c_confirmed_antibody_inno_lia_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/SSHEPC_H.htm
*/
