SELECT
start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_non_dioxin_like_polychlorinated_biphenyls_mono_ortho_substituted_polychlorinated_biphenyls_serum_pooled_samples_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:

*/
