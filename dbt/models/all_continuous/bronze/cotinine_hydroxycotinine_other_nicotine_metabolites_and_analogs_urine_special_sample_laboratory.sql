SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN WTFSM IS NULL THEN NULL 
ELSE SAFE_CAST(WTFSM AS FLOAT64) 
 END as two_year_smoking_weights, 

CASE
WHEN URXCOTT IS NULL THEN NULL 
ELSE SAFE_CAST(URXCOTT AS FLOAT64) 
 END as total_cotinine_urine_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDCOTLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDCOTLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDCOTLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDCOTLC AS STRING) 
 END as total_cotinine_urine_comment_code, 

CASE
WHEN URXHCTT IS NULL THEN NULL 
ELSE SAFE_CAST(URXHCTT AS FLOAT64) 
 END as total_hydroxycotinine_urine_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDHCTLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDHCTLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDHCTLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDHCTLC AS STRING) 
 END as total_hydroxycotinine_urine_comt_code, 

CASE
WHEN URXANBT IS NULL THEN NULL 
ELSE SAFE_CAST(URXANBT AS FLOAT64) 
 END as anabasine_urine_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDANBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDANBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDANBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Result not obtained, cotinine (URXCOTT) result below 20 ng/mL' -- categorize numeric values
WHEN URDANBLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDANBLC AS STRING) 
 END as anabasine_urine_comment_code, 

CASE
WHEN URXANTT IS NULL THEN NULL 
ELSE SAFE_CAST(URXANTT AS FLOAT64) 
 END as anatabine_urine_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDANTLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDANTLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDANTLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Result not obtained, cotinine (URXCOTT) result below 20 ng/mL' -- categorize numeric values
WHEN URDANTLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDANTLC AS STRING) 
 END as anatabine_urine_comment_code, 

CASE
WHEN URXCOXT IS NULL THEN NULL 
ELSE SAFE_CAST(URXCOXT AS FLOAT64) 
 END as cotinine_n_oxide_urine_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDCOXLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDCOXLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDCOXLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Result not obtained, cotinine (URXCOTT) result below 20 ng/mL' -- categorize numeric values
WHEN URDCOXLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDCOXLC AS STRING) 
 END as cotinine_n_oxide_urine_comment_code, 

CASE
WHEN URXHPBT IS NULL THEN NULL 
ELSE SAFE_CAST(URXHPBT AS FLOAT64) 
 END as lab_1_3p_1_but_4_carbox_acid_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDHPBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit;' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDHPBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDHPBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Result not obtained, cotinine (URXCOTT) result below 20 ng/mL' -- categorize numeric values
WHEN URDHPBLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDHPBLC AS STRING) 
 END as lab_1_3p_1_but_4_carbox_acid_comment_code, 

CASE
WHEN URXNICT IS NULL THEN NULL 
ELSE SAFE_CAST(URXNICT AS FLOAT64) 
 END as nicotine_urine_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDNICLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDNICLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDNICLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Result not obtained, cotinine (URXCOTT) result below 20 ng/mL' -- categorize numeric values
WHEN URDNICLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDNICLC AS STRING) 
 END as nicotine_urine_comment_code, 

CASE
WHEN URXNNCT IS NULL THEN NULL 
ELSE SAFE_CAST(URXNNCT AS FLOAT64) 
 END as nornicotine_urine_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDNCTLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDNCTLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDNCTLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Result not obtained, cotinine (URXCOTT) result below 20 ng/mL' -- categorize numeric values
WHEN URDNCTLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDNCTLC AS STRING) 
 END as nornicotine_urine_comment_code, 

CASE
WHEN URXNOXT IS NULL THEN NULL 
ELSE SAFE_CAST(URXNOXT AS FLOAT64) 
 END as nicotine_1_n_oxide_urine_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDNOXLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDNOXLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDNOXLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Result not obtained, cotinine (URXCOTT) result below 20 ng/mL' -- categorize numeric values
WHEN URDNOXLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDNOXLC AS STRING) 
 END as nicotine_1_n_oxide_urine_comment_code, 

CASE
WHEN URDTNE2 IS NULL THEN NULL 
ELSE SAFE_CAST(URDTNE2 AS FLOAT64) 
 END as tne_2_nmol_ml, 

CASE
WHEN URDTNE3 IS NULL THEN NULL 
ELSE SAFE_CAST(URDTNE3 AS FLOAT64) 
 END as tne_3_nmol_ml, 

CASE
WHEN URDTNE6 IS NULL THEN NULL 
ELSE SAFE_CAST(URDTNE6 AS FLOAT64) 
 END as tne_6_nmol_ml, 

CASE
WHEN URDTNE7 IS NULL THEN NULL 
ELSE SAFE_CAST(URDTNE7 AS FLOAT64) 
 END as tne_7_nmol_ml, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_cotinine_hydroxycotinine_other_nicotine_metabolites_and_analogs_urine_special_sample_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/UCOTS_I.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/UCOTS_H.htm
*/
