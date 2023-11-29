SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SEPAHLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SEPAHLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SEPAHLC IS NULL THEN NULL 
ELSE SAFE_CAST(SEPAHLC AS STRING) 
 END as surplus_sera_epah_comment_code, 

CASE
WHEN SEPAH IS NULL THEN NULL 
ELSE SAFE_CAST(SEPAH AS FLOAT64) 
 END as surplus_sera_epah_result_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMPAHLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMPAHLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SMPAHLC IS NULL THEN NULL 
ELSE SAFE_CAST(SMPAHLC AS STRING) 
 END as surplus_sera_mpah_comment_code, 

CASE
WHEN SMPAH IS NULL THEN NULL 
ELSE SAFE_CAST(SMPAH AS FLOAT64) 
 END as surplus_sera_mpah_result_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPFDELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPFDELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SPFDELC IS NULL THEN NULL 
ELSE SAFE_CAST(SPFDELC AS STRING) 
 END as surplus_sera_pfde_comment_code, 

CASE
WHEN SPFDE IS NULL THEN NULL 
ELSE SAFE_CAST(SPFDE AS FLOAT64) 
 END as surplus_sera_pfde_result_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPFDOLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPFDOLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SPFDOLC IS NULL THEN NULL 
ELSE SAFE_CAST(SPFDOLC AS STRING) 
 END as surplus_sera_pfdo_comment_code, 

CASE
WHEN SPFDO IS NULL THEN NULL 
ELSE SAFE_CAST(SPFDO AS FLOAT64) 
 END as surplus_sera_pfdo_result_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPFHPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPFHPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SPFHPLC IS NULL THEN NULL 
ELSE SAFE_CAST(SPFHPLC AS STRING) 
 END as surplus_sera_pfhp_comment_code, 

CASE
WHEN SPFHP IS NULL THEN NULL 
ELSE SAFE_CAST(SPFHP AS FLOAT64) 
 END as surplus_sera_pfhp_result_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPFHSLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPFHSLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SPFHSLC IS NULL THEN NULL 
ELSE SAFE_CAST(SPFHSLC AS STRING) 
 END as surplus_sera_pfhs_comment_code, 

CASE
WHEN SPFHS IS NULL THEN NULL 
ELSE SAFE_CAST(SPFHS AS FLOAT64) 
 END as surplus_sera_pfhs_result_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPFNALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPFNALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SPFNALC IS NULL THEN NULL 
ELSE SAFE_CAST(SPFNALC AS STRING) 
 END as surplus_sera_pfna_comment_code, 

CASE
WHEN SPFNA IS NULL THEN NULL 
ELSE SAFE_CAST(SPFNA AS FLOAT64) 
 END as surplus_sera_pfna_result_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPFOALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPFOALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SPFOALC IS NULL THEN NULL 
ELSE SAFE_CAST(SPFOALC AS STRING) 
 END as surplus_sera_pfoa_comment_code, 

CASE
WHEN SPFOA IS NULL THEN NULL 
ELSE SAFE_CAST(SPFOA AS FLOAT64) 
 END as surplus_sera_pfoa_result_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPFOSLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPFOSLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SPFOSLC IS NULL THEN NULL 
ELSE SAFE_CAST(SPFOSLC AS STRING) 
 END as surplus_sera_pfos_comment_code, 

CASE
WHEN SPFOS IS NULL THEN NULL 
ELSE SAFE_CAST(SPFOS AS FLOAT64) 
 END as surplus_sera_pfos_result_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPFSALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPFSALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SPFSALC IS NULL THEN NULL 
ELSE SAFE_CAST(SPFSALC AS STRING) 
 END as surplus_sera_pfsa_comment_code, 

CASE
WHEN SPFSA IS NULL THEN NULL 
ELSE SAFE_CAST(SPFSA AS FLOAT64) 
 END as surplus_sera_pfsa_result_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPFUALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPFUALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SPFUALC IS NULL THEN NULL 
ELSE SAFE_CAST(SPFUALC AS STRING) 
 END as surplus_sera_pfua_comment_code, 

CASE
WHEN SPFUA IS NULL THEN NULL 
ELSE SAFE_CAST(SPFUA AS FLOAT64) 
 END as surplus_sera_pfua_result_ng_ml, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_perfluoroalkyl_chemicals_serum_surplus_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/SSPFC_A.htm
*/
