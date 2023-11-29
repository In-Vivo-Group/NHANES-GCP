SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN LBXTBA IS NULL THEN NULL 
ELSE SAFE_CAST(LBXTBA AS FLOAT64) 
 END as tb_antigen_result, 

CASE
    WHEN LBXTBN IS NULL THEN NULL 
ELSE SAFE_CAST(LBXTBN AS FLOAT64) 
 END as tb_nil_control_result, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXTBIN AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXTBIN AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXTBIN AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Indeterminate' -- categorize numeric values
WHEN LBXTBIN IS NULL THEN NULL 
ELSE SAFE_CAST(LBXTBIN AS STRING) 
 END as tb_coded_result, 

CASE
    WHEN LBXTBM IS NULL THEN NULL 
ELSE SAFE_CAST(LBXTBM AS FLOAT64) 
 END as tb_mitogen_control_result, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_tuberculosis_quantiferon_in_gold_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/TB_G.htm
*/
