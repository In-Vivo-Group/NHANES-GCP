SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN WTSSPO2Y IS NULL THEN NULL 
ELSE SAFE_CAST(WTSSPO2Y AS FLOAT64) 
 END as sspoli_f_2_year_weights, 

CASE
    WHEN SSPV1 IS NULL THEN NULL 
ELSE SAFE_CAST(SSPV1 AS FLOAT64) 
 END as antibody_against_wild_type_polio_virus_1, 

CASE
    WHEN SSPV2 IS NULL THEN NULL 
ELSE SAFE_CAST(SSPV2 AS FLOAT64) 
 END as antibody_against_wild_type_polio_virus_2, 

CASE
    WHEN SSPV3 IS NULL THEN NULL 
ELSE SAFE_CAST(SSPV3 AS FLOAT64) 
 END as antibody_against_wild_type_polio_virus_3, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_poliovirus_serotypes_1_2_3_antibodies_serum_surplus_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/SSPOLI_F.htm
*/
