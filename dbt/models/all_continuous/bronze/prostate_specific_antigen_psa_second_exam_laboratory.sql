SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN LB2DAY IS NULL THEN NULL 
ELSE SAFE_CAST(LB2DAY AS FLOAT64) 
 END as days_betwen_first_and_second_exams, 

CASE
WHEN LB2P1 IS NULL THEN NULL 
ELSE SAFE_CAST(LB2P1 AS FLOAT64) 
 END as psa_total_ng_ml, 

CASE
WHEN LB2P2 IS NULL THEN NULL 
ELSE SAFE_CAST(LB2P2 AS FLOAT64) 
 END as psa_free_ng_ml, 

CASE
WHEN LB2P3 IS NULL THEN NULL 
ELSE SAFE_CAST(LB2P3 AS FLOAT64) 
 END as prostate_specific_antigen_ratio, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_prostate_specific_antigen_psa_second_exam_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/L11P_2_B.htm
*/
