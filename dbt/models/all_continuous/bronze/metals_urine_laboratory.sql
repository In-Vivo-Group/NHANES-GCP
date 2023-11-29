SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN SAFE_CAST(WTSA2YR AS FLOAT64) = SAFE_CAST(0 AS FLOAT64) THEN NULL --remove no lab specimen samples from data 
WHEN WTSA2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSA2YR AS STRING) 
 END as subsample_a_weights, 

CASE
WHEN URXUBA IS NULL THEN NULL 
ELSE SAFE_CAST(URXUBA AS FLOAT64) 
 END as barium_urine_ug_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUBALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUBALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDUBALC IS NULL THEN NULL 
ELSE SAFE_CAST(URDUBALC AS STRING) 
 END as urinary_barium_comment_code, 

CASE
WHEN URXUCD IS NULL THEN NULL 
ELSE SAFE_CAST(URXUCD AS FLOAT64) 
 END as cadmium_urine_ug_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUCDLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUCDLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDUCDLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDUCDLC AS STRING) 
 END as urinary_cadmium_comment_code, 

CASE
WHEN URXUCO IS NULL THEN NULL 
ELSE SAFE_CAST(URXUCO AS FLOAT64) 
 END as cobalt_urine_ug_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUCOLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUCOLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDUCOLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDUCOLC AS STRING) 
 END as urinary_cobalt_comment_code, 

CASE
WHEN URXUCS IS NULL THEN NULL 
ELSE SAFE_CAST(URXUCS AS FLOAT64) 
 END as cesium_urine_ug_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUCSLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUCSLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDUCSLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDUCSLC AS STRING) 
 END as urinary_cesium_comment_code, 

CASE
WHEN URXUMO IS NULL THEN NULL 
ELSE SAFE_CAST(URXUMO AS FLOAT64) 
 END as molybdenum_urine_ug_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUMOLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUMOLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDUMOLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDUMOLC AS STRING) 
 END as urinary_molybdenum_comment_code, 

CASE
WHEN URXUMN IS NOT NULL THEN SAFE_CAST(URXUMN AS FLOAT64) -- correct wrong data types for numerical data 
WHEN URXUMN IS NULL THEN NULL 
ELSE SAFE_CAST(URXUMN AS FLOAT64) 
 END as manganese_urine_ug_l, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(URDUMNLC AS FLOAT64),0) AS INT64) AS STRING) = '0' THEN 'At or above the detection limit' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(URDUMNLC AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Below lower detection limit' -- categorize string values 
WHEN URDUMNLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDUMNLC AS STRING) 
 END as urinary_mn_comment_code, 

CASE
WHEN URXUPB IS NULL THEN NULL 
ELSE SAFE_CAST(URXUPB AS FLOAT64) 
 END as lead_urine_ug_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUPBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUPBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDUPBLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDUPBLC AS STRING) 
 END as urinary_lead_comment_code, 

CASE
WHEN URXUSB IS NULL THEN NULL 
ELSE SAFE_CAST(URXUSB AS FLOAT64) 
 END as antimony_urine_ug_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUSBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUSBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDUSBLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDUSBLC AS STRING) 
 END as urinary_antimony_comment_code, 

CASE
WHEN URXUSN IS NOT NULL THEN SAFE_CAST(URXUSN AS FLOAT64) -- correct wrong data types for numerical data 
WHEN URXUSN IS NULL THEN NULL 
ELSE SAFE_CAST(URXUSN AS FLOAT64) 
 END as tin_urine_ug_l, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(URDUSNLC AS FLOAT64),0) AS INT64) AS STRING) = '0' THEN 'At or above the detection limit' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(URDUSNLC AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Below lower detection limit' -- categorize string values 
WHEN URDUSNLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDUSNLC AS STRING) 
 END as usn_comment_code, 

