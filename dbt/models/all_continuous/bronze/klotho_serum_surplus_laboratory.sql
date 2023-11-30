SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN SSKLOTH IS NULL THEN NULL 
ELSE SAFE_CAST(SSKLOTH AS FLOAT64) 
 END as klotho_pg_ml, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_klotho_serum_surplus_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/SSKL_I.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/SSKL_H.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/SSKL_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/SSKL_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/SSKL_E.htm
*/
