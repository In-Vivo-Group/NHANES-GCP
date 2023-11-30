SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN SSSALIGA IS NULL THEN NULL 
ELSE SAFE_CAST(SSSALIGA AS FLOAT64) 
 END as salmonella_iga, 

CASE
    WHEN SSSALIGG IS NULL THEN NULL 
ELSE SAFE_CAST(SSSALIGG AS FLOAT64) 
 END as salmonella_igg, 

CASE
    WHEN SSSALIGM IS NULL THEN NULL 
ELSE SAFE_CAST(SSSALIGM AS FLOAT64) 
 END as salmonella_igm, 

CASE
    WHEN SSCAMIGA IS NULL THEN NULL 
ELSE SAFE_CAST(SSCAMIGA AS FLOAT64) 
 END as campylobacter_iga, 

CASE
    WHEN SSCAMIGG IS NULL THEN NULL 
ELSE SAFE_CAST(SSCAMIGG AS FLOAT64) 
 END as campylobacter_igg, 

CASE
    WHEN SSCAMIGM IS NULL THEN NULL 
ELSE SAFE_CAST(SSCAMIGM AS FLOAT64) 
 END as campylobacter_igm, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_salmonella_campylobacter_antibodies_surplus_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/SSSAL_D.htm
*/
