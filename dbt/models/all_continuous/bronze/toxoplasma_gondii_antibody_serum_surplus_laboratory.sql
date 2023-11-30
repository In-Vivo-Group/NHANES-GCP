SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN SSTOXO IS NULL THEN NULL 
ELSE SAFE_CAST(SSTOXO AS FLOAT64) 
 END as t_gondii_antibodies_iu_ml, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_toxoplasma_gondii_antibody_serum_surplus_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/SSTOXO_F.htm
*/
