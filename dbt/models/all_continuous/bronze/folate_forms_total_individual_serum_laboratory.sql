SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN WTFOL2YR IS NOT NULL THEN SAFE_CAST(WTFOL2YR AS FLOAT64) -- correct wrong data types for numerical data 
WHEN WTFOL2YR IS NOT NULL THEN SAFE_CAST(WTFOL2YR AS FLOAT64) -- correct wrong data types for numerical data 
WHEN WTFOL2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTFOL2YR AS FLOAT64) 
 END as folate_and_folate_forms_weight, 

CASE
    WHEN LBDFOTSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDFOTSI AS FLOAT64) 
 END as serum_total_folate_nmol_l, 

CASE
    WHEN LBDFOT IS NULL THEN NULL 
ELSE SAFE_CAST(LBDFOT AS FLOAT64) 
 END as serum_total_folate_ng_ml, 

CASE
    WHEN LBXSF1SI IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSF1SI AS FLOAT64) 
 END as lab_5_methyl_tetrahydrofolate_nmol_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDSF1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDSF1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDSF1LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDSF1LC AS STRING) 
 END as lab_5_methyl_tetrahydrofolate_cmt, 

CASE
    WHEN LBXSF2SI IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSF2SI AS FLOAT64) 
 END as folic_acid_nmol_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDSF2LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDSF2LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDSF2LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDSF2LC AS STRING) 
 END as folic_acid_cmt, 

CASE
    WHEN LBXSF3SI IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSF3SI AS FLOAT64) 
 END as lab_5_formyl_tetrahydrofolate_nmol_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDSF3LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDSF3LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDSF3LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDSF3LC AS STRING) 
 END as lab_5_formyl_tetrahydrofolate_cmt, 

CASE
    WHEN LBXSF4SI IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSF4SI AS FLOAT64) 
 END as tetrahydrofolate_nmol_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDSF4LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDSF4LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDSF4LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDSF4LC AS STRING) 
 END as tetrahydrofolate_cmt, 

CASE
    WHEN LBXSF5SI IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSF5SI AS FLOAT64) 
 END as lab_5_10_methenyl_tetrahydrofolate_nmol_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDSF5LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDSF5LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDSF5LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDSF5LC AS STRING) 
 END as lab_5_10_methenyl_tetrahydrofolate_cmt, 

CASE
    WHEN LBXSF6SI IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSF6SI AS FLOAT64) 
 END as mefox_oxidation_product_nmol_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDSF6LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDSF6LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDSF6LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDSF6LC AS STRING) 
 END as mefox_oxidation_product_cmt, 

CASE
    WHEN WTFOLPRP IS NOT NULL THEN SAFE_CAST(WTFOLPRP AS FLOAT64) -- correct wrong data types for numerical data 
WHEN WTFOLPRP IS NOT NULL THEN SAFE_CAST(WTFOLPRP AS FLOAT64) -- correct wrong data types for numerical data 
WHEN WTFOLPRP IS NULL THEN NULL 
ELSE SAFE_CAST(WTFOLPRP AS FLOAT64) 
 END as folate_folate_form_weight_pre_pandemic, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_folate_forms_total_individual_serum_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/FOLFMS_J.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_FOLFMS.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/FOLFMS_H.htm
*/
