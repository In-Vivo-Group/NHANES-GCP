SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN WTSSE2Y IS NULL THEN NULL 
ELSE SAFE_CAST(WTSSE2Y AS FLOAT64) 
 END as ssebv_2_year_weights, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSEBV AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSEBV AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSEBV AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Equivocal' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSEBV AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Quantity not sufficient' -- categorize numeric values
WHEN SSEBV IS NULL THEN NULL 
ELSE SAFE_CAST(SSEBV AS STRING) 
 END as epstein_barr_virus_result, 

CASE
WHEN SSEBVIND IS NULL THEN NULL 
ELSE SAFE_CAST(SSEBVIND AS FLOAT64) 
 END as epstein_barr_virus_index, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_epstein_barr_virus_vca_igg_serum_surplus_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/SSEBV_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/SSEBV_E.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/SSEBV_D.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/SSEBV_C.htm
*/
