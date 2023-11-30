SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN SAMPLEID IS NULL THEN NULL 
ELSE SAFE_CAST(SAMPLEID AS FLOAT64) 
 END as pool_identification_number, 

CASE
    WHEN WTSB2YRA IS NULL THEN NULL 
ELSE SAFE_CAST(WTSB2YRA AS FLOAT64) 
 END as adjusted_subsample_weight, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_pooled_sample_technical_support_file_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/POOLTF_I.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/POOLTF_E.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/POOLTF_D.htm
*/
