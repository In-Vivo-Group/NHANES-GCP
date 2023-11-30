SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN SSHE4 IS NULL THEN NULL 
ELSE SAFE_CAST(SSHE4 AS FLOAT64) 
 END as human_epididymal_secretory_protein_pm, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_human_epididymal_secretory_protein_e4_he4_serum_surplus_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/SSHE4_B.htm
*/
