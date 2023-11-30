SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN SSTCAMFI IS NULL THEN NULL 
ELSE SAFE_CAST(SSTCAMFI AS FLOAT64) 
 END as toxocara_mean_florescent_intensity, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SSTCAR AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSTCAR AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN SSTCAR IS NULL THEN NULL 
ELSE SAFE_CAST(SSTCAR AS STRING) 
 END as toxocara_antibody_result, 

CASE
    WHEN WTSSTT2Y IS NULL THEN NULL 
ELSE SAFE_CAST(WTSSTT2Y AS FLOAT64) 
 END as sstoca_and_sstoxo_2_year_weights, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_antibody_to_toxocara_spp_surplus_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/SSTOCA_H.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/SSTOCA_G.htm
*/
