SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSCTEIA AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSCTEIA AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SSCTEIA IS NULL THEN NULL 
ELSE SAFE_CAST(SSCTEIA AS STRING) 
 END as chlamydia_pgp3_elisa, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSCTMBA AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSCTMBA AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SSCTMBA IS NULL THEN NULL 
ELSE SAFE_CAST(SSCTMBA AS STRING) 
 END as chlamydia_pgp3_mba, 

CASE
WHEN SSCTEIOD IS NULL THEN NULL 
ELSE SAFE_CAST(SSCTEIOD AS FLOAT64) 
 END as chlamydia_pgp3_eia_optical_density, 

CASE
WHEN SSCTMBFI IS NULL THEN NULL 
ELSE SAFE_CAST(SSCTMBFI AS FLOAT64) 
 END as chlamydia_pgp3_mba_medium_fluorest_inten, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_chlamydia_pgp3_plasmid_gene_product_3_elisa_enzyme_linked_immunosorbent_assay_and_multiplex_bead_array_mba_results_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/SSCT_I.htm
*/
