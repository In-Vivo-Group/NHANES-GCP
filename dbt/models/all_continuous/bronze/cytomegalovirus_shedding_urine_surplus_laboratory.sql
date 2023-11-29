SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SSUCYSH AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSUCYSH AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSUCYSH AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Equivocal' -- categorize numeric values
WHEN SSUCYSH IS NULL THEN NULL 
ELSE SAFE_CAST(SSUCYSH AS STRING) 
 END as cytomegalovirus_shedding, 

CASE
    WHEN SSUCTVL IS NULL THEN NULL 
ELSE SAFE_CAST(SSUCTVL AS FLOAT64) 
 END as cytomegalovirus_viral_load_copies_ml, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_cytomegalovirus_shedding_urine_surplus_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/SSUCSH_A.htm
*/
