SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN WTSSBI2Y IS NULL THEN NULL 
ELSE SAFE_CAST(WTSSBI2Y AS FLOAT64) 
 END as surplus_specimen_b_15_16_2_year_weights, 

CASE
WHEN SSMHHT IS NULL THEN NULL 
ELSE SAFE_CAST(SSMHHT AS FLOAT64) 
 END as mono2ethyl5hydroxyhexyl_terephth_ug_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSMHHTL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSMHHTL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSMHHTL IS NULL THEN NULL 
ELSE SAFE_CAST(SSMHHTL AS STRING) 
 END as mono2ethy_5hydroxyhexyl_terephth_cmt_cd, 

CASE
WHEN SSECPT IS NULL THEN NULL 
ELSE SAFE_CAST(SSECPT AS FLOAT64) 
 END as mono2ethyl5carboxypentyl_terephth_ug_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSECPTL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSECPTL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSECPTL IS NULL THEN NULL 
ELSE SAFE_CAST(SSECPTL AS STRING) 
 END as mono2ethyl5carboxypentyl_terephth_cmt_cd, 

CASE
WHEN SSMONP IS NULL THEN NULL 
ELSE SAFE_CAST(SSMONP AS FLOAT64) 
 END as monooxoisononyl_phthalate_ug_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSMONPL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSMONPL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSMONPL IS NULL THEN NULL 
ELSE SAFE_CAST(SSMONPL AS STRING) 
 END as monooxoisononyl_phthalate_cmt_cd, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_mono_2_ethyl_5_hydroxyhexyl_terephthalate_mono_2_ethyl_5_carboxypentyl_terephthalate_and_monooxoisononyl_phthalate_urine_surplus_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/SSMHHT_I.htm
*/
