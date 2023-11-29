SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN WTSSPH2Y IS NULL THEN NULL 
ELSE SAFE_CAST(WTSSPH2Y AS FLOAT64) 
 END as sspfac_h_2_year_weights, 

CASE
WHEN SSPFSA IS NULL THEN NULL 
ELSE SAFE_CAST(SSPFSA AS FLOAT64) 
 END as perfluorooctane_sulfonamide_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSPFSAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSPFSAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSPFSAL IS NULL THEN NULL 
ELSE SAFE_CAST(SSPFSAL AS STRING) 
 END as perfluorooctane_sulfonam_cmt_code, 

CASE
WHEN SSMPAH IS NULL THEN NULL 
ELSE SAFE_CAST(SSMPAH AS FLOAT64) 
 END as lab_2_n_methyl_perfluor_sulfon_acid_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSMPAHL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSMPAHL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSMPAHL IS NULL THEN NULL 
ELSE SAFE_CAST(SSMPAHL AS STRING) 
 END as lab_2_n_methyl_perfluor_sulfon_acid_cmt_cd, 

CASE
WHEN SSEPAH IS NULL THEN NULL 
ELSE SAFE_CAST(SSEPAH AS FLOAT64) 
 END as lab_2_n_ethyl_perfluor_sulfon_acid_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSEPAHL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSEPAHL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSEPAHL IS NULL THEN NULL 
ELSE SAFE_CAST(SSEPAHL AS STRING) 
 END as lab_2_n_ethyl_perfluor_sulfon_acid_cmt_cd, 

CASE
WHEN SSPFDE IS NULL THEN NULL 
ELSE SAFE_CAST(SSPFDE AS FLOAT64) 
 END as pefluorodecanoic_acid_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSPFDEL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSPFDEL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSPFDEL IS NULL THEN NULL 
ELSE SAFE_CAST(SSPFDEL AS STRING) 
 END as pefluorodecanoic_acid_cmt_code, 

CASE
WHEN SSPFBS IS NULL THEN NULL 
ELSE SAFE_CAST(SSPFBS AS FLOAT64) 
 END as perfluorobutane_sulfonic_acid_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSPFBSL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSPFBSL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSPFBSL IS NULL THEN NULL 
ELSE SAFE_CAST(SSPFBSL AS STRING) 
 END as perfluorobutane_sulfonic_acid_cmt_code, 

CASE
WHEN SSPFHP IS NULL THEN NULL 
ELSE SAFE_CAST(SSPFHP AS FLOAT64) 
 END as perfluoroheptanoic_acid_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSPFHPL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSPFHPL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSPFHPL IS NULL THEN NULL 
ELSE SAFE_CAST(SSPFHPL AS STRING) 
 END as perfluoroheptanoic_acid_cmt_code, 

CASE
WHEN SSPFNA IS NULL THEN NULL 
ELSE SAFE_CAST(SSPFNA AS FLOAT64) 
 END as perfluorononanoic_acid_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSPFNAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSPFNAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSPFNAL IS NULL THEN NULL 
ELSE SAFE_CAST(SSPFNAL AS STRING) 
 END as perfluorononanoic_acid_cmt_code, 

CASE
WHEN SSPFUA IS NULL THEN NULL 
ELSE SAFE_CAST(SSPFUA AS FLOAT64) 
 END as perfluoroundecanoic_acid_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSPFUAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSPFUAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSPFUAL IS NULL THEN NULL 
ELSE SAFE_CAST(SSPFUAL AS STRING) 
 END as perfluoroundecanoic_acid_cmt_cd, 

CASE
WHEN SSPFDO IS NULL THEN NULL 
ELSE SAFE_CAST(SSPFDO AS FLOAT64) 
 END as perflurododecanoic_acid_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSPFDOL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSPFDOL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSPFDOL IS NULL THEN NULL 
ELSE SAFE_CAST(SSPFDOL AS STRING) 
 END as perflurododecanoic_acid_cmt_code, 

CASE
WHEN SSPFHS IS NULL THEN NULL 
ELSE SAFE_CAST(SSPFHS AS FLOAT64) 
 END as perfluorohexane_sulfonic_acid_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSPFHSL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSPFHSL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSPFHSL IS NULL THEN NULL 
ELSE SAFE_CAST(SSPFHSL AS STRING) 
 END as perfluorohexane_sulfonic_acid_cmt_code, 

CASE
WHEN SSNPFOA IS NULL THEN NULL 
ELSE SAFE_CAST(SSNPFOA AS FLOAT64) 
 END as linear_perfluorooctanoate_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSNPFOAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSNPFOAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSNPFOAL IS NULL THEN NULL 
ELSE SAFE_CAST(SSNPFOAL AS STRING) 
 END as linear_perfluorooctanoate_cmt_code, 

CASE
WHEN SSBPFOA IS NULL THEN NULL 
ELSE SAFE_CAST(SSBPFOA AS FLOAT64) 
 END as branch_isomers_perfluorooctanoate_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSBPFOAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSBPFOAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSBPFOAL IS NULL THEN NULL 
ELSE SAFE_CAST(SSBPFOAL AS STRING) 
 END as branch_isomers_perfluorooctanoate_cmt_cd, 

CASE
WHEN SSNPFOS IS NULL THEN NULL 
ELSE SAFE_CAST(SSNPFOS AS FLOAT64) 
 END as linear_perfluorooctane_sulfonate_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSNPFOSL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSNPFOSL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSNPFOSL IS NULL THEN NULL 
ELSE SAFE_CAST(SSNPFOSL AS STRING) 
 END as linear_perfluorooctane_sulfonate_cmt_cd, 

CASE
WHEN SSMPFOS IS NULL THEN NULL 
ELSE SAFE_CAST(SSMPFOS AS FLOAT64) 
 END as monomethyl_br_isomers_of_pfos_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSMPFOSL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSMPFOSL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSMPFOSL IS NULL THEN NULL 
ELSE SAFE_CAST(SSMPFOSL AS STRING) 
 END as monomethyl_br_isomers_of_pfos_cmt_cd, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_perfluoroalkyl_and_polyfluoroalkyl_substances_in_us_children_3_11_years_of_age_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/SSPFAC_H.htm
*/
