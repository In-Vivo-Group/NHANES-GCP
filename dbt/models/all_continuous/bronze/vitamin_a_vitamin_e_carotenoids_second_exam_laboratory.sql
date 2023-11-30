SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN LB2DAY IS NULL THEN NULL 
ELSE SAFE_CAST(LB2DAY AS FLOAT64) 
 END as days_between_1st_and_2nd_exam, 

CASE
    WHEN LB2ALC IS NULL THEN NULL 
ELSE SAFE_CAST(LB2ALC AS FLOAT64) 
 END as alpha_carotene_ug_dl, 

CASE
    WHEN LB2ALCSI IS NULL THEN NULL 
ELSE SAFE_CAST(LB2ALCSI AS FLOAT64) 
 END as alpha_carotene_umol_l, 

CASE
    WHEN LB2BEC IS NULL THEN NULL 
ELSE SAFE_CAST(LB2BEC AS FLOAT64) 
 END as trans_beta_carotene_ug_dl, 

CASE
    WHEN LB2BECSI IS NULL THEN NULL 
ELSE SAFE_CAST(LB2BECSI AS FLOAT64) 
 END as trans_beta_carotene_umol_l, 

CASE
    WHEN LB2CBC IS NULL THEN NULL 
ELSE SAFE_CAST(LB2CBC AS FLOAT64) 
 END as cis_beta_carotene_ug_dl, 

CASE
    WHEN LB2CBCSI IS NULL THEN NULL 
ELSE SAFE_CAST(LB2CBCSI AS FLOAT64) 
 END as cis_beta_carotene_umol_l, 

CASE
    WHEN LB2CRY IS NULL THEN NULL 
ELSE SAFE_CAST(LB2CRY AS FLOAT64) 
 END as beta_cryptoxanthin_ug_dl, 

CASE
    WHEN LB2CRYSI IS NULL THEN NULL 
ELSE SAFE_CAST(LB2CRYSI AS FLOAT64) 
 END as beta_cryptoxanthin_umol_l, 

CASE
    WHEN LB2GTC IS NULL THEN NULL 
ELSE SAFE_CAST(LB2GTC AS FLOAT64) 
 END as gamma_tocopherol_ug_dl, 

CASE
    WHEN LB2GTCSI IS NULL THEN NULL 
ELSE SAFE_CAST(LB2GTCSI AS FLOAT64) 
 END as gamma_tocopherol_umol_l, 

CASE
    WHEN LB2LUZ IS NULL THEN NULL 
ELSE SAFE_CAST(LB2LUZ AS FLOAT64) 
 END as combined_lutein_zeaxanthin_ug_dl, 

CASE
    WHEN LB2LUZSI IS NULL THEN NULL 
ELSE SAFE_CAST(LB2LUZSI AS FLOAT64) 
 END as combined_lutein_zeaxanthin_umol_l, 

CASE
    WHEN LB2LYC IS NULL THEN NULL 
ELSE SAFE_CAST(LB2LYC AS FLOAT64) 
 END as trans_lycopene_ug_dl, 

CASE
    WHEN LB2LYCSI IS NULL THEN NULL 
ELSE SAFE_CAST(LB2LYCSI AS FLOAT64) 
 END as trans_lycopene_umol_l, 

CASE
    WHEN LB2RPL IS NULL THEN NULL 
ELSE SAFE_CAST(LB2RPL AS FLOAT64) 
 END as retinyl_palmitate_ug_dl, 

CASE
    WHEN LB2RPLSI IS NULL THEN NULL 
ELSE SAFE_CAST(LB2RPLSI AS FLOAT64) 
 END as retinyl_palmitate_umol_l, 

CASE
    WHEN LB2RST IS NULL THEN NULL 
ELSE SAFE_CAST(LB2RST AS FLOAT64) 
 END as retinyl_stearate_ug_dl, 

CASE
    WHEN LB2RSTSI IS NULL THEN NULL 
ELSE SAFE_CAST(LB2RSTSI AS FLOAT64) 
 END as retinyl_stearate_umol_l, 

CASE
    WHEN LB2VIA IS NULL THEN NULL 
ELSE SAFE_CAST(LB2VIA AS FLOAT64) 
 END as retinol_ug_dl, 

CASE
    WHEN LB2VIASI IS NULL THEN NULL 
ELSE SAFE_CAST(LB2VIASI AS FLOAT64) 
 END as retinol_umol_l, 

CASE
    WHEN LB2VIE IS NULL THEN NULL 
ELSE SAFE_CAST(LB2VIE AS FLOAT64) 
 END as alpha_tocopherol_ug_dl, 

CASE
    WHEN LB2VIESI IS NULL THEN NULL 
ELSE SAFE_CAST(LB2VIESI AS FLOAT64) 
 END as alpha_tocopherol_umol_l, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_vitamin_a_vitamin_e_carotenoids_second_exam_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/VIT_2_B.htm
*/
