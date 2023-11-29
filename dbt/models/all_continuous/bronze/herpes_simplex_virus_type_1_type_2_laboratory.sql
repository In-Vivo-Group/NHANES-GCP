SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXHE1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXHE1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXHE1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Indeterminate' -- categorize numeric values
WHEN LBXHE1 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXHE1 AS STRING) 
 END as herpes_simplex_virus_type_1, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXHE2 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXHE2 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXHE2 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Indeterminate' -- categorize numeric values
WHEN LBXHE2 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXHE2 AS STRING) 
 END as herpes_simplex_virus_type_2, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_herpes_simplex_virus_type_1_type_2_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/HSV_I.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/HSV_H.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/HSV_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/HSV_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/HSV_E.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/HSV_D.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/L09_C.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/L09_B.htm
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/LAB09.htm
*/
