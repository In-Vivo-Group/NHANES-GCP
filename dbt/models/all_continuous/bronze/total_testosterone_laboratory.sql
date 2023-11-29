SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN LBXTST IS NULL THEN NULL 
ELSE SAFE_CAST(LBXTST AS FLOAT64) 
 END as testosterone_total_ng_dl, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_total_testosterone_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/TST_G.htm
*/
