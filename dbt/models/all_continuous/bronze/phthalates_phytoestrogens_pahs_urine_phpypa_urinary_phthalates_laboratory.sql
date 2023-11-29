SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN WTSPH4YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPH4YR AS FLOAT64) 
 END as phthalate_subsample_4_year_mec_weight, 

CASE
WHEN WTSPH2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPH2YR AS FLOAT64) 
 END as phthalate_subsample_2_year_mec_weight, 

CASE
WHEN WTSPH01 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPH01 AS FLOAT64) 
 END as phthalate_mec_weight_jack_knife_rep_01, 

CASE
WHEN WTSPH02 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPH02 AS FLOAT64) 
 END as phthalate_mec_weight_jack_knife_rep_02, 

CASE
WHEN WTSPH03 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPH03 AS FLOAT64) 
 END as phthalate_mec_weight_jack_knife_rep_03, 

CASE
WHEN WTSPH04 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPH04 AS FLOAT64) 
 END as phthalate_mec_weight_jack_knife_rep_04, 

CASE
WHEN WTSPH05 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPH05 AS FLOAT64) 
 END as phthalate_mec_weight_jack_knife_rep_05, 

CASE
WHEN WTSPH06 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPH06 AS FLOAT64) 
 END as phthalate_mec_weight_jack_knife_rep_06, 

CASE
WHEN WTSPH07 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPH07 AS FLOAT64) 
 END as phthalate_mec_weight_jack_knife_rep_07, 

CASE
WHEN WTSPH08 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPH08 AS FLOAT64) 
 END as phthalate_mec_weight_jack_knife_rep_08, 

CASE
WHEN WTSPH09 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPH09 AS FLOAT64) 
 END as phthalate_mec_weight_jack_knife_rep_09, 

CASE
WHEN WTSPH10 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPH10 AS FLOAT64) 
 END as phthalate_mec_weight_jack_knife_rep_10, 

CASE
WHEN WTSPH11 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPH11 AS FLOAT64) 
 END as phthalate_mec_weight_jack_knife_rep_11, 

CASE
WHEN WTSPH12 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPH12 AS FLOAT64) 
 END as phthalate_mec_weight_jack_knife_rep_12, 

CASE
WHEN WTSPH13 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPH13 AS FLOAT64) 
 END as phthalate_mec_weight_jack_knife_rep_13, 

CASE
WHEN WTSPH14 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPH14 AS FLOAT64) 
 END as phthalate_mec_weight_jack_knife_rep_14, 

CASE
WHEN WTSPH15 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPH15 AS FLOAT64) 
 END as phthalate_mec_weight_jack_knife_rep_15, 

CASE
WHEN WTSPH16 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPH16 AS FLOAT64) 
 END as phthalate_mec_weight_jack_knife_rep_16, 

CASE
WHEN WTSPH17 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPH17 AS FLOAT64) 
 END as phthalate_mec_weight_jack_knife_rep_17, 

CASE
WHEN WTSPH18 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPH18 AS FLOAT64) 
 END as phthalate_mec_weight_jack_knife_rep_18, 

CASE
WHEN WTSPH19 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPH19 AS FLOAT64) 
 END as phthalate_mec_weight_jack_knife_rep_19, 

CASE
WHEN WTSPH20 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPH20 AS FLOAT64) 
 END as phthalate_mec_weight_jack_knife_rep_20, 

CASE
WHEN WTSPH21 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPH21 AS FLOAT64) 
 END as phthalate_mec_weight_jack_knife_rep_21, 

CASE
WHEN WTSPH22 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPH22 AS FLOAT64) 
 END as phthalate_mec_weight_jack_knife_rep_22, 

CASE
WHEN WTSPH23 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPH23 AS FLOAT64) 
 END as phthalate_mec_weight_jack_knife_rep_23, 

CASE
WHEN WTSPH24 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPH24 AS FLOAT64) 
 END as phthalate_mec_weight_jack_knife_rep_24, 

CASE
WHEN WTSPH25 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPH25 AS FLOAT64) 
 END as phthalate_mec_weight_jack_knife_rep_25, 

CASE
WHEN WTSPH26 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPH26 AS FLOAT64) 
 END as phthalate_mec_weight_jack_knife_rep_26, 

CASE
WHEN WTSPH27 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPH27 AS FLOAT64) 
 END as phthalate_mec_weight_jack_knife_rep_27, 