CASE
WHEN URXUTL IS NULL THEN NULL 
ELSE SAFE_CAST(URXUTL AS FLOAT64) 
 END as thallium_urine_ug_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUTLLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUTLLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDUTLLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDUTLLC AS STRING) 
 END as urinary_thallium_comment_code, 

CASE
WHEN URXUTU IS NULL THEN NULL 
ELSE SAFE_CAST(URXUTU AS FLOAT64) 
 END as tungsten_urine_ug_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUTULC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUTULC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDUTULC IS NULL THEN NULL 
ELSE SAFE_CAST(URDUTULC AS STRING) 
 END as urinary_tungsten_comment_code, 

CASE
WHEN WTSAPRP IS NOT NULL THEN SAFE_CAST(WTSAPRP AS FLOAT64) -- correct wrong data types for numerical data 
WHEN SAFE_CAST(WTSAPRP AS FLOAT64) = SAFE_CAST(0 AS FLOAT64) THEN NULL --remove no lab specimen samples from data 
WHEN WTSAPRP IS NULL THEN NULL 
ELSE SAFE_CAST(WTSAPRP AS STRING) 
 END as subsample_a_weights_pre_pandemic, 

CASE
WHEN URXUCR IS NULL THEN NULL 
ELSE SAFE_CAST(URXUCR AS FLOAT64) 
 END as creatinine_urine_mg_dl, 

CASE
WHEN URXUSR IS NOT NULL THEN SAFE_CAST(URXUSR AS FLOAT64) -- correct wrong data types for numerical data 
WHEN URXUSR IS NULL THEN NULL 
ELSE SAFE_CAST(URXUSR AS FLOAT64) 
 END as strontium_urine_ug_l, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(URDUSRLC AS FLOAT64),0) AS INT64) AS STRING) = '0' THEN 'At or above the detection limit' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(URDUSRLC AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Below lower detection limit' -- categorize string values 
WHEN URDUSRLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDUSRLC AS STRING) 
 END as strontium_comment_code, 

CASE
WHEN URXUUR IS NULL THEN NULL 
ELSE SAFE_CAST(URXUUR AS FLOAT64) 
 END as uranium_urinary_ug_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUURLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUURLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDUURLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDUURLC AS STRING) 
 END as urinary_uranium_comment_code, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URXUBE AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0.051 AS FLOAT64),0) AS INT64) THEN '0.051' -- categorize numeric values
WHEN URXUBE IS NULL THEN NULL 
ELSE SAFE_CAST(URXUBE AS STRING) 
 END as beryllium_urine_ug_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUBELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUBELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDUBELC IS NULL THEN NULL 
ELSE SAFE_CAST(URDUBELC AS STRING) 
 END as urinary_beryllium_comment_code, 

CASE
WHEN URXUPT IS NULL THEN NULL 
ELSE SAFE_CAST(URXUPT AS FLOAT64) 
 END as platinum_urine_ug_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUPTLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUPTLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDUPTLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDUPTLC AS STRING) 
 END as urinary_platinum_comment_code, 

CASE
WHEN WTSHM2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSHM2YR AS FLOAT64) 
 END as heavy_metal_subsample_2_year_mec_weight, 

CASE
WHEN WTSHM4YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSHM4YR AS FLOAT64) 
 END as heavy_metal_subsample_4_year_mec_weight, 

CASE
WHEN URDUCD IS NULL THEN NULL 
ELSE SAFE_CAST(URDUCD AS FLOAT64) 
 END as cadmium_urine_ng_ml_URDUCD, 

CASE
WHEN WTSHM01 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSHM01 AS FLOAT64) 
 END as heavy_metal_mec_weight_jack_knife_rep_01, 

CASE
WHEN WTSHM02 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSHM02 AS FLOAT64) 
 END as heavy_metal_mec_weight_jack_knife_rep_02, 

CASE
WHEN WTSHM03 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSHM03 AS FLOAT64) 
 END as heavy_metal_mec_weight_jack_knife_rep_03, 

