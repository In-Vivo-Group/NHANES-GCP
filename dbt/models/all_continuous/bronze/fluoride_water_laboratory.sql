SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN LBDWFL IS NULL THEN NULL 
ELSE SAFE_CAST(LBDWFL AS FLOAT64) 
 END as fluoride_water_mg_l_average_2_values, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDWFLLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDWFLLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDWFLLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDWFLLC AS STRING) 
 END as fluoride_water_comment_code, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_fluoride_water_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/FLDEW_H.htm
*/
