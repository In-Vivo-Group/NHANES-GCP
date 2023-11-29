SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXHA AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXHA AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXHA AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Indeterminate' -- categorize numeric values
WHEN LBXHA IS NULL THEN NULL 
ELSE SAFE_CAST(LBXHA AS STRING) 
 END as hepatitis_a_antibody, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_hepatitis_a_antibody_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/HEPA_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/HEPA_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/HEPA_E.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/HEPA_D.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/L02HPA_C.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/L02HPA_B.htm
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/L02HPA_A.htm
*/