CASE
WHEN WTSHM04 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSHM04 AS FLOAT64) 
 END as heavy_metal_mec_weight_jack_knife_rep_04, 

CASE
WHEN WTSHM05 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSHM05 AS FLOAT64) 
 END as heavy_metal_mec_weight_jack_knife_rep_05, 

CASE
WHEN WTSHM06 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSHM06 AS FLOAT64) 
 END as heavy_metal_mec_weight_jack_knife_rep_06, 

CASE
WHEN WTSHM07 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSHM07 AS FLOAT64) 
 END as heavy_metal_mec_weight_jack_knife_rep_07, 

CASE
WHEN WTSHM08 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSHM08 AS FLOAT64) 
 END as heavy_metal_mec_weight_jack_knife_rep_08, 

CASE
WHEN WTSHM09 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSHM09 AS FLOAT64) 
 END as heavy_metal_mec_weight_jack_knife_rep_09, 

CASE
WHEN WTSHM10 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSHM10 AS FLOAT64) 
 END as heavy_metal_mec_weight_jack_knife_rep_10, 

CASE
WHEN WTSHM11 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSHM11 AS FLOAT64) 
 END as heavy_metal_mec_weight_jack_knife_rep_11, 

CASE
WHEN WTSHM12 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSHM12 AS FLOAT64) 
 END as heavy_metal_mec_weight_jack_knife_rep_12, 

CASE
WHEN WTSHM13 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSHM13 AS FLOAT64) 
 END as heavy_metal_mec_weight_jack_knife_rep_13, 

CASE
WHEN WTSHM14 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSHM14 AS FLOAT64) 
 END as heavy_metal_mec_weight_jack_knife_rep_14, 

CASE
WHEN WTSHM15 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSHM15 AS FLOAT64) 
 END as heavy_metal_mec_weight_jack_knife_rep_15, 

CASE
WHEN WTSHM16 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSHM16 AS FLOAT64) 
 END as heavy_metal_mec_weight_jack_knife_rep_16, 

CASE
WHEN WTSHM17 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSHM17 AS FLOAT64) 
 END as heavy_metal_mec_weight_jack_knife_rep_17, 

CASE
WHEN WTSHM18 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSHM18 AS FLOAT64) 
 END as heavy_metal_mec_weight_jack_knife_rep_18, 

CASE
WHEN WTSHM19 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSHM19 AS FLOAT64) 
 END as heavy_metal_mec_weight_jack_knife_rep_19, 

CASE
WHEN WTSHM20 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSHM20 AS FLOAT64) 
 END as heavy_metal_mec_weight_jack_knife_rep_20, 

CASE
WHEN WTSHM21 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSHM21 AS FLOAT64) 
 END as heavy_metal_mec_weight_jack_knife_rep_21, 

CASE
WHEN WTSHM22 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSHM22 AS FLOAT64) 
 END as heavy_metal_mec_weight_jack_knife_rep_22, 

CASE
WHEN WTSHM23 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSHM23 AS FLOAT64) 
 END as heavy_metal_mec_weight_jack_knife_rep_23, 

CASE
WHEN WTSHM24 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSHM24 AS FLOAT64) 
 END as heavy_metal_mec_weight_jack_knife_rep_24, 

CASE
WHEN WTSHM25 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSHM25 AS FLOAT64) 
 END as heavy_metal_mec_weight_jack_knife_rep_25, 

CASE
WHEN WTSHM26 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSHM26 AS FLOAT64) 
 END as heavy_metal_mec_weight_jack_knife_rep_26, 

CASE
WHEN WTSHM27 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSHM27 AS FLOAT64) 
 END as heavy_metal_mec_weight_jack_knife_rep_27, 

CASE
WHEN WTSHM28 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSHM28 AS FLOAT64) 
 END as heavy_metal_mec_weight_jack_knife_rep_28, 

