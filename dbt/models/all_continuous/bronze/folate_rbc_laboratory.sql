SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN WTFOL2YR IS NOT NULL THEN SAFE_CAST(WTFOL2YR AS FLOAT64) -- correct wrong data types for numerical data 
WHEN WTFOL2YR IS NOT NULL THEN SAFE_CAST(WTFOL2YR AS FLOAT64) -- correct wrong data types for numerical data 
WHEN WTFOL2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTFOL2YR AS FLOAT64) 
 END as folate_and_folate_forms_weight, 

CASE
    WHEN LBDRFO IS NULL THEN NULL 
ELSE SAFE_CAST(LBDRFO AS FLOAT64) 
 END as rbc_folate_ng_ml, 

CASE
    WHEN LBDRFOSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDRFOSI AS FLOAT64) 
 END as rbc_folate_nmol_l, 

CASE
    WHEN WTFOLPRP IS NOT NULL THEN SAFE_CAST(WTFOLPRP AS FLOAT64) -- correct wrong data types for numerical data 
WHEN WTFOLPRP IS NOT NULL THEN SAFE_CAST(WTFOLPRP AS FLOAT64) -- correct wrong data types for numerical data 
WHEN WTFOLPRP IS NULL THEN NULL 
ELSE SAFE_CAST(WTFOLPRP AS FLOAT64) 
 END as folate_folate_form_weight_pre_pandemic, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_folate_rbc_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/FOLATE_J.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_FOLATE.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/FOLATE_I.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/FOLATE_H.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/FOLATE_G.htm
*/
