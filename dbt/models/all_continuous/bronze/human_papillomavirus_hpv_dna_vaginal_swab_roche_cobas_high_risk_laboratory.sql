SELECT
start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_human_papillomavirus_hpv_dna_vaginal_swab_roche_cobas_high_risk_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:

*/
