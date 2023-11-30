SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN LBXGH IS NULL THEN NULL 
ELSE SAFE_CAST(LBXGH AS FLOAT64) 
 END as glycohemoglobin, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_glycohemoglobin_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/GHB_J.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_GHB.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/GHB_I.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/GHB_H.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/GHB_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/GHB_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/GHB_E.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/GHB_D.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/L10_C.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/L10_B.htm
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/LAB10.htm
*/
