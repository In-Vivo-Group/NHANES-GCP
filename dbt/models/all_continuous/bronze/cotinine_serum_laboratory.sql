SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN LBXCOT IS NULL THEN NULL 
ELSE SAFE_CAST(LBXCOT AS FLOAT64) 
 END as cotinine_ng_ml, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_cotinine_serum_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/COT_D.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/L06COT_C.htm
*/
