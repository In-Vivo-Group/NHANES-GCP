SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN LBXTFR IS NULL THEN NULL 
ELSE SAFE_CAST(LBXTFR AS FLOAT64) 
 END as transferrin_receptor_mg_l, 

CASE
    WHEN LBDFER IS NULL THEN NULL 
ELSE SAFE_CAST(LBDFER AS FLOAT64) 
 END as ferritin_ng_ml, 

CASE
    WHEN LBDFERSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDFERSI AS FLOAT64) 
 END as ferritin_in_si_unit_ug_l, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_ferritin_transferrin_receptor_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/L06TFR_C.htm
*/
