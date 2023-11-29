SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN SSTESTO IS NULL THEN NULL 
ELSE SAFE_CAST(SSTESTO AS FLOAT64) 
 END as testosterone_ng_ml, 

CASE
WHEN SSSHBG IS NULL THEN NULL 
ELSE SAFE_CAST(SSSHBG AS FLOAT64) 
 END as sex_hormone_binding_globulin_nmol_l, 

CASE
WHEN SSSE2 IS NULL THEN NULL 
ELSE SAFE_CAST(SSSE2 AS FLOAT64) 
 END as estradiol_pg_ml, 

CASE
WHEN SS3ADLG IS NULL THEN NULL 
ELSE SAFE_CAST(SS3ADLG AS FLOAT64) 
 END as androstanedione_glucuronide_ng_ml, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_sex_steroid_hormone_men_surplus_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/SSCHL_C.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/SSCHL_B.htm
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/SSCHL_A.htm
*/
