SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN WTSSCH2Y IS NULL THEN NULL 
ELSE SAFE_CAST(WTSSCH2Y AS FLOAT64) 
 END as surplus_specimen_c_13_14_2_year_weights, 

CASE
WHEN SSDPHP IS NULL THEN NULL 
ELSE SAFE_CAST(SSDPHP AS FLOAT64) 
 END as diphenyl_phosphate_ug_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSDPHPL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSDPHPL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSDPHPL IS NULL THEN NULL 
ELSE SAFE_CAST(SSDPHPL AS STRING) 
 END as diphenyl_phosphate_cmt_code, 

CASE
WHEN SSBDCPP IS NULL THEN NULL 
ELSE SAFE_CAST(SSBDCPP AS FLOAT64) 
 END as bis_1_3_dichloro_2_propyl_phospht_ug_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSBDCPPL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSBDCPPL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSBDCPPL IS NULL THEN NULL 
ELSE SAFE_CAST(SSBDCPPL AS STRING) 
 END as bis_1_3_dichloro_2_propyl_phosphate_cmt, 

CASE
WHEN SSBCPP IS NULL THEN NULL 
ELSE SAFE_CAST(SSBCPP AS FLOAT64) 
 END as bis_1_chloro_2_propyl_phosphate_ug_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSBCPPL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSBCPPL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSBCPPL IS NULL THEN NULL 
ELSE SAFE_CAST(SSBCPPL AS STRING) 
 END as bis_1_chloro_2_propyl_phosphate_cmt, 

CASE
WHEN SSBCEP IS NULL THEN NULL 
ELSE SAFE_CAST(SSBCEP AS FLOAT64) 
 END as bis_2_chloroethyl_phosphate_ug_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSBCEPL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSBCEPL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSBCEPL IS NULL THEN NULL 
ELSE SAFE_CAST(SSBCEPL AS STRING) 
 END as bis_2_chloroethyl_phosphate_cmt_code, 

CASE
WHEN SSDPCP IS NULL THEN NULL 
ELSE SAFE_CAST(SSDPCP AS FLOAT64) 
 END as di_p_cresyl_phosphate_ug_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSDPCPL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSDPCPL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSDPCPL IS NULL THEN NULL 
ELSE SAFE_CAST(SSDPCPL AS STRING) 
 END as di_p_cresyl_phosphate_cmt_code, 

CASE
WHEN SSDOCP IS NULL THEN NULL 
ELSE SAFE_CAST(SSDOCP AS FLOAT64) 
 END as di_o_cresyl_phosphate_ug_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSDOCPL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSDOCPL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSDOCPL IS NULL THEN NULL 
ELSE SAFE_CAST(SSDOCPL AS STRING) 
 END as di_o_cresyl_phosphate_cmt_code, 

CASE
WHEN SSDBUP IS NULL THEN NULL 
ELSE SAFE_CAST(SSDBUP AS FLOAT64) 
 END as dibutyl_phosphate_ug_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSDBUPL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSDBUPL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSDBUPL IS NULL THEN NULL 
ELSE SAFE_CAST(SSDBUPL AS STRING) 
 END as dibutyl_phosphate_cmt_code, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSDBZP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0.04 AS FLOAT64),0) AS INT64) THEN '0.04' -- categorize numeric values
WHEN SSDBZP IS NULL THEN NULL 
ELSE SAFE_CAST(SSDBZP AS STRING) 
 END as dibenzyl_phosphate_ug_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSDBZPL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSDBZPL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSDBZPL IS NULL THEN NULL 
ELSE SAFE_CAST(SSDBZPL AS STRING) 
 END as dibenzyl_phosphate_cmt_code, 

CASE
WHEN SSTBBA IS NULL THEN NULL 
ELSE SAFE_CAST(SSTBBA AS FLOAT64) 
 END as lab_2_3_4_5_tetrabromobenzoic_acid_ug_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSTBBAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSTBBAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSTBBAL IS NULL THEN NULL 
ELSE SAFE_CAST(SSTBBAL AS STRING) 
 END as lab_2_3_4_5_tetrabromobenzoic_acid_cmt_code, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_flame_retardant_metabolites_urine_surplus_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/SSFLRT_H.htm
*/
