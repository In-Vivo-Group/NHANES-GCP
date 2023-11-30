SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN SSAMH IS NULL THEN NULL 
ELSE SAFE_CAST(SSAMH AS FLOAT64) 
 END as anti_mullerian_hormone_ng_ml, 

CASE
    WHEN SSINHBIN IS NULL THEN NULL 
ELSE SAFE_CAST(SSINHBIN AS FLOAT64) 
 END as inhibin_b_pg_ml, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_anti_mullerian_hormone_amh_inhibin_b_surplus_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/SSAMH_C.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/SSAMH_B.htm
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/SSAMH_A.htm
*/
