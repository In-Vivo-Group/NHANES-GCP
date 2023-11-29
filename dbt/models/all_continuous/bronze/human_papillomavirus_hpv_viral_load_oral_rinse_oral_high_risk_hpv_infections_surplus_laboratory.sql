SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN SSHPTYPE IS NULL THEN NULL 
ELSE SAFE_CAST(SSHPTYPE AS FLOAT64) 
 END as oral_hpv_type, 

CASE
WHEN SSHPVLD IS NULL THEN NULL 
ELSE SAFE_CAST(SSHPVLD AS FLOAT64) 
 END as oral_hpv_viral_load, 

CASE
WHEN SSHPVCEL IS NULL THEN NULL 
ELSE SAFE_CAST(SSHPVCEL AS FLOAT64) 
 END as oral_hpv_cell_number, 

CASE
WHEN SSHPVNLD IS NULL THEN NULL 
ELSE SAFE_CAST(SSHPVNLD AS FLOAT64) 
 END as oral_hpv_normal_viral_load, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_human_papillomavirus_hpv_viral_load_oral_rinse_oral_high_risk_hpv_infections_surplus_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/SSHPV_F.htm
*/
