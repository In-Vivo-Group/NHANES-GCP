SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXHBS AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXHBS AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXHBS AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Indeterminate' -- categorize numeric values
WHEN LBXHBS IS NULL THEN NULL 
ELSE SAFE_CAST(LBXHBS AS STRING) 
 END as hepatitis_b_surface_antibody, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_hepatitis_b_surface_antibody_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_HEPB_S.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/HEPB_S_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/HEPB_S_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/HEPB_S_E.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/HEPB_S_D.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/L02HBS_C.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/L02HBS_B.htm
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/L02HBS.htm
*/
