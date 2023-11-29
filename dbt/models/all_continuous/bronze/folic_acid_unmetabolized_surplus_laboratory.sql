SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN SSMETSI IS NULL THEN NULL 
ELSE SAFE_CAST(SSMETSI AS FLOAT64) 
 END as methyltetrahydrofolate_pmol_ml, 

CASE
WHEN SSFOLSI IS NULL THEN NULL 
ELSE SAFE_CAST(SSFOLSI AS FLOAT64) 
 END as folic_acid_pmol_ml, 

CASE
WHEN SSFOLTSI IS NULL THEN NULL 
ELSE SAFE_CAST(SSFOLTSI AS FLOAT64) 
 END as total_folate_pmol_ml, 

CASE
WHEN SSMET IS NULL THEN NULL 
ELSE SAFE_CAST(SSMET AS FLOAT64) 
 END as methyltetrahydrofolate_ng_ml, 

CASE
WHEN SSFOL IS NULL THEN NULL 
ELSE SAFE_CAST(SSFOL AS FLOAT64) 
 END as folic_acid_ng_ml, 

CASE
WHEN SSFOLTOT IS NULL THEN NULL 
ELSE SAFE_CAST(SSFOLTOT AS FLOAT64) 
 END as total_folate_ng_ml, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_folic_acid_unmetabolized_surplus_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/SSFOL_A.htm
*/
