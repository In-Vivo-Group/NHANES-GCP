SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN WTSPH2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPH2YR AS FLOAT64) 
 END as phthalate_subsample_2_year_mec_weight, 

CASE
    WHEN WTSPH4YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPH4YR AS FLOAT64) 
 END as phthalate_subsample_4_year_mec_weight, 

CASE
    WHEN URXMBP IS NULL THEN NULL 
ELSE SAFE_CAST(URXMBP AS FLOAT64) 
 END as mono_n_butyl_phthalate_ng_ml, 

CASE
    WHEN URXMCP IS NULL THEN NULL 
ELSE SAFE_CAST(URXMCP AS FLOAT64) 
 END as mono_cyclohexyl_phthalate_ng_ml, 

CASE
    WHEN URXMEP IS NULL THEN NULL 
ELSE SAFE_CAST(URXMEP AS FLOAT64) 
 END as mono_ethyl_phthalate_ng_ml, 

CASE
    WHEN URXMHP IS NULL THEN NULL 
ELSE SAFE_CAST(URXMHP AS FLOAT64) 
 END as mono_2_ethyl_hexyl_phthalate_ng_ml, 

CASE
    WHEN URXMNP IS NULL THEN NULL 
ELSE SAFE_CAST(URXMNP AS FLOAT64) 
 END as mono_isononyl_phthalate_ng_ml, 

CASE
    WHEN URXMOP IS NULL THEN NULL 
ELSE SAFE_CAST(URXMOP AS FLOAT64) 
 END as mono_n_octyl_phthalate_ng_ml, 

CASE
    WHEN URXMZP IS NULL THEN NULL 
ELSE SAFE_CAST(URXMZP AS FLOAT64) 
 END as mono_benzyl_phthalate_ng_ml, 

CASE
    WHEN URXMNM IS NULL THEN NULL 
ELSE SAFE_CAST(URXMNM AS FLOAT64) 
 END as mono_n_methyl_phthalate, 

CASE
    WHEN URXMC1 IS NULL THEN NULL 
ELSE SAFE_CAST(URXMC1 AS FLOAT64) 
 END as mono_3_carboxypropyl_phthalate, 

CASE
    WHEN URXMHH IS NULL THEN NULL 
ELSE SAFE_CAST(URXMHH AS FLOAT64) 
 END as mono_2_ethyl_5_hydroxyhexyl_phthalate, 

CASE
    WHEN URXMOH IS NULL THEN NULL 
ELSE SAFE_CAST(URXMOH AS FLOAT64) 
 END as mono_2_ethyl_5_oxohexyl_phthalate, 

CASE
    WHEN URXMIB IS NULL THEN NULL 
ELSE SAFE_CAST(URXMIB AS FLOAT64) 
 END as mono_isobutyl_pthalate, 

CASE
    WHEN URXDAZ IS NULL THEN NULL 
ELSE SAFE_CAST(URXDAZ AS FLOAT64) 
 END as daidzein_ng_ml, 

CASE
    WHEN URXDMA IS NULL THEN NULL 
ELSE SAFE_CAST(URXDMA AS FLOAT64) 
 END as o_desmethylangolensin_o_dma_ng_ml, 

CASE
    WHEN URXEQU IS NULL THEN NULL 
ELSE SAFE_CAST(URXEQU AS FLOAT64) 
 END as equol_ng_ml, 

CASE
    WHEN URXETD IS NULL THEN NULL 
ELSE SAFE_CAST(URXETD AS FLOAT64) 
 END as enterodiol_ng_ml, 

CASE
    WHEN URXETL IS NULL THEN NULL 
ELSE SAFE_CAST(URXETL AS FLOAT64) 
 END as enterolactone_ng_ml, 

CASE
    WHEN URXGNS IS NULL THEN NULL 
ELSE SAFE_CAST(URXGNS AS FLOAT64) 
 END as genistein_ng_ml, 

CASE
    WHEN URXP01 IS NULL THEN NULL 
ELSE SAFE_CAST(URXP01 AS FLOAT64) 
 END as lab_1_napthol, 

CASE
    WHEN URXP02 IS NULL THEN NULL 
ELSE SAFE_CAST(URXP02 AS FLOAT64) 
 END as lab_2_napthol, 

CASE
    WHEN URXP03 IS NULL THEN NULL 
ELSE SAFE_CAST(URXP03 AS FLOAT64) 
 END as lab_3_fluorene_ng_l, 

CASE
    WHEN URXP04 IS NULL THEN NULL 
ELSE SAFE_CAST(URXP04 AS FLOAT64) 
 END as lab_2_fluorene_ng_l, 

CASE
    WHEN URXP05 IS NULL THEN NULL 
ELSE SAFE_CAST(URXP05 AS FLOAT64) 
 END as lab_3_phenanthrene_ng_l, 

CASE
    WHEN URXP06 IS NULL THEN NULL 
ELSE SAFE_CAST(URXP06 AS FLOAT64) 
 END as lab_1_phenanthrene_ng_l, 

CASE
    WHEN URXP07 IS NULL THEN NULL 
ELSE SAFE_CAST(URXP07 AS FLOAT64) 
 END as lab_2_phenanthrene_ng_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URXP09 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3.5 AS FLOAT64),0) AS INT64) THEN '3.5' -- categorize numeric values
WHEN URXP09 IS NULL THEN NULL 
ELSE SAFE_CAST(URXP09 AS STRING) 
 END as lab_3_fluoranthene_ng_l, 

CASE
    WHEN URXP10 IS NULL THEN NULL 
ELSE SAFE_CAST(URXP10 AS FLOAT64) 
 END as lab_1_pyrene_ng_l, 

CASE
    WHEN URXUCR IS NULL THEN NULL 
ELSE SAFE_CAST(URXUCR AS FLOAT64) 
 END as creatinine_urine_mg_dl, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_phthalates_phytoestrogens_pahs_urine_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/PHPYPA_B.htm
*/
