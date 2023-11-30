SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN LBXIRN IS NULL THEN NULL 
ELSE SAFE_CAST(LBXIRN AS FLOAT64) 
 END as iron_frozen_serum_ug_dl, 

CASE
    WHEN LBDIRNSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDIRNSI AS FLOAT64) 
 END as iron_frozen_serum_umol_l, 

CASE
    WHEN LBXTIB IS NULL THEN NULL 
ELSE SAFE_CAST(LBXTIB AS FLOAT64) 
 END as tibc_frozen_serum_ug_dl, 

CASE
    WHEN LBDTIBSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDTIBSI AS FLOAT64) 
 END as tibc_frozen_serum_umol_l, 

CASE
    WHEN LBDPCT IS NULL THEN NULL 
ELSE SAFE_CAST(LBDPCT AS FLOAT64) 
 END as transferrin_saturation, 

CASE
    WHEN LBDTIB IS NULL THEN NULL 
ELSE SAFE_CAST(LBDTIB AS FLOAT64) 
 END as total_iron_binding_capacity_ug_dl, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_iron_total_iron_binding_capacity_tibc_transferrin_saturation_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/FETIB_D.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/L40FE_C.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/L40FE_B.htm
*/