CASE
WHEN WTSPH28 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPH28 AS FLOAT64) 
 END as phthalate_mec_weight_jack_knife_rep_28, 

CASE
WHEN WTSPH29 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPH29 AS FLOAT64) 
 END as phthalate_mec_weight_jack_knife_rep_29, 

CASE
WHEN WTSPH30 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPH30 AS FLOAT64) 
 END as phthalate_mec_weight_jack_knife_rep_30, 

CASE
WHEN WTSPH31 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPH31 AS FLOAT64) 
 END as phthalate_mec_weight_jack_knife_rep_31, 

CASE
WHEN WTSPH32 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPH32 AS FLOAT64) 
 END as phthalate_mec_weight_jack_knife_rep_32, 

CASE
WHEN WTSPH33 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPH33 AS FLOAT64) 
 END as phthalate_mec_weight_jack_knife_rep_33, 

CASE
WHEN WTSPH34 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPH34 AS FLOAT64) 
 END as phthalate_mec_weight_jack_knife_rep_34, 

CASE
WHEN WTSPH35 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPH35 AS FLOAT64) 
 END as phthalate_mec_weight_jack_knife_rep_35, 

CASE
WHEN WTSPH36 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPH36 AS FLOAT64) 
 END as phthalate_mec_weight_jack_knife_rep_36, 

CASE
WHEN WTSPH37 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPH37 AS FLOAT64) 
 END as phthalate_mec_weight_jack_knife_rep_37, 

CASE
WHEN WTSPH38 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPH38 AS FLOAT64) 
 END as phthalate_mec_weight_jack_knife_rep_38, 

CASE
WHEN WTSPH39 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPH39 AS FLOAT64) 
 END as phthalate_mec_weight_jack_knife_rep_39, 

CASE
WHEN WTSPH40 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPH40 AS FLOAT64) 
 END as phthalate_mec_weight_jack_knife_rep_40, 

CASE
WHEN WTSPH41 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPH41 AS FLOAT64) 
 END as phthalate_mec_weight_jack_knife_rep_41, 

CASE
WHEN WTSPH42 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPH42 AS FLOAT64) 
 END as phthalate_mec_weight_jack_knife_rep_42, 

CASE
WHEN WTSPH43 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPH43 AS FLOAT64) 
 END as phthalate_mec_weight_jack_knife_rep_43, 

CASE
WHEN WTSPH44 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPH44 AS FLOAT64) 
 END as phthalate_mec_weight_jack_knife_rep_44, 

CASE
WHEN WTSPH45 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPH45 AS FLOAT64) 
 END as phthalate_mec_weight_jack_knife_rep_45, 

CASE
WHEN WTSPH46 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPH46 AS FLOAT64) 
 END as phthalate_mec_weight_jack_knife_rep_46, 

CASE
WHEN WTSPH47 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPH47 AS FLOAT64) 
 END as phthalate_mec_weight_jack_knife_rep_47, 

CASE
WHEN WTSPH48 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPH48 AS FLOAT64) 
 END as phthalate_mec_weight_jack_knife_rep_48, 

CASE
WHEN WTSPH49 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPH49 AS FLOAT64) 
 END as phthalate_mec_weight_jack_knife_rep_49, 

CASE
WHEN WTSPH50 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPH50 AS FLOAT64) 
 END as phthalate_mec_weight_jack_knife_rep_50, 

CASE
WHEN WTSPH51 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPH51 AS FLOAT64) 
 END as phthalate_mec_weight_jack_knife_rep_51, 

CASE
WHEN WTSPH52 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPH52 AS FLOAT64) 
 END as phthalate_mec_weight_jack_knife_rep_52, 

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
WHEN URXP09 IS NULL THEN NULL 
ELSE SAFE_CAST(URXP09 AS FLOAT64) 
 END as lab_3_fluoranthene_ng_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDP09LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Detectable results' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDP09LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below detectable limit' -- categorize numeric values
WHEN URDP09LC IS NULL THEN NULL 
ELSE SAFE_CAST(URDP09LC AS STRING) 
 END as lab_3_fluoranthene_comment_code, 

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
 FROM {{ ref('stg_phthalates_phytoestrogens_pahs_urine_phpypa_urinary_phthalates_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/PHPYPA.htm
*/
