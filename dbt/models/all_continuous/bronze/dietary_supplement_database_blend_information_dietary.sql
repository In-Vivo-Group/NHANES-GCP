SELECT
CASE
WHEN DSDIID IS NULL THEN NULL 
ELSE SAFE_CAST(DSDIID AS FLOAT64) 
 END as ingredient_id_number, 

CASE
WHEN REPLACE(DSDINGR,'.0','') = 'INGREDIENT NAME' THEN 'Value was recorded' -- categorize string values 
WHEN DSDINGR IS NULL THEN NULL 
ELSE SAFE_CAST(DSDINGR AS STRING) 
 END as ingredient_name, 

CASE
WHEN DSDBID IS NULL THEN NULL 
ELSE SAFE_CAST(DSDBID AS FLOAT64) 
 END as blend_component_id, 

CASE
WHEN REPLACE(DSDBCNAM,'.0','') = 'BLEND COMPONENT NAME' THEN 'Value was recorded' -- categorize string values 
WHEN DSDBCNAM IS NULL THEN NULL 
ELSE SAFE_CAST(DSDBCNAM AS STRING) 
 END as blend_component_name, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSDBCCAT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Vitamin' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSDBCCAT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Mineral' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSDBCCAT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Botanical' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSDBCCAT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Other' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSDBCCAT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN 'Amino acid' -- categorize numeric values
WHEN DSDBCCAT IS NULL THEN NULL 
ELSE SAFE_CAST(DSDBCCAT AS STRING) 
 END as blend_component_category, 

CASE
WHEN REPLACE(DSDBCID,'.0','') = 'BLEND COMPONENT ID - OLD VERSION' THEN 'Value was recorded' -- categorize string values 
WHEN DSDBCID IS NULL THEN NULL 
ELSE SAFE_CAST(DSDBCID AS STRING) 
 END as blend_component_id_old_version, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_dietary_supplement_database_blend_information_dietary') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/DSBI.htm
*/
