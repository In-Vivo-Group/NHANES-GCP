SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXHP2C AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXHP2C AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXHP2C AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Inadequate' -- categorize numeric values
WHEN LBXHP2C IS NULL THEN NULL 
ELSE SAFE_CAST(LBXHP2C AS STRING) 
 END as cobas_hpv_swab_high_risk, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_human_papillomavirus_hpv_dna_vaginal_swab_roche_cobas_high_risk_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/HPVSWC_I.htm
*/
