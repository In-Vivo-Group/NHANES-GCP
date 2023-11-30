SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN LBXIRN IS NULL THEN NULL 
ELSE SAFE_CAST(LBXIRN AS FLOAT64) 
 END as iron_frozen_serum_ug_dl, 

CASE
WHEN LBDIRNSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDIRNSI AS FLOAT64) 
 END as iron_frozen_serum_umol_l, 

CASE
WHEN LBXUIB IS NULL THEN NULL 
ELSE SAFE_CAST(LBXUIB AS FLOAT64) 
 END as uibc_serum_ug_dl, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDUIBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDUIBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDUIBLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDUIBLC AS STRING) 
 END as uibc_serum_comment_code, 

CASE
WHEN LBDUIBSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDUIBSI AS STRING) 
 END as uibc_serum_umol_l, 

CASE
WHEN LBDTIB IS NULL THEN NULL 
ELSE SAFE_CAST(LBDTIB AS STRING) 
 END as total_iron_binding_capacity_tibc_ug_dl, 

CASE
WHEN LBDTIBSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDTIBSI AS STRING) 
 END as tot_iron_binding_capacity_tibc_umol_l, 

CASE
WHEN LBDPCT IS NULL THEN NULL 
ELSE SAFE_CAST(LBDPCT AS STRING) 
 END as transferrin_saturation, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_iron_status_serum_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/FETIB_J.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_FETIB.htm
*/
