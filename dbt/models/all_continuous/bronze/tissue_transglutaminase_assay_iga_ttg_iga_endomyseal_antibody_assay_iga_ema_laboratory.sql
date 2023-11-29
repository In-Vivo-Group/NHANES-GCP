SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXTTG AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXTTG AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXTTG AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Weakly positive' -- categorize numeric values
WHEN LBXTTG IS NULL THEN NULL 
ELSE SAFE_CAST(LBXTTG AS STRING) 
 END as tissue_transglutaminase_iga_ttg, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXEMA AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXEMA AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXEMA AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Weakly positive' -- categorize numeric values
WHEN LBXEMA IS NULL THEN NULL 
ELSE SAFE_CAST(LBXEMA AS STRING) 
 END as endomyseal_antibody_iga_ema, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_tissue_transglutaminase_assay_iga_ttg_iga_endomyseal_antibody_assay_iga_ema_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/TGEMA_H.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/TGEMA_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/TGEMA_F.htm
*/
