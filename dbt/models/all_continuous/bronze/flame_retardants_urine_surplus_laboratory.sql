SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN WTSSBI2Y IS NULL THEN NULL 
ELSE SAFE_CAST(WTSSBI2Y AS FLOAT64) 
 END as surplus_specimen_b_15_16_2_year_weights, 

CASE
    WHEN SSDPHP IS NULL THEN NULL 
ELSE SAFE_CAST(SSDPHP AS FLOAT64) 
 END as diphenyl_phosphate_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SSDPHPL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSDPHPL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSDPHPL IS NULL THEN NULL 
ELSE SAFE_CAST(SSDPHPL AS STRING) 
 END as diphenyl_phosphate_ug_l_cmt_code, 

CASE
    WHEN SSBDCPP IS NULL THEN NULL 
ELSE SAFE_CAST(SSBDCPP AS FLOAT64) 
 END as bis_1_3_dichloro_2_propyl_phos_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SSBDCPPL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSBDCPPL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSBDCPPL IS NULL THEN NULL 
ELSE SAFE_CAST(SSBDCPPL AS STRING) 
 END as bis_1_3dichloro_2propyl_phos_ug_l_cmt_cd, 

CASE
    WHEN SSBCPP IS NULL THEN NULL 
ELSE SAFE_CAST(SSBCPP AS FLOAT64) 
 END as bis_1_chloro_2_propyl_phosphate_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SSBCPPL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSBCPPL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSBCPPL IS NULL THEN NULL 
ELSE SAFE_CAST(SSBCPPL AS STRING) 
 END as bis_1chloro_2propyl_phosp_ug_l_cmt_cd, 

CASE
    WHEN SSBCEP IS NULL THEN NULL 
ELSE SAFE_CAST(SSBCEP AS FLOAT64) 
 END as bis_2_chloroethyl_phosphate_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SSBCEPL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSBCEPL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSBCEPL IS NULL THEN NULL 
ELSE SAFE_CAST(SSBCEPL AS STRING) 
 END as bis_2_chloroethyl_phosphate_ug_l_cmt_cd, 

CASE
    WHEN SSDCP IS NULL THEN NULL 
ELSE SAFE_CAST(SSDCP AS FLOAT64) 
 END as di_cresyl_phosphates_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SSDCPL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSDCPL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSDCPL IS NULL THEN NULL 
ELSE SAFE_CAST(SSDCPL AS STRING) 
 END as di_cresyl_phosphates_ug_l_cmt_code, 

CASE
    WHEN SSDBUP IS NULL THEN NULL 
ELSE SAFE_CAST(SSDBUP AS FLOAT64) 
 END as dibutyl_phosphate_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SSDBUPL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSDBUPL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSDBUPL IS NULL THEN NULL 
ELSE SAFE_CAST(SSDBUPL AS STRING) 
 END as dibutyl_phosphate_ug_l_cmt_code, 

CASE
    WHEN SSDBZP IS NULL THEN NULL 
ELSE SAFE_CAST(SSDBZP AS FLOAT64) 
 END as dibenzyl_phosphate_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SSDBZPL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSDBZPL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSDBZPL IS NULL THEN NULL 
ELSE SAFE_CAST(SSDBZPL AS STRING) 
 END as dibenzyl_phosphate_ug_l_cmt_code, 

CASE
    WHEN SSTBBA IS NULL THEN NULL 
ELSE SAFE_CAST(SSTBBA AS FLOAT64) 
 END as lab_2_3_4_5_tetrabromobenzoic_acid_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SSTBBAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSTBBAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSTBBAL IS NULL THEN NULL 
ELSE SAFE_CAST(SSTBBAL AS STRING) 
 END as lab_2_3_4_5tetrabromobenzoicacid_ug_l_cmt_cd, 

CASE
    WHEN SSIPPP IS NULL THEN NULL 
ELSE SAFE_CAST(SSIPPP AS FLOAT64) 
 END as lab_2_isopropyl_phenyl_phenyl_phosphateug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SSIPPPL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSIPPPL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN '1 Below lower detection limit' -- categorize numeric values
WHEN SSIPPPL IS NULL THEN NULL 
ELSE SAFE_CAST(SSIPPPL AS STRING) 
 END as lab_2_isopropyl_phenyl_phenyl_phosphate_cd, 

CASE
    WHEN SSBPPP IS NULL THEN NULL 
ELSE SAFE_CAST(SSBPPP AS FLOAT64) 
 END as lab_4_tert_butyl_phenyl_phenyl_phosphateug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SSBPPPL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSBPPPL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSBPPPL IS NULL THEN NULL 
ELSE SAFE_CAST(SSBPPPL AS STRING) 
 END as lab_4_tert_butyl_phenyl_phenyl_phosphate_cd, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_flame_retardants_urine_surplus_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/SSFR_I.htm
*/
