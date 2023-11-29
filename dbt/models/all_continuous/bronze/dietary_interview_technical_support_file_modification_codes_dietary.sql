SELECT
CASE
WHEN DRXMC IS NULL THEN NULL 
ELSE SAFE_CAST(DRXMC AS FLOAT64) 
 END as modification_code, 

CASE
WHEN REPLACE(DRXMCD,'.0','') = 'Modification Code Description' THEN 'Value was recorded' -- categorize string values 
WHEN REPLACE(DRXMCD,'.0','') = '' THEN '' -- categorize string values 
ELSE SAFE_CAST(DRXMCD AS STRING) 
 END as modification_code_description, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_dietary_interview_technical_support_file_modification_codes_dietary') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/DRXMCD_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/DRXMCD_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/DRXMCD_E.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/DRXMCD_D.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/DRXMCD_C.htm
*/
