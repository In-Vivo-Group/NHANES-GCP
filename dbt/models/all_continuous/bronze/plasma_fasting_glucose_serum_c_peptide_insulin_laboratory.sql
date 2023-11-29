SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN WTSAF2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSAF2YR AS FLOAT64) 
 END as fasting_subsample_2_year_mec_weight, 

CASE
    WHEN LBXGLU IS NULL THEN NULL 
ELSE SAFE_CAST(LBXGLU AS FLOAT64) 
 END as glucose_plasma_mg_dl, 

CASE
    WHEN LBDGLUSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDGLUSI AS FLOAT64) 
 END as plasma_glucose_si_mmol_l, 

CASE
    WHEN LBXCPSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBXCPSI AS FLOAT64) 
 END as c_peptide_si_nmol_l, 

CASE
    WHEN LBXIN IS NULL THEN NULL 
ELSE SAFE_CAST(LBXIN AS FLOAT64) 
 END as insulin_uu_ml, 

CASE
    WHEN LBDINSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDINSI AS FLOAT64) 
 END as insulin_si_pmol_l, 

CASE
    WHEN WTSAF4YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSAF4YR AS FLOAT64) 
 END as fasting_subsample_4_year_mec_weight, 

CASE
    WHEN LBXGLUSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBXGLUSI AS FLOAT64) 
 END as plasma_glucose_si_mmol_l_LBXGLUSI, 

CASE
    WHEN LBXINSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBXINSI AS FLOAT64) 
 END as insulin_si_pmol_l_LBXINSI, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_plasma_fasting_glucose_serum_c_peptide_insulin_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/L10AM_C.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/L10AM_B.htm
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/LAB10AM.htm
*/
