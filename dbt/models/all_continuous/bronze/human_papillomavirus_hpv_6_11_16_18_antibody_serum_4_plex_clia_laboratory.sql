SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN LBXS06MK IS NULL THEN NULL 
ELSE SAFE_CAST(LBXS06MK AS FLOAT64) 
 END as hpv_06_merck_competitive_luminex_assay, 

CASE
WHEN LBXS11MK IS NULL THEN NULL 
ELSE SAFE_CAST(LBXS11MK AS FLOAT64) 
 END as hpv_11_merck_competitive_luminex_assay, 

CASE
WHEN LBXS16MK IS NULL THEN NULL 
ELSE SAFE_CAST(LBXS16MK AS FLOAT64) 
 END as hpv_16_merck_competitive_luminex_assay, 

CASE
WHEN LBXS18MK IS NULL THEN NULL 
ELSE SAFE_CAST(LBXS18MK AS FLOAT64) 
 END as hpv_18_merck_competitive_luminex_assay, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_human_papillomavirus_hpv_6_11_16_18_antibody_serum_4_plex_clia_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/HPVSER_D.htm
*/
