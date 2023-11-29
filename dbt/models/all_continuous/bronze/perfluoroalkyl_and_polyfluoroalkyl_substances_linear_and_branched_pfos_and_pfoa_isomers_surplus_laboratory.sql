SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN WTSSBH2Y IS NULL THEN NULL 
ELSE SAFE_CAST(WTSSBH2Y AS FLOAT64) 
 END as surplus_specimen_b_13_14_2_year_weights, 

CASE
WHEN SSNPFOA IS NULL THEN NULL 
ELSE SAFE_CAST(SSNPFOA AS FLOAT64) 
 END as linear_perfluorooctanoate_ug_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SDNPFOAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SDNPFOAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SDNPFOAL IS NULL THEN NULL 
ELSE SAFE_CAST(SDNPFOAL AS STRING) 
 END as linear_perfluorooctanoate_comment_code, 

CASE
WHEN SSBPFOA IS NULL THEN NULL 
ELSE SAFE_CAST(SSBPFOA AS FLOAT64) 
 END as br_iso_of_perfluorooctanoate_ug_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SDBPFOAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SDBPFOAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SDBPFOAL IS NULL THEN NULL 
ELSE SAFE_CAST(SDBPFOAL AS STRING) 
 END as br_iso_perfluorooctanoate_comment_code, 

CASE
WHEN SSNPFOS IS NULL THEN NULL 
ELSE SAFE_CAST(SSNPFOS AS FLOAT64) 
 END as linear_perfluorooctane_sulfonate_ug_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SDNPFOSL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SDNPFOSL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SDNPFOSL IS NULL THEN NULL 
ELSE SAFE_CAST(SDNPFOSL AS STRING) 
 END as lin_perfluorooctane_sulfonate_cmt_code, 

CASE
WHEN SSMPFOS IS NULL THEN NULL 
ELSE SAFE_CAST(SSMPFOS AS FLOAT64) 
 END as monomethyl_branched_iso_of_pfos_ug_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SDMPFOSL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SDMPFOSL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SDMPFOSL IS NULL THEN NULL 
ELSE SAFE_CAST(SDMPFOSL AS STRING) 
 END as monomethyl_br_iso_of_pfos_comment_code, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_perfluoroalkyl_and_polyfluoroalkyl_substances_linear_and_branched_pfos_and_pfoa_isomers_surplus_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/SSPFAS_H.htm
*/
