SELECT
CASE
WHEN DRXFDCD IS NULL THEN NULL 
ELSE SAFE_CAST(DRXFDCD AS FLOAT64) 
 END as food_code, 

CASE
WHEN REPLACE(DRXFCSD,'.0','') = 'Short Food Code Description' THEN 'Value was recorded' -- categorize string values 
WHEN DRXFCSD IS NULL THEN NULL 
ELSE SAFE_CAST(DRXFCSD AS STRING) 
 END as short_food_code_description, 

CASE
WHEN REPLACE(DRXFCLD,'.0','') = 'Long Food Code Description' THEN 'Value was recorded' -- categorize string values 
WHEN DRXFCLD IS NULL THEN NULL 
ELSE SAFE_CAST(DRXFCLD AS STRING) 
 END as long_food_code_description, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_dietary_interview_technical_support_file_food_codes_dietary') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/DRXFCD_J.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_DRXFCD.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/DRXFCD_I.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/DRXFCD_H.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/DRXFCD_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/DRXFCD_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/DRXFCD_E.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/DRXFCD_D.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/DRXFCD_C.htm
*/
