SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN LBDHDD IS NULL THEN NULL 
ELSE SAFE_CAST(LBDHDD AS FLOAT64) 
 END as direct_hdl_cholesterol_mg_dl, 

CASE
    WHEN LBDHDDSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDHDDSI AS FLOAT64) 
 END as direct_hdl_cholesterol_mmol_l, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_cholesterol_hdl_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/HDL_H.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/HDL_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/HDL_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/HDL_E.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/HDL_D.htm
*/
