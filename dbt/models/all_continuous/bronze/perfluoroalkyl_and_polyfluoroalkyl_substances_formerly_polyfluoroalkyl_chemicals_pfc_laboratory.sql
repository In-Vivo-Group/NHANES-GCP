SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN WTSB2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSB2YR AS FLOAT64) 
 END as subsample_b_weights, 

CASE
    WHEN LBXPFDE IS NULL THEN NULL 
ELSE SAFE_CAST(LBXPFDE AS FLOAT64) 
 END as perfluorodecanoic_acid_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPFDEL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPFDEL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDPFDEL IS NULL THEN NULL 
ELSE SAFE_CAST(LBDPFDEL AS STRING) 
 END as perfluorodecanoic_acid_comment, 

CASE
    WHEN LBXPFHS IS NULL THEN NULL 
ELSE SAFE_CAST(LBXPFHS AS FLOAT64) 
 END as perfluorohexane_sulfonic_acid_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPFHSL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPFHSL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDPFHSL IS NULL THEN NULL 
ELSE SAFE_CAST(LBDPFHSL AS STRING) 
 END as perfluorohexane_sulfonic_acid_comment, 

CASE
    WHEN LBXMPAH IS NULL THEN NULL 
ELSE SAFE_CAST(LBXMPAH AS FLOAT64) 
 END as lab_2_n_methyl_pfosa_acetate_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDMPAHL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDMPAHL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDMPAHL IS NULL THEN NULL 
ELSE SAFE_CAST(LBDMPAHL AS STRING) 
 END as lab_2_n_methyl_pfosa_acetate_comment, 

CASE
    WHEN LBXPFBS IS NULL THEN NULL 
ELSE SAFE_CAST(LBXPFBS AS FLOAT64) 
 END as perfluorobutane_sulfonic_acid_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPFBSL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPFBSL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDPFBSL IS NULL THEN NULL 
ELSE SAFE_CAST(LBDPFBSL AS STRING) 
 END as perfluorobutane_sulfonic_acid_comment, 

CASE
    WHEN LBXPFHP IS NULL THEN NULL 
ELSE SAFE_CAST(LBXPFHP AS FLOAT64) 
 END as perfluoroheptanoic_acid_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPFHPL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPFHPL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDPFHPL IS NULL THEN NULL 
ELSE SAFE_CAST(LBDPFHPL AS STRING) 
 END as perfluoroheptanoic_acid_comment, 

CASE
    WHEN LBXPFNA IS NULL THEN NULL 
ELSE SAFE_CAST(LBXPFNA AS FLOAT64) 
 END as perfluorononanoic_acid_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPFNAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPFNAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDPFNAL IS NULL THEN NULL 
ELSE SAFE_CAST(LBDPFNAL AS STRING) 
 END as perfluorononanoic_acid_comment, 

CASE
    WHEN LBXPFUA IS NULL THEN NULL 
ELSE SAFE_CAST(LBXPFUA AS FLOAT64) 
 END as perfluoroundecanoic_acid_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPFUAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPFUAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDPFUAL IS NULL THEN NULL 
ELSE SAFE_CAST(LBDPFUAL AS STRING) 
 END as perfluoroundecanoic_acid_comment, 

CASE
    WHEN LBXPFDO IS NULL THEN NULL 
ELSE SAFE_CAST(LBXPFDO AS FLOAT64) 
 END as perfluorododecanoic_acid_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPFDOL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPFDOL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDPFDOL IS NULL THEN NULL 
ELSE SAFE_CAST(LBDPFDOL AS STRING) 
 END as perfluorododecanoic_acid_comment, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_perfluoroalkyl_and_polyfluoroalkyl_substances_formerly_polyfluoroalkyl_chemicals_pfc_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/PFAS_H.htm
*/
