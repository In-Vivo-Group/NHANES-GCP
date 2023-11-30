SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN WTSSBI2Y IS NULL THEN NULL 
ELSE SAFE_CAST(WTSSBI2Y AS FLOAT64) 
 END as surplus_specimen_b_15_16_2_year_weights, 

CASE
    WHEN SSIMID IS NULL THEN NULL 
ELSE SAFE_CAST(SSIMID AS FLOAT64) 
 END as imidacloprid_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SSIMIDLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSIMIDLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSIMIDLC IS NULL THEN NULL 
ELSE SAFE_CAST(SSIMIDLC AS STRING) 
 END as imidacloprid_ug_l_cmt_code, 

CASE
    WHEN SSACET IS NULL THEN NULL 
ELSE SAFE_CAST(SSACET AS FLOAT64) 
 END as acetamiprid_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SSACETLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSACETLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSACETLC IS NULL THEN NULL 
ELSE SAFE_CAST(SSACETLC AS STRING) 
 END as acetamiprid_ug_l_cmt_code, 

CASE
    WHEN SSCLOT IS NULL THEN NULL 
ELSE SAFE_CAST(SSCLOT AS FLOAT64) 
 END as clothianidin_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SSCLOTLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSCLOTLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSCLOTLC IS NULL THEN NULL 
ELSE SAFE_CAST(SSCLOTLC AS STRING) 
 END as clothianidin_ug_l_cmt_code, 

CASE
    WHEN SSTHIA IS NULL THEN NULL 
ELSE SAFE_CAST(SSTHIA AS FLOAT64) 
 END as thiacloprid_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SSTHIALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSTHIALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSTHIALC IS NULL THEN NULL 
ELSE SAFE_CAST(SSTHIALC AS STRING) 
 END as thiacloprid_ug_l_cmt_code, 

CASE
    WHEN SSOHIM IS NULL THEN NULL 
ELSE SAFE_CAST(SSOHIM AS FLOAT64) 
 END as lab_5_hydroxyimidacloprid_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SSOHIMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSOHIMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSOHIMLC IS NULL THEN NULL 
ELSE SAFE_CAST(SSOHIMLC AS STRING) 
 END as lab_5_hydroxyimidacloprid_ug_l_cmt_code, 

CASE
    WHEN SSAND IS NULL THEN NULL 
ELSE SAFE_CAST(SSAND AS FLOAT64) 
 END as n_desmethylacetamiprid_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SSANDLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSANDLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSANDLC IS NULL THEN NULL 
ELSE SAFE_CAST(SSANDLC AS STRING) 
 END as n_desmethylacetamiprid_ug_l_cmt_code, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_neonicotinoids_urine_surplus_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/SSNEON_I.htm
*/
