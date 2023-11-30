SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN WTFSM IS NULL THEN NULL 
ELSE SAFE_CAST(WTFSM AS FLOAT64) 
 END as two_year_smoking_weights, 

CASE
    WHEN URXUBA IS NULL THEN NULL 
ELSE SAFE_CAST(URXUBA AS FLOAT64) 
 END as barium_urine_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUBALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUBALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDUBALC IS NULL THEN NULL 
ELSE SAFE_CAST(URDUBALC AS STRING) 
 END as urinary_barium_comment_code, 

CASE
    WHEN URXUCD IS NULL THEN NULL 
ELSE SAFE_CAST(URXUCD AS FLOAT64) 
 END as cadmium_urine_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUCDLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUCDLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDUCDLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDUCDLC AS STRING) 
 END as urinary_cadmium_comment_code, 

CASE
    WHEN URXUCO IS NULL THEN NULL 
ELSE SAFE_CAST(URXUCO AS FLOAT64) 
 END as cobalt_urine_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUCOLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUCOLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDUCOLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDUCOLC AS STRING) 
 END as urinary_cobalt_comment_code, 

CASE
    WHEN URXUCS IS NULL THEN NULL 
ELSE SAFE_CAST(URXUCS AS FLOAT64) 
 END as cesium_urine_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUCSLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUCSLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDUCSLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDUCSLC AS STRING) 
 END as urinary_cesium_comment_code, 

CASE
    WHEN URXUMO IS NULL THEN NULL 
ELSE SAFE_CAST(URXUMO AS FLOAT64) 
 END as molybdenum_urine_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUMOLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUMOLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDUMOLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDUMOLC AS STRING) 
 END as urinary_molybdenum_comment_code, 

CASE
    WHEN URXUMN IS NULL THEN NULL 
ELSE SAFE_CAST(URXUMN AS FLOAT64) 
 END as manganese_urine_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUMNLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUMNLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDUMNLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDUMNLC AS STRING) 
 END as urinary_mn_comment_code, 

CASE
    WHEN URXUPB IS NULL THEN NULL 
ELSE SAFE_CAST(URXUPB AS FLOAT64) 
 END as lead_urine_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUPBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUPBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDUPBLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDUPBLC AS STRING) 
 END as urinary_lead_comment_code, 

CASE
    WHEN URXUSB IS NULL THEN NULL 
ELSE SAFE_CAST(URXUSB AS FLOAT64) 
 END as antimony_urine_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUSBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUSBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDUSBLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDUSBLC AS STRING) 
 END as urinary_antimony_comment_code, 

CASE
    WHEN URXUSN IS NULL THEN NULL 
ELSE SAFE_CAST(URXUSN AS FLOAT64) 
 END as tin_urine_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUSNLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUSNLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDUSNLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDUSNLC AS STRING) 
 END as usn_comment_code, 

CASE
    WHEN URXUSR IS NULL THEN NULL 
ELSE SAFE_CAST(URXUSR AS FLOAT64) 
 END as strontium_urine_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUSRLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUSRLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDUSRLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDUSRLC AS STRING) 
 END as usr_comment_code, 

CASE
    WHEN URXUTL IS NULL THEN NULL 
ELSE SAFE_CAST(URXUTL AS FLOAT64) 
 END as thallium_urine_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUTLLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUTLLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDUTLLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDUTLLC AS STRING) 
 END as urinary_thallium_comment_code, 

CASE
    WHEN URXUTU IS NULL THEN NULL 
ELSE SAFE_CAST(URXUTU AS FLOAT64) 
 END as tungsten_urine_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUTULC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUTULC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDUTULC IS NULL THEN NULL 
ELSE SAFE_CAST(URDUTULC AS STRING) 
 END as urinary_tungsten_comment_code, 

CASE
    WHEN URXUUR IS NULL THEN NULL 
ELSE SAFE_CAST(URXUUR AS FLOAT64) 
 END as uranium_urine_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUURLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUURLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDUURLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDUURLC AS STRING) 
 END as urinary_uranium_comment_code, 

CASE
    WHEN URXUCR IS NULL THEN NULL 
ELSE SAFE_CAST(URXUCR AS FLOAT64) 
 END as creatinine_urine_mg_dl, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_metals_urine_special_sample_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/UMS_I.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/UMS_H.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/UHMS_G.htm
*/
