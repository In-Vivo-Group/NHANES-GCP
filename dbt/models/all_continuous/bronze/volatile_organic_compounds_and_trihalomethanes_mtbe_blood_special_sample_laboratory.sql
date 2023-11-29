SELECT
start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_volatile_organic_compounds_and_trihalomethanes_mtbe_blood_special_sample_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:

*/
