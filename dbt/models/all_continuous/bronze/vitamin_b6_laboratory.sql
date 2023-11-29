SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN LBX4PA IS NULL THEN NULL 
ELSE SAFE_CAST(LBX4PA AS FLOAT64) 
 END as lab_4_pyridoxic_acid_nmol_l, 

CASE
    WHEN LBXPLP IS NULL THEN NULL 
ELSE SAFE_CAST(LBXPLP AS FLOAT64) 
 END as pyridoxal_5_phosphate_nmol_l, 

CASE
    WHEN LBXVB6 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVB6 AS FLOAT64) 
 END as vitamin_b6_pyridoxal_5_phosphate_nmol_l, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_vitamin_b6_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/VIT_B6_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/VIT_B6_E.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/VIT_B6_D.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/L43_C.htm
*/
