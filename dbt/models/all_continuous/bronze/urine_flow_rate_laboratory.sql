SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN URXVOL1 IS NULL THEN NULL 
ELSE SAFE_CAST(URXVOL1 AS FLOAT64) 
 END as the_volume_of_urine_collection_1_ml, 

CASE
WHEN URDFLOW1 IS NULL THEN NULL 
ELSE SAFE_CAST(URDFLOW1 AS FLOAT64) 
 END as urine_1_flow_rate_ml_min, 

CASE
WHEN URDTIME1 IS NULL THEN NULL 
ELSE SAFE_CAST(URDTIME1 AS FLOAT64) 
 END as minutes_b_w_last_urination_urine_1, 

CASE
WHEN URXVOL2 IS NULL THEN NULL 
ELSE SAFE_CAST(URXVOL2 AS FLOAT64) 
 END as the_volume_of_urine_collection_2_ml, 

CASE
WHEN URDFLOW2 IS NULL THEN NULL 
ELSE SAFE_CAST(URDFLOW2 AS FLOAT64) 
 END as urine_2_flow_rate_ml_min, 

CASE
WHEN URDTIME2 IS NULL THEN NULL 
ELSE SAFE_CAST(URDTIME2 AS FLOAT64) 
 END as minutes_b_w_urine_1_urine_2, 

CASE
WHEN URXVOL3 IS NULL THEN NULL 
ELSE SAFE_CAST(URXVOL3 AS FLOAT64) 
 END as the_volume_of_urine_collection_3_ml, 

CASE
WHEN URDFLOW3 IS NULL THEN NULL 
ELSE SAFE_CAST(URDFLOW3 AS FLOAT64) 
 END as urine_3_flow_rate_ml_min, 

CASE
WHEN URDTIME3 IS NULL THEN NULL 
ELSE SAFE_CAST(URDTIME3 AS FLOAT64) 
 END as minutes_b_w_urine_2_urine_3, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_urine_flow_rate_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_UCFLOW.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/UCFLOW_H.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/UCFLOW_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/UCFLOW_F.htm
*/
