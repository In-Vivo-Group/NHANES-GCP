SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN LBXTC IS NULL THEN NULL 
ELSE SAFE_CAST(LBXTC AS FLOAT64) 
 END as total_cholesterol_mg_dl, 

CASE
    WHEN LBDTCSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDTCSI AS FLOAT64) 
 END as total_cholesterol_mmol_l, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_cholesterol_total_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/TCHOL_J.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_TCHOL.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/TCHOL_I.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/TCHOL_H.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/TCHOL_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/TCHOL_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/TCHOL_E.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/TCHOL_D.htm
*/
