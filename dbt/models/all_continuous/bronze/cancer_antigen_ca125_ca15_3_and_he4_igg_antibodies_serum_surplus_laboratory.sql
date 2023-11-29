SELECT
start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_cancer_antigen_ca125_ca15_3_and_he4_igg_antibodies_serum_surplus_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:

*/
