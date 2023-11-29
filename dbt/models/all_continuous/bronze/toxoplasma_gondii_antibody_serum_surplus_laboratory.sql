SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN SSTOXG IS NULL THEN NULL 
ELSE SAFE_CAST(SSTOXG AS FLOAT64) 
 END as toxoplasmosis_igg_antibodies_iu_ml, 

CASE
WHEN SSTOXM IS NULL THEN NULL 
ELSE SAFE_CAST(SSTOXM AS FLOAT64) 
 END as toxoplasmosis_igm_antibodies, 

CASE
WHEN SSTOXAV IS NULL THEN NULL 
ELSE SAFE_CAST(SSTOXAV AS FLOAT64) 
 END as toxoplasmosis_igg_avidity_iu_ml, 

CASE
WHEN WTSSTT2Y IS NULL THEN NULL 
ELSE SAFE_CAST(WTSSTT2Y AS FLOAT64) 
 END as sstoca_and_sstoxo_2_year_weights, 

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
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/SSTOXO_H.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/SSTOXO_G.htm
*/
