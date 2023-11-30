SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN SSMR1_N IS NULL THEN NULL 
ELSE SAFE_CAST(SSMR1_N AS FLOAT64) 
 END as myristic_acid_micromol_l, 

CASE
    WHEN SSML1_N IS NULL THEN NULL 
ELSE SAFE_CAST(SSML1_N AS FLOAT64) 
 END as myristoleic_acid_micromol_l, 

CASE
    WHEN SSPM1_N IS NULL THEN NULL 
ELSE SAFE_CAST(SSPM1_N AS FLOAT64) 
 END as palmitic_acid_micromol_l, 

CASE
    WHEN SSPL1_N IS NULL THEN NULL 
ELSE SAFE_CAST(SSPL1_N AS FLOAT64) 
 END as palmitoleic_acid_micromol_l, 

CASE
    WHEN SSST1_N IS NULL THEN NULL 
ELSE SAFE_CAST(SSST1_N AS FLOAT64) 
 END as stearic_acid_micromol_l, 

CASE
    WHEN SSOL1_N IS NULL THEN NULL 
ELSE SAFE_CAST(SSOL1_N AS FLOAT64) 
 END as oleic_acid_micromol_l, 

CASE
    WHEN SSVC1_N IS NULL THEN NULL 
ELSE SAFE_CAST(SSVC1_N AS FLOAT64) 
 END as cis_vaccenic_acid_micromol_l, 

CASE
    WHEN SSLNA_N IS NULL THEN NULL 
ELSE SAFE_CAST(SSLNA_N AS FLOAT64) 
 END as linoleic_acid_micromol_l, 

CASE
    WHEN SSGLA_N IS NULL THEN NULL 
ELSE SAFE_CAST(SSGLA_N AS FLOAT64) 
 END as gamma_linolenic_acid_micromol_l, 

CASE
    WHEN SSALN_N IS NULL THEN NULL 
ELSE SAFE_CAST(SSALN_N AS FLOAT64) 
 END as alpha_linolenic_acid_micromol_l, 

CASE
    WHEN SSHGL_N IS NULL THEN NULL 
ELSE SAFE_CAST(SSHGL_N AS FLOAT64) 
 END as homo_gamma_linolenic_acid_micromol_l, 

CASE
    WHEN SSAR1_N IS NULL THEN NULL 
ELSE SAFE_CAST(SSAR1_N AS FLOAT64) 
 END as arachidic_acid_micromol_l, 

CASE
    WHEN SSEN1_N IS NULL THEN NULL 
ELSE SAFE_CAST(SSEN1_N AS FLOAT64) 
 END as eicosenoic_acid_micromol_l, 

CASE
    WHEN SSED1_N IS NULL THEN NULL 
ELSE SAFE_CAST(SSED1_N AS FLOAT64) 
 END as eicosadienoic_acid_micromol_l, 

CASE
    WHEN SSARA_N IS NULL THEN NULL 
ELSE SAFE_CAST(SSARA_N AS FLOAT64) 
 END as arachidonic_acid_micromol_l, 

CASE
    WHEN SSEPA_N IS NULL THEN NULL 
ELSE SAFE_CAST(SSEPA_N AS FLOAT64) 
 END as eicosapentaenoic_acid_micromol_l, 

CASE
    WHEN SSDA1_N IS NULL THEN NULL 
ELSE SAFE_CAST(SSDA1_N AS FLOAT64) 
 END as docosanoic_acid_micromol_l, 

CASE
    WHEN SSDE1_N IS NULL THEN NULL 
ELSE SAFE_CAST(SSDE1_N AS FLOAT64) 
 END as docosenoic_acid_micromol_l, 

CASE
    WHEN SSDTA_N IS NULL THEN NULL 
ELSE SAFE_CAST(SSDTA_N AS FLOAT64) 
 END as docosatetraenoic_acid_micromol_l, 

CASE
    WHEN SSDP6_N IS NULL THEN NULL 
ELSE SAFE_CAST(SSDP6_N AS FLOAT64) 
 END as docosapentaenoic_6_acid_micromol_l, 

CASE
    WHEN SSDP3_N IS NULL THEN NULL 
ELSE SAFE_CAST(SSDP3_N AS FLOAT64) 
 END as docosapentaenoic_3_acid_micromol_l, 

CASE
    WHEN SSDHA_N IS NULL THEN NULL 
ELSE SAFE_CAST(SSDHA_N AS FLOAT64) 
 END as docosahexaenoic_acid_micromol_l, 

CASE
    WHEN SSLG1_N IS NULL THEN NULL 
ELSE SAFE_CAST(SSLG1_N AS FLOAT64) 
 END as lignoceric_acid_micromol_l, 

CASE
    WHEN SSNR1_N IS NULL THEN NULL 
ELSE SAFE_CAST(SSNR1_N AS FLOAT64) 
 END as nervonic_acid_micromol_l, 

CASE
    WHEN WTSAF2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSAF2YR AS FLOAT64) 
 END as lab_2yr_fasting_weights, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_fatty_acids_plasma_surplus_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/SSFA_C.htm
*/
