SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN LBDPFL IS NULL THEN NULL 
ELSE SAFE_CAST(LBDPFL AS FLOAT64) 
 END as fluoride_plasma_umol_l_average_2, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPFLLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPFLLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDPFLLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDPFLLC AS STRING) 
 END as fluoride_plasma_comment_code, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_fluoride_plasma_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/FLDEP_H.htm
*/
