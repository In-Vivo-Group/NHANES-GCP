SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN WTSB2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSB2YR AS FLOAT64) 
 END as subsample_b_weights, 

CASE
    WHEN LBXPFDE IS NULL THEN NULL 
ELSE SAFE_CAST(LBXPFDE AS FLOAT64) 
 END as perfluorodecanoic_acid_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPFDEL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPFDEL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDPFDEL IS NULL THEN NULL 
ELSE SAFE_CAST(LBDPFDEL AS STRING) 
 END as perfluorodecanoic_acid_comment_code, 

CASE
    WHEN LBXPFHS IS NULL THEN NULL 
ELSE SAFE_CAST(LBXPFHS AS FLOAT64) 
 END as perfluorohexane_sulfonic_acid_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPFHSL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPFHSL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDPFHSL IS NULL THEN NULL 
ELSE SAFE_CAST(LBDPFHSL AS STRING) 
 END as perfluorohexane_sulfonic_acid_comt_code, 

CASE
    WHEN LBXMPAH IS NULL THEN NULL 
ELSE SAFE_CAST(LBXMPAH AS FLOAT64) 
 END as lab_2_n_methyl_pfosa_acetic_acid_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDMPAHL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDMPAHL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDMPAHL IS NULL THEN NULL 
ELSE SAFE_CAST(LBDMPAHL AS STRING) 
 END as lab_2_n_methyl_pfosa_acetic_acid_comt_code, 

CASE
    WHEN LBXPFNA IS NULL THEN NULL 
ELSE SAFE_CAST(LBXPFNA AS FLOAT64) 
 END as perfluorononanoic_acid_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPFNAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPFNAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDPFNAL IS NULL THEN NULL 
ELSE SAFE_CAST(LBDPFNAL AS STRING) 
 END as perfluorononanoic_acid_comment_code, 

CASE
    WHEN LBXPFUA IS NULL THEN NULL 
ELSE SAFE_CAST(LBXPFUA AS FLOAT64) 
 END as perfluoroundecanoic_acid_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPFUAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPFUAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDPFUAL IS NULL THEN NULL 
ELSE SAFE_CAST(LBDPFUAL AS STRING) 
 END as perfluoroundecanoic_acid_comment_code, 

CASE
    WHEN LBXPFDO IS NULL THEN NULL 
ELSE SAFE_CAST(LBXPFDO AS FLOAT64) 
 END as perfluorododecanoic_acid_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPFDOL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPFDOL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDPFDOL IS NULL THEN NULL 
ELSE SAFE_CAST(LBDPFDOL AS STRING) 
 END as perfluorododecanoic_acid_comment, 

CASE
    WHEN LBXNFOA IS NULL THEN NULL 
ELSE SAFE_CAST(LBXNFOA AS FLOAT64) 
 END as n_perfluorooctanoic_acid_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDNFOAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDNFOAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDNFOAL IS NULL THEN NULL 
ELSE SAFE_CAST(LBDNFOAL AS STRING) 
 END as n_perfluorooctanoic_acid_comment_code, 

CASE
    WHEN LBXBFOA IS NULL THEN NULL 
ELSE SAFE_CAST(LBXBFOA AS FLOAT64) 
 END as br_perfluorooctanoic_acid_iso_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBFOAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBFOAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDBFOAL IS NULL THEN NULL 
ELSE SAFE_CAST(LBDBFOAL AS STRING) 
 END as br_perfluorooctanoic_acid_iso_comt_code, 

CASE
    WHEN LBXNFOS IS NULL THEN NULL 
ELSE SAFE_CAST(LBXNFOS AS FLOAT64) 
 END as n_perfluorooctane_sulfonic_acid_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDNFOSL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDNFOSL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDNFOSL IS NULL THEN NULL 
ELSE SAFE_CAST(LBDNFOSL AS STRING) 
 END as n_perfluorooctane_sulfonic_comt_code, 

CASE
    WHEN LBXMFOS IS NULL THEN NULL 
ELSE SAFE_CAST(LBXMFOS AS FLOAT64) 
 END as sm_pfos_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDMFOSL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDMFOSL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDMFOSL IS NULL THEN NULL 
ELSE SAFE_CAST(LBDMFOSL AS STRING) 
 END as sm_pfos_comment_code, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_perfluoroalkyl_and_polyfluoroalkyl_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/PFAS_I.htm
*/