CASE
WHEN WTSHM29 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSHM29 AS FLOAT64) 
 END as heavy_metal_mec_weight_jack_knife_rep_29, 

CASE
WHEN WTSHM30 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSHM30 AS FLOAT64) 
 END as heavy_metal_mec_weight_jack_knife_rep_30, 

CASE
WHEN WTSHM31 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSHM31 AS FLOAT64) 
 END as heavy_metal_mec_weight_jack_knife_rep_31, 

CASE
WHEN WTSHM32 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSHM32 AS FLOAT64) 
 END as heavy_metal_mec_weight_jack_knife_rep_32, 

CASE
WHEN WTSHM33 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSHM33 AS FLOAT64) 
 END as heavy_metal_mec_weight_jack_knife_rep_33, 

CASE
WHEN WTSHM34 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSHM34 AS FLOAT64) 
 END as heavy_metal_mec_weight_jack_knife_rep_34, 

CASE
WHEN WTSHM35 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSHM35 AS FLOAT64) 
 END as heavy_metal_mec_weight_jack_knife_rep_35, 

CASE
WHEN WTSHM36 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSHM36 AS FLOAT64) 
 END as heavy_metal_mec_weight_jack_knife_rep_36, 

CASE
WHEN WTSHM37 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSHM37 AS FLOAT64) 
 END as heavy_metal_mec_weight_jack_knife_rep_37, 

CASE
WHEN WTSHM38 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSHM38 AS FLOAT64) 
 END as heavy_metal_mec_weight_jack_knife_rep_38, 

CASE
WHEN WTSHM39 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSHM39 AS FLOAT64) 
 END as heavy_metal_mec_weight_jack_knife_rep_39, 

CASE
WHEN WTSHM40 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSHM40 AS FLOAT64) 
 END as heavy_metal_mec_weight_jack_knife_rep_40, 

CASE
WHEN WTSHM41 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSHM41 AS FLOAT64) 
 END as heavy_metal_mec_weight_jack_knife_rep_41, 

CASE
WHEN WTSHM42 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSHM42 AS FLOAT64) 
 END as heavy_metal_mec_weight_jack_knife_rep_42, 

CASE
WHEN WTSHM43 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSHM43 AS FLOAT64) 
 END as heavy_metal_mec_weight_jack_knife_rep_43, 

CASE
WHEN WTSHM44 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSHM44 AS FLOAT64) 
 END as heavy_metal_mec_weight_jack_knife_rep_44, 

CASE
WHEN WTSHM45 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSHM45 AS FLOAT64) 
 END as heavy_metal_mec_weight_jack_knife_rep_45, 

CASE
WHEN WTSHM46 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSHM46 AS FLOAT64) 
 END as heavy_metal_mec_weight_jack_knife_rep_46, 

CASE
WHEN WTSHM47 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSHM47 AS FLOAT64) 
 END as heavy_metal_mec_weight_jack_knife_rep_47, 

CASE
WHEN WTSHM48 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSHM48 AS FLOAT64) 
 END as heavy_metal_mec_weight_jack_knife_rep_48, 

CASE
WHEN WTSHM49 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSHM49 AS FLOAT64) 
 END as heavy_metal_mec_weight_jack_knife_rep_49, 

CASE
WHEN WTSHM50 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSHM50 AS FLOAT64) 
 END as heavy_metal_mec_weight_jack_knife_rep_50, 

CASE
WHEN WTSHM51 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSHM51 AS FLOAT64) 
 END as heavy_metal_mec_weight_jack_knife_rep_51, 

CASE
WHEN WTSHM52 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSHM52 AS FLOAT64) 
 END as heavy_metal_mec_weight_jack_knife_rep_52, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_metals_urine_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/UM_J.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_UM.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/UM_H.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/UHM_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/UHM_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/UHM_E.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/UHM_D.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/L06HM_C.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/L06HM_B.htm
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/LAB06HM.htm
*/
