SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN WTSA2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSA2YR AS FLOAT64) 
 END as subsample_a_weights, 

CASE
WHEN LBXEPAH IS NULL THEN NULL 
ELSE SAFE_CAST(LBXEPAH AS FLOAT64) 
 END as lab_2_n_ethyl_pfosa_acetate, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDEPAHL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDEPAHL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDEPAHL IS NULL THEN NULL 
ELSE SAFE_CAST(LBDEPAHL AS STRING) 
 END as lab_2_n_ethyl_pfosa_acetate_comment, 

CASE
WHEN LBXPFDE IS NULL THEN NULL 
ELSE SAFE_CAST(LBXPFDE AS FLOAT64) 
 END as perfluorodecanoic_acid, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPFDEL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPFDEL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDPFDEL IS NULL THEN NULL 
ELSE SAFE_CAST(LBDPFDEL AS STRING) 
 END as perfluorodecanoic_acid_comment, 

CASE
WHEN LBXPFOA IS NULL THEN NULL 
ELSE SAFE_CAST(LBXPFOA AS FLOAT64) 
 END as perfluorooctanoic_acid, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPFOAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPFOAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDPFOAL IS NULL THEN NULL 
ELSE SAFE_CAST(LBDPFOAL AS STRING) 
 END as perfluorooctanoic_acid_comment, 

CASE
WHEN LBXPFOS IS NULL THEN NULL 
ELSE SAFE_CAST(LBXPFOS AS FLOAT64) 
 END as perfluorooctane_sulfonic_acid, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPFOSL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPFOSL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDPFOSL IS NULL THEN NULL 
ELSE SAFE_CAST(LBDPFOSL AS STRING) 
 END as perfluorooctane_sulfonic_acid_comment, 

CASE
WHEN LBXPFHS IS NULL THEN NULL 
ELSE SAFE_CAST(LBXPFHS AS FLOAT64) 
 END as perfluorohexane_sulfonic_acid, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPFHSL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPFHSL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDPFHSL IS NULL THEN NULL 
ELSE SAFE_CAST(LBDPFHSL AS STRING) 
 END as perfluorohexane_sulfonic_acid_comment, 

CASE
WHEN LBXMPAH IS NULL THEN NULL 
ELSE SAFE_CAST(LBXMPAH AS FLOAT64) 
 END as lab_2_n_methyl_pfosa_acetate, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDMPAHL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDMPAHL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDMPAHL IS NULL THEN NULL 
ELSE SAFE_CAST(LBDMPAHL AS STRING) 
 END as lab_2_n_methyl_pfosa_acetate_comment, 

CASE
WHEN LBXPFBS IS NULL THEN NULL 
ELSE SAFE_CAST(LBXPFBS AS FLOAT64) 
 END as perfluorobutane_sulfonic_acid, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPFBSL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPFBSL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDPFBSL IS NULL THEN NULL 
ELSE SAFE_CAST(LBDPFBSL AS STRING) 
 END as perfluorobutane_sulfonic_acid_comment, 

CASE
WHEN LBXPFHP IS NULL THEN NULL 
ELSE SAFE_CAST(LBXPFHP AS FLOAT64) 
 END as perfluoroheptanoic_acid, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPFHPL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPFHPL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDPFHPL IS NULL THEN NULL 
ELSE SAFE_CAST(LBDPFHPL AS STRING) 
 END as perfluoroheptanoic_acid_comment, 

CASE
WHEN LBXPFNA IS NULL THEN NULL 
ELSE SAFE_CAST(LBXPFNA AS FLOAT64) 
 END as perfluorononanoic_acid, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPFNAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPFNAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDPFNAL IS NULL THEN NULL 
ELSE SAFE_CAST(LBDPFNAL AS STRING) 
 END as perfluorononanoic_acid_comment, 

CASE
WHEN LBXPFSA IS NULL THEN NULL 
ELSE SAFE_CAST(LBXPFSA AS FLOAT64) 
 END as perfluorooctane_sulfonamide, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPFSAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPFSAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDPFSAL IS NULL THEN NULL 
ELSE SAFE_CAST(LBDPFSAL AS STRING) 
 END as perfluorooctane_sulfonamide_comment, 

CASE
WHEN LBXPFUA IS NULL THEN NULL 
ELSE SAFE_CAST(LBXPFUA AS FLOAT64) 
 END as perfluoroundecanoic_acid, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPFUAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPFUAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDPFUAL IS NULL THEN NULL 
ELSE SAFE_CAST(LBDPFUAL AS STRING) 
 END as perfluoroundecanoic_acid_comment, 

CASE
WHEN LBXPFDO IS NULL THEN NULL 
ELSE SAFE_CAST(LBXPFDO AS FLOAT64) 
 END as perfluorododecanoic_acid, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPFDOL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPFDOL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDPFDOL IS NULL THEN NULL 
ELSE SAFE_CAST(LBDPFDOL AS STRING) 
 END as perfluorododecanoic_acid_comment, 

CASE
WHEN WTSC2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSC2YR AS FLOAT64) 
 END as two_year_mec_weights_of_subsample_c, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_polyfluoroalkyl_chemicals_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/PFC_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/PFC_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/PFC_E.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/PFC_D.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/L24PFC_C.htm
*/
