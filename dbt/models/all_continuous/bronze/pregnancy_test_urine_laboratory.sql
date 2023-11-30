SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URXPREG AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URXPREG AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URXPREG AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Not done' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URXPREG AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Invalid' -- categorize numeric values
WHEN URXPREG IS NULL THEN NULL 
ELSE SAFE_CAST(URXPREG AS STRING) 
 END as urine_pregnancy_result, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_pregnancy_test_urine_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/UCPREG_I.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/UCPREG_H.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/UCPREG_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/UCPREG_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/UCPREG_E.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/UCPREG_D.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/UC_C.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/UC_B.htm
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/UC.htm
*/
