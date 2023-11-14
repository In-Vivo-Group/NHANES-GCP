SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN WTSSAJ2Y IS NULL THEN NULL 
ELSE SAFE_CAST(WTSSAJ2Y AS STRING) 
 END as surplus_specimen_a_17_18_2_year_weights, 

CASE
WHEN SSHMFA IS NULL THEN NULL 
ELSE SAFE_CAST(SSHMFA AS STRING) 
 END as lab_5_hydrxymthl_2_furancrbxylc_acid_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSHMFAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSHMFAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSHMFAL IS NULL THEN NULL 
ELSE SAFE_CAST(SSHMFAL AS STRING) 
 END as lab_5_hydrxymthl_2_furancrbxylc_acid_comt, 

CASE
WHEN SSHMFG IS NULL THEN NULL 
ELSE SAFE_CAST(SSHMFG AS STRING) 
 END as lab_5_hydroxymethyl_2_furoylglycine_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSHMFGL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSHMFGL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSHMFGL IS NULL THEN NULL 
ELSE SAFE_CAST(SSHMFGL AS STRING) 
 END as lab_5_hydroxymethyl_2_furoylglycine_comt, 

CASE
WHEN SSMUCA IS NULL THEN NULL 
ELSE SAFE_CAST(SSMUCA AS STRING) 
 END as trans_trans_muconic_acid_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSMUCAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSMUCAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSMUCAL IS NULL THEN NULL 
ELSE SAFE_CAST(SSMUCAL AS STRING) 
 END as trans_trans_muconic_acid_comment_code, 

CASE
WHEN SSN2FG IS NULL THEN NULL 
ELSE SAFE_CAST(SSN2FG AS STRING) 
 END as n_2_furoylglycine_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSN2FGL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSN2FGL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSN2FGL IS NULL THEN NULL 
ELSE SAFE_CAST(SSN2FGL AS STRING) 
 END as n_2_furoylglycine_comment_code, 

CASE
WHEN SSPHMA IS NULL THEN NULL 
ELSE SAFE_CAST(SSPHMA AS STRING) 
 END as phenylmercapturic_acid_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSPHMAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSPHMAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSPHMAL IS NULL THEN NULL 
ELSE SAFE_CAST(SSPHMAL AS STRING) 
 END as phenylmercapturic_acid_comment_code, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_volatile_organic_compound_voc_metabolites_ii_urine_surplus_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/SSUVOC_J.htm
*/
