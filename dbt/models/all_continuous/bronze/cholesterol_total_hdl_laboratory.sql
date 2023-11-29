SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN LBXTC IS NULL THEN NULL 
ELSE SAFE_CAST(LBXTC AS FLOAT64) 
 END as total_cholesterol_mg_dl, 

CASE
    WHEN LBXHDD IS NOT NULL THEN SAFE_CAST(LBXHDD AS FLOAT64) -- correct wrong data types for numerical data 
WHEN LBXHDD IS NULL THEN NULL 
ELSE SAFE_CAST(LBXHDD AS FLOAT64) 
 END as direct_hdl_cholesterol_mg_dl, 

CASE
    WHEN LBDTCSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDTCSI AS FLOAT64) 
 END as total_cholesterol_mmol_l, 

CASE
    WHEN LBDHDDSI IS NOT NULL THEN SAFE_CAST(LBDHDDSI AS FLOAT64) -- correct wrong data types for numerical data 
WHEN LBDHDDSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDHDDSI AS FLOAT64) 
 END as direct_hdl_cholesterol_mmol_l, 

CASE
    WHEN LBDHDL IS NULL THEN NULL 
ELSE SAFE_CAST(LBDHDL AS FLOAT64) 
 END as hdl_cholesterol_mg_dl, 

CASE
    WHEN LBDHDLSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDHDLSI AS FLOAT64) 
 END as hdl_cholesterol_mmol_l, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_cholesterol_total_hdl_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/L13_C.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/L13_B.htm
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/LAB13.htm
*/
