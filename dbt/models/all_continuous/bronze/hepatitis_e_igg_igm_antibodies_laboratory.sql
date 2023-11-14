SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDHEG AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDHEG AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDHEG AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Indeterminate' -- categorize numeric values
WHEN LBDHEG IS NULL THEN NULL 
ELSE SAFE_CAST(LBDHEG AS STRING) 
 END as hepatitis_e_igg_anti_hev, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDHEM AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDHEM AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDHEM AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Indeterminate' -- categorize numeric values
WHEN LBDHEM IS NULL THEN NULL 
ELSE SAFE_CAST(LBDHEM AS STRING) 
 END as hepatitis_e_igm_anti_hev, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_hepatitis_e_igg_igm_antibodies_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/HEPE_J.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_HEPE.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/HEPE_I.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/HEPE_H.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/HEPE_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/HEPE_F.htm
*/
