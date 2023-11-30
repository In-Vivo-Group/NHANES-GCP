SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN WTSB2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSB2YR AS FLOAT64) 
 END as subsample_b_weights, 

CASE
    WHEN URXBP3 IS NULL THEN NULL 
ELSE SAFE_CAST(URXBP3 AS FLOAT64) 
 END as urinary_benzophenone_3_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDBP3LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDBP3LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDBP3LC IS NULL THEN NULL 
ELSE SAFE_CAST(URDBP3LC AS STRING) 
 END as urinary_benzophenone_3_comment_code, 

CASE
    WHEN URXBPH IS NULL THEN NULL 
ELSE SAFE_CAST(URXBPH AS FLOAT64) 
 END as urinary_bisphenol_a_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDBPHLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDBPHLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDBPHLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDBPHLC AS STRING) 
 END as urinary_bisphenol_a_comment_code, 

CASE
    WHEN URXBPF IS NULL THEN NULL 
ELSE SAFE_CAST(URXBPF AS FLOAT64) 
 END as urinary_bisphenol_f_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDBPFLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDBPFLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDBPFLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDBPFLC AS STRING) 
 END as urinary_bisphenol_f_comment_code, 

CASE
    WHEN URXBPS IS NULL THEN NULL 
ELSE SAFE_CAST(URXBPS AS FLOAT64) 
 END as urinary_bisphenol_s_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDBPSLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDBPSLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDBPSLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDBPSLC AS STRING) 
 END as urinary_bisphenol_s_comment_code, 

CASE
    WHEN URXTLC IS NULL THEN NULL 
ELSE SAFE_CAST(URXTLC AS FLOAT64) 
 END as urinary_triclocarban_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDTLCLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDTLCLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDTLCLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDTLCLC AS STRING) 
 END as urinary_triclocarban_comment_code, 

CASE
    WHEN URXTRS IS NULL THEN NULL 
ELSE SAFE_CAST(URXTRS AS FLOAT64) 
 END as urinary_triclosan_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDTRSLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDTRSLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDTRSLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDTRSLC AS STRING) 
 END as urinary_triclosan_comment_code, 

CASE
    WHEN URXBUP IS NULL THEN NULL 
ELSE SAFE_CAST(URXBUP AS FLOAT64) 
 END as butyl_paraben_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDBUPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDBUPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDBUPLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDBUPLC AS STRING) 
 END as butyl_paraben_comment_code, 

CASE
    WHEN URXEPB IS NULL THEN NULL 
ELSE SAFE_CAST(URXEPB AS FLOAT64) 
 END as ethyl_paraben_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDEPBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDEPBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDEPBLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDEPBLC AS STRING) 
 END as ethyl_paraben_comment_code, 

CASE
    WHEN URXMPB IS NULL THEN NULL 
ELSE SAFE_CAST(URXMPB AS FLOAT64) 
 END as methyl_paraben_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMPBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMPBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDMPBLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDMPBLC AS STRING) 
 END as methyl_paraben_comment_code, 

CASE
    WHEN URXPPB IS NULL THEN NULL 
ELSE SAFE_CAST(URXPPB AS FLOAT64) 
 END as propyl_paraben_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDPPBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDPPBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDPPBLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDPPBLC AS STRING) 
 END as propyl_paraben_comment_code, 

CASE
    WHEN URX14D IS NULL THEN NULL 
ELSE SAFE_CAST(URX14D AS FLOAT64) 
 END as lab_2_5_dichlorophenol_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URD14DLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URD14DLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URD14DLC IS NULL THEN NULL 
ELSE SAFE_CAST(URD14DLC AS STRING) 
 END as lab_2_5_dichlorophenol_comment_code, 

CASE
    WHEN URXDCB IS NULL THEN NULL 
ELSE SAFE_CAST(URXDCB AS FLOAT64) 
 END as lab_2_4_dichlorophenol_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDDCBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDDCBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDDCBLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDDCBLC AS STRING) 
 END as lab_2_4_dichlorophenol_comment_code, 

CASE
    WHEN URXUCR IS NULL THEN NULL 
ELSE SAFE_CAST(URXUCR AS FLOAT64) 
 END as urinary_creatinine, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_personal_care_and_consumer_product_chemicals_and_metabolites_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/EPHPP_I.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/EPHPP_H.htm
*/
