SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN LBXTO1 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXTO1 AS FLOAT64) 
 END as toxoplasma_igg, 

CASE
WHEN LBXTO2 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXTO2 AS FLOAT64) 
 END as toxoplasma_igm, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_toxoplasma_igg_toxoplasma_igm_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/L17_C.htm
*/
