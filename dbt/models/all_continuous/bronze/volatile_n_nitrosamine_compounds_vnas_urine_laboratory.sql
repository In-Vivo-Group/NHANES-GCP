SELECT
start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_volatile_n_nitrosamine_compounds_vnas_urine_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:

*/
