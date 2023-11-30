SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN WTSSBI2Y IS NULL THEN NULL 
ELSE SAFE_CAST(WTSSBI2Y AS FLOAT64) 
 END as surplus_specimen_b_15_16_2_year_weights, 

CASE
    WHEN SSEMEA IS NULL THEN NULL 
ELSE SAFE_CAST(SSEMEA AS FLOAT64) 
 END as lab_3_ethylcarbamoyl_benzoic_acid_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SSEMEAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSEMEAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSEMEAL IS NULL THEN NULL 
ELSE SAFE_CAST(SSEMEAL AS STRING) 
 END as lab_3_ethylcarbamoyl_benzoic_acid_cmt_code, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_deet_metabolites_urine_surplus_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/SSDEET_I.htm
*/
