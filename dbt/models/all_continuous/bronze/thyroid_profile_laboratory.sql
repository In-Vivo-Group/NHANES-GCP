SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN WTSA2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSA2YR AS FLOAT64) 
 END as subsample_a_weights, 

CASE
    WHEN LBXT3F IS NULL THEN NULL 
ELSE SAFE_CAST(LBXT3F AS FLOAT64) 
 END as triiodothyronine_t3_free_pg_ml, 

CASE
    WHEN LBXT4F IS NULL THEN NULL 
ELSE SAFE_CAST(LBXT4F AS FLOAT64) 
 END as thyroxine_free_ng_dl, 

CASE
    WHEN LBDT4FSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDT4FSI AS FLOAT64) 
 END as thyroxine_free_pmol_l, 

CASE
    WHEN LBXTGN IS NULL THEN NULL 
ELSE SAFE_CAST(LBXTGN AS FLOAT64) 
 END as thyroglobulin_ng_ml, 

CASE
    WHEN LBDTGNSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDTGNSI AS FLOAT64) 
 END as thyroglobulin_ug_l, 

CASE
    WHEN LBXATG IS NULL THEN NULL 
ELSE SAFE_CAST(LBXATG AS FLOAT64) 
 END as thyroglobulin_antibodies_iu_ml, 

CASE
    WHEN LBXTSH1 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXTSH1 AS FLOAT64) 
 END as thyroid_stimulating_hormone_uiu_ml, 

CASE
    WHEN LBDTSH1S IS NULL THEN NULL 
ELSE SAFE_CAST(LBDTSH1S AS FLOAT64) 
 END as thyroid_stimulating_hormone_miu_l, 

CASE
    WHEN LBXTPO IS NULL THEN NULL 
ELSE SAFE_CAST(LBXTPO AS FLOAT64) 
 END as thyroid_perioxidase_antibodies_iu_ml, 

CASE
    WHEN LBXTT3 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXTT3 AS FLOAT64) 
 END as triiodothyronine_t3_total_ng_dl, 

CASE
    WHEN LBDTT3SI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDTT3SI AS FLOAT64) 
 END as triiodothyronine_t3_total_nmol_l, 

CASE
    WHEN LBXTT4 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXTT4 AS FLOAT64) 
 END as thyroxine_total_t4_ug_dl, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_thyroid_profile_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/THYROD_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/THYROD_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/THYROD_E.htm
*/
