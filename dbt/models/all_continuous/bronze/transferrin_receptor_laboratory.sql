SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN LBXTFR IS NULL THEN NULL 
ELSE SAFE_CAST(LBXTFR AS STRING) 
 END as transferrin_receptor_mg_l, 

CASE
WHEN LBDTFRSI IS NOT NULL THEN SAFE_CAST(LBDTFRSI AS FLOAT64) -- correct wrong data types for numerical data 
WHEN LBDTFRSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDTFRSI AS FLOAT64) 
 END as transferrin_receptor_nmol_l, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_transferrin_receptor_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/TFR_J.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_TFR.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/TFR_I.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/TFR_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/TFR_E.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/TFR_D.htm
*/
