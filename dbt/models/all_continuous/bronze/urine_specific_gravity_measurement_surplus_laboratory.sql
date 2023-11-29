SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN WTSSUG2Y IS NULL THEN NULL 
ELSE SAFE_CAST(WTSSUG2Y AS FLOAT64) 
 END as ssusg_e_2_year_weights, 

CASE
    WHEN SSUSG IS NULL THEN NULL 
ELSE SAFE_CAST(SSUSG AS FLOAT64) 
 END as urine_specific_gravity, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_urine_specific_gravity_measurement_surplus_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/SSUSG_E.htm
*/
