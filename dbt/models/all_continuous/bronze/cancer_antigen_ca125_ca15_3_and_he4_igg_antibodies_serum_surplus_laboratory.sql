SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN SSCA125L IS NULL THEN NULL 
ELSE SAFE_CAST(SSCA125L AS FLOAT64) 
 END as cancer_antigen_125_igg_luminescent_units, 

CASE
    WHEN SSCA125I IS NULL THEN NULL 
ELSE SAFE_CAST(SSCA125I AS FLOAT64) 
 END as cancer_antigen_125_igg_index, 

CASE
    WHEN SSCA153L IS NULL THEN NULL 
ELSE SAFE_CAST(SSCA153L AS FLOAT64) 
 END as cancer_antigen15_3_igg_luminescent_unit, 

CASE
    WHEN SSCA153I IS NULL THEN NULL 
ELSE SAFE_CAST(SSCA153I AS FLOAT64) 
 END as cancer_antigen_15_3_igg_index, 

CASE
    WHEN SSHE4L IS NULL THEN NULL 
ELSE SAFE_CAST(SSHE4L AS FLOAT64) 
 END as he4_igg_luminescent_units, 

CASE
    WHEN SSHE4I IS NULL THEN NULL 
ELSE SAFE_CAST(SSHE4I AS FLOAT64) 
 END as he4_igg_index, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_cancer_antigen_ca125_ca15_3_and_he4_igg_antibodies_serum_surplus_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/SSCGA_B.htm
*/
