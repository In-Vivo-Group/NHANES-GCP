SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXSY1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXSY1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXSY1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Indeterminate' -- categorize numeric values
WHEN LBXSY1 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSY1 AS STRING) 
 END as syphilis_igg_eia, 

CASE
    WHEN LBDSY3 IS NULL THEN NULL 
ELSE SAFE_CAST(LBDSY3 AS FLOAT64) 
 END as syphilis_rpr_titer_level, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDSY4 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDSY4 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDSY4 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Indeterminate' -- categorize numeric values
WHEN LBDSY4 IS NULL THEN NULL 
ELSE SAFE_CAST(LBDSY4 AS STRING) 
 END as syphilis_tp_pa, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_syphilis_igg_syphilis_rapid_plasma_reagin_rpr_treponema_pallidum_particle_agglutination_tp_pa_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/L36_C.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/L36_B.htm
*/
