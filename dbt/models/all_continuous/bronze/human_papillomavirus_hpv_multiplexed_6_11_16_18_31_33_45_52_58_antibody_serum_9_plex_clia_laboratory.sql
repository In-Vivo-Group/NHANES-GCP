SELECT
start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_human_papillomavirus_hpv_multiplexed_6_11_16_18_31_33_45_52_58_antibody_serum_9_plex_clia_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:

*/
