SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN WTSSTP2Y IS NULL THEN NULL 
ELSE SAFE_CAST(WTSSTP2Y AS FLOAT64) 
 END as surplus_specimen_terpenes_2_yr_weights, 

CASE
    WHEN SSSAPN IS NULL THEN NULL 
ELSE SAFE_CAST(SSSAPN AS FLOAT64) 
 END as î_pinene_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SSSAPNL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSSAPNL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSSAPNL IS NULL THEN NULL 
ELSE SAFE_CAST(SSSAPNL AS STRING) 
 END as î_pinene_comment_code, 

CASE
    WHEN SSSBPN IS NULL THEN NULL 
ELSE SAFE_CAST(SSSBPN AS FLOAT64) 
 END as î²_pinene_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SSSBPNL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSSBPNL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSSBPNL IS NULL THEN NULL 
ELSE SAFE_CAST(SSSBPNL AS STRING) 
 END as î²_pinene_comment_code, 

CASE
    WHEN SSSLIM IS NULL THEN NULL 
ELSE SAFE_CAST(SSSLIM AS FLOAT64) 
 END as limonene_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SSSLIML AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSSLIML AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSSLIML IS NULL THEN NULL 
ELSE SAFE_CAST(SSSLIML AS STRING) 
 END as limonene_comment_code, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_terpenes_serum_surplus_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/SSTERP_H.htm
*/
