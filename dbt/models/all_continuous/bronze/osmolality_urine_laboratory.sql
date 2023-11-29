SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN URXOAV IS NULL THEN NULL 
ELSE SAFE_CAST(URXOAV AS FLOAT64) 
 END as urine_osmolality_mosm_kg, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_osmolality_urine_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/UCOSMO_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/UCOSMO_F.htm
*/
