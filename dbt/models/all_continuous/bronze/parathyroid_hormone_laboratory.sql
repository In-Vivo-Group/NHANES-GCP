SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN LBXPT21 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXPT21 AS FLOAT64) 
 END as parathyroid_hormone_elecys_method_pg_ml, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_parathyroid_hormone_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/PTH_D.htm
*/
