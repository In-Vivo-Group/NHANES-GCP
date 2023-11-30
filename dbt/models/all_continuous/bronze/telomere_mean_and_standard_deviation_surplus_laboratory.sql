SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN TELOMEAN IS NULL THEN NULL 
ELSE SAFE_CAST(TELOMEAN AS FLOAT64) 
 END as mean_t_s_ratio, 

CASE
    WHEN TELOSTD IS NULL THEN NULL 
ELSE SAFE_CAST(TELOSTD AS FLOAT64) 
 END as asso_std_dev_of_mean_t_s_ratio, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_telomere_mean_and_standard_deviation_surplus_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/TELO_B.htm
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/TELO_A.htm
*/
