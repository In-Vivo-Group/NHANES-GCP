SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN WTSSMC2Y IS NULL THEN NULL 
ELSE SAFE_CAST(WTSSMC2Y AS FLOAT64) 
 END as ssmump_and_sscmv_2_year_weights, 

CASE
    WHEN SSCMVOD IS NULL THEN NULL 
ELSE SAFE_CAST(SSCMVOD AS FLOAT64) 
 END as cmv_optical_density_from_elisa, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SSCMV AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSCMV AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSCMV AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Equivocal' -- categorize numeric values
WHEN SSCMV IS NULL THEN NULL 
ELSE SAFE_CAST(SSCMV AS STRING) 
 END as cmv_specific_igg_results, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SSCMIGM AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSCMIGM AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSCMIGM AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Equivocal' -- categorize numeric values
WHEN SSCMIGM IS NULL THEN NULL 
ELSE SAFE_CAST(SSCMIGM AS STRING) 
 END as cytomegalovirus_igm, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SSCMIGGA AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Low' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSCMIGGA AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'High' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSCMIGGA AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Indeterminate' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSCMIGGA AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Not evaluated' -- categorize numeric values
WHEN SSCMIGGA IS NULL THEN NULL 
ELSE SAFE_CAST(SSCMIGGA AS STRING) 
 END as cytomegalovirus_igg_avidity, 

CASE
    WHEN WTSSMC4Y IS NULL THEN NULL 
ELSE SAFE_CAST(WTSSMC4Y AS FLOAT64) 
 END as ssmump_and_sscmv_4_year_weights_99_02, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_cytomegalovirus_antibodies_serum_surplus_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/SSCMV_C.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/SSCMV_B.htm
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/SSCMV_A.htm
*/
