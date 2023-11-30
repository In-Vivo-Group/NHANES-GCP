SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN WTSAF2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSAF2YR AS FLOAT64) 
 END as fasting_subsample_2_year_mec_weight, 

CASE
    WHEN LBXAPB IS NULL THEN NULL 
ELSE SAFE_CAST(LBXAPB AS FLOAT64) 
 END as apolipoprotein_b_mg_dl, 

CASE
    WHEN LBDAPBSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDAPBSI AS FLOAT64) 
 END as apolipoprotein_b_g_l, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_apolipoprotein_b_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/APOB_I.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/APOB_H.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/APOB_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/APOB_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/APOB_E.htm
*/
