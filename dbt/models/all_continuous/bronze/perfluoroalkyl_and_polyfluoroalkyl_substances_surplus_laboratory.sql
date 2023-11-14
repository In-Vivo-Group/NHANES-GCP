SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN WTSSBJ2Y IS NULL THEN NULL 
ELSE SAFE_CAST(WTSSBJ2Y AS STRING) 
 END as surplus_specimen_b_17_18_2_year_weights, 

CASE
WHEN SSDONA IS NULL THEN NULL 
ELSE SAFE_CAST(SSDONA AS STRING) 
 END as dodecafluoro_3h_4_8_dioxanoate, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSDONAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSDONAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSDONAL IS NULL THEN NULL 
ELSE SAFE_CAST(SSDONAL AS STRING) 
 END as dodecafluoro_3h_4_8_dioxanoate_cmt_cd, 

CASE
WHEN SSGENX IS NULL THEN NULL 
ELSE SAFE_CAST(SSGENX AS STRING) 
 END as genx, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSGENXL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSGENXL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSGENXL IS NULL THEN NULL 
ELSE SAFE_CAST(SSGENXL AS STRING) 
 END as genx_cmt_cd, 

CASE
WHEN SSCLPF IS NULL THEN NULL 
ELSE SAFE_CAST(SSCLPF AS STRING) 
 END as chlorohexadecafluorooxanonane_sulfonate, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSCLPFL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSCLPFL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSCLPFL IS NULL THEN NULL 
ELSE SAFE_CAST(SSCLPFL AS STRING) 
 END as chlorohexadecafluorooxanonane_sulfon_cd, 

CASE
WHEN SSFHPS IS NULL THEN NULL 
ELSE SAFE_CAST(SSFHPS AS STRING) 
 END as perfluoro_1_heptanesulfonate, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSFHPSL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSFHPSL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSFHPSL IS NULL THEN NULL 
ELSE SAFE_CAST(SSFHPSL AS STRING) 
 END as perfluoro_1_heptanesulfonate_cmt_cd, 

CASE
WHEN SSPFHA IS NULL THEN NULL 
ELSE SAFE_CAST(SSPFHA AS STRING) 
 END as perfluorohexanoate, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSPFHAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSPFHAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSPFHAL IS NULL THEN NULL 
ELSE SAFE_CAST(SSPFHAL AS STRING) 
 END as perfluorohexanoate_cmt_cd, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_perfluoroalkyl_and_polyfluoroalkyl_substances_surplus_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/SSPFAS_J.htm
*/
