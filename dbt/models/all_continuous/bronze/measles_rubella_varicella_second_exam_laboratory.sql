SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN LB2DAY IS NULL THEN NULL 
ELSE SAFE_CAST(LB2DAY AS FLOAT64) 
 END as days_between_1st_and_2nd_exam, 

CASE
WHEN LB2ME IS NULL THEN NULL 
ELSE SAFE_CAST(LB2ME AS FLOAT64) 
 END as measles, 

CASE
WHEN LB2RU IS NULL THEN NULL 
ELSE SAFE_CAST(LB2RU AS FLOAT64) 
 END as rubella, 

CASE
WHEN LB2RUIU IS NULL THEN NULL 
ELSE SAFE_CAST(LB2RUIU AS FLOAT64) 
 END as rubella_antibody_international_units, 

CASE
WHEN LB2VAR IS NULL THEN NULL 
ELSE SAFE_CAST(LB2VAR AS FLOAT64) 
 END as varicella, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_measles_rubella_varicella_second_exam_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/L19_2_B.htm
*/
