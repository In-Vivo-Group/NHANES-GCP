SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN REPLACE(SSIMP,'.0','') = 'PEL_Impression' THEN 'Value was recorded' -- categorize string values 
WHEN SSIMP IS NULL THEN NULL 
ELSE SAFE_CAST(SSIMP AS STRING) 
 END as pel_impression, 

CASE
    WHEN REPLACE(SSRES,'.0','') = 'IF_Result' THEN 'Value was recorded' -- categorize string values 
WHEN SSRES IS NULL THEN NULL 
ELSE SAFE_CAST(SSRES AS STRING) 
 END as if_result, 

CASE
    WHEN SSSPIKE IS NULL THEN NULL 
ELSE SAFE_CAST(SSSPIKE AS FLOAT64) 
 END as size_of_peak_if_available, 

CASE
    WHEN REPLACE(SSSPIKE2,'.0','') = '0.5' THEN '0.5' -- categorize string values 
WHEN REPLACE(SSSPIKE2,'.0','') = '0.7' THEN '0.7' -- categorize string values 
WHEN REPLACE(SSSPIKE2,'.0','') = '2' THEN '2' -- categorize string values 
WHEN SSSPIKE2 IS NULL THEN NULL 
ELSE SAFE_CAST(SSSPIKE2 AS STRING) 
 END as size_of_2nd_peak_if_available, 

CASE
    WHEN SSTOTAL IS NULL THEN NULL 
ELSE SAFE_CAST(SSTOTAL AS FLOAT64) 
 END as total_protein, 

CASE
    WHEN SSALB IS NULL THEN NULL 
ELSE SAFE_CAST(SSALB AS FLOAT64) 
 END as albumin, 

CASE
    WHEN SSA1 IS NULL THEN NULL 
ELSE SAFE_CAST(SSA1 AS FLOAT64) 
 END as alpha1, 

CASE
    WHEN SSA2 IS NULL THEN NULL 
ELSE SAFE_CAST(SSA2 AS FLOAT64) 
 END as alpha2, 

CASE
    WHEN SSBETA IS NULL THEN NULL 
ELSE SAFE_CAST(SSBETA AS FLOAT64) 
 END as beta, 

CASE
    WHEN SSGAM IS NULL THEN NULL 
ELSE SAFE_CAST(SSGAM AS FLOAT64) 
 END as gamma, 

CASE
    WHEN SSAG_R IS NULL THEN NULL 
ELSE SAFE_CAST(SSAG_R AS FLOAT64) 
 END as albumin_gamma, 

CASE
    WHEN SSK_FLC IS NULL THEN NULL 
ELSE SAFE_CAST(SSK_FLC AS FLOAT64) 
 END as kappa_flc, 

CASE
    WHEN SSL_FLC IS NULL THEN NULL 
ELSE SAFE_CAST(SSL_FLC AS FLOAT64) 
 END as lambda_flc, 

CASE
    WHEN SSKL_R IS NULL THEN NULL 
ELSE SAFE_CAST(SSKL_R AS FLOAT64) 
 END as k_l_ratio, 

CASE
    WHEN REPLACE(SSK_FLCX,'.0','') = '<0.534' THEN '<0.534' -- categorize string values 
WHEN SSK_FLCX IS NULL THEN NULL 
ELSE SAFE_CAST(SSK_FLCX AS STRING) 
 END as denotes_imprecise_kappa_n_2, 

CASE
    WHEN REPLACE(SSKL_RX,'.0','') = '<0.3256' THEN '<0.3256' -- categorize string values 
WHEN SSKL_RX IS NULL THEN NULL 
ELSE SAFE_CAST(SSKL_RX AS STRING) 
 END as denotes_imprecise_k_l_n_2, 

CASE
    WHEN REPLACE(SSIS,'.0','') = '1' THEN '1' -- categorize string values 
WHEN SSIS IS NULL THEN NULL 
ELSE SAFE_CAST(SSIS AS STRING) 
 END as flag_insufficient_sample, 

CASE
    WHEN SSTTGV IS NULL THEN NULL 
ELSE SAFE_CAST(SSTTGV AS FLOAT64) 
 END as ttg_iga_value, 

CASE
    WHEN REPLACE(SSTTGR,'.0','') = 'NEG' THEN 'NEG' -- categorize string values 
WHEN REPLACE(SSTTGR,'.0','') = 'POS' THEN 'POS' -- categorize string values 
WHEN REPLACE(SSTTGR,'.0','') = 'WKPOS' THEN 'WKPOS' -- categorize string values 
WHEN SSTTGR IS NULL THEN NULL 
ELSE SAFE_CAST(SSTTGR AS STRING) 
 END as ttg_iga_result, 

CASE
    WHEN REPLACE(SSEMA,'.0','') = 'NA' THEN 'NA' -- categorize string values 
WHEN REPLACE(SSEMA,'.0','') = 'NEG' THEN 'NEG' -- categorize string values 
WHEN REPLACE(SSEMA,'.0','') = 'POS' THEN 'POS' -- categorize string values 
WHEN SSEMA IS NULL THEN NULL 
ELSE SAFE_CAST(SSEMA AS STRING) 
 END as ema_result, 

CASE
    WHEN REPLACE(SSSERO,'.0','') = 'IND' THEN 'IND' -- categorize string values 
WHEN REPLACE(SSSERO,'.0','') = 'NEG' THEN 'NEG' -- categorize string values 
WHEN REPLACE(SSSERO,'.0','') = 'POS' THEN 'POS' -- categorize string values 
WHEN SSSERO IS NULL THEN NULL 
ELSE SAFE_CAST(SSSERO AS STRING) 
 END as serology_result_associated_with_cd, 

CASE
    WHEN REPLACE(SSOL_H,'.0','') = 'A' THEN 'IgA' -- categorize string values 
WHEN REPLACE(SSOL_H,'.0','') = 'BI' THEN 'Biclonal' -- categorize string values 
WHEN REPLACE(SSOL_H,'.0','') = 'G' THEN 'IgG' -- categorize string values 
WHEN REPLACE(SSOL_H,'.0','') = 'M' THEN 'IgM' -- categorize string values 
WHEN SSOL_H IS NULL THEN NULL 
ELSE SAFE_CAST(SSOL_H AS STRING) 
 END as heavy_chain_mgus, 

CASE
    WHEN REPLACE(SSOL_L,'.0','') = 'BI' THEN 'Biclonal' -- categorize string values 
WHEN REPLACE(SSOL_L,'.0','') = 'K' THEN 'Kappa' -- categorize string values 
WHEN REPLACE(SSOL_L,'.0','') = 'L' THEN 'Lambda' -- categorize string values 
WHEN SSOL_L IS NULL THEN NULL 
ELSE SAFE_CAST(SSOL_L AS STRING) 
 END as light_chain_mgus, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_monoclonal_gammopathy_of_undetermined_significance_mgus_surplus_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/SSOL_C.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/SSOL_B.htm
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/SSOL_A.htm
*/
