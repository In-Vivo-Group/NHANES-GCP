SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN LBXMMASI IS NULL THEN NULL 
ELSE SAFE_CAST(LBXMMASI AS FLOAT64) 
 END as methylmalonic_acid_nmol_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDMMALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDMMALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDMMALC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDMMALC AS STRING) 
 END as methylmalonic_acid_comment_code, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_methylmalonic_acid_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/MMA_H.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/MMA_G.htm
*/
