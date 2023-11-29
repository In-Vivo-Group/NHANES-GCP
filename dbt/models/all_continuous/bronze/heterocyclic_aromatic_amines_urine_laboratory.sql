SELECT
start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_heterocyclic_aromatic_amines_urine_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:

*/
