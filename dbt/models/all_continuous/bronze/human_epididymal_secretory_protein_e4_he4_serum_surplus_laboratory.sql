SELECT
start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_human_epididymal_secretory_protein_e4_he4_serum_surplus_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:

*/
