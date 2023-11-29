SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN SSFHA IS NULL THEN NULL 
ELSE SAFE_CAST(SSFHA AS FLOAT64) 
 END as pertussis_filamentous_hemagglutinin_ab, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSFHAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above LLOQ' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSFHAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below LLOQ' -- categorize numeric values
WHEN SSFHAL IS NULL THEN NULL 
ELSE SAFE_CAST(SSFHAL AS STRING) 
 END as pertussis_filamentous_hemag_ab_cmt_code, 

CASE
WHEN SSFIM IS NULL THEN NULL 
ELSE SAFE_CAST(SSFIM AS FLOAT64) 
 END as pertussis_fimbriae_antibody_iu_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSFIML AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above LLOQ' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSFIML AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below LLOQ' -- categorize numeric values
WHEN SSFIML IS NULL THEN NULL 
ELSE SAFE_CAST(SSFIML AS STRING) 
 END as pertussis_fimbriae_antibody_comment_code, 

CASE
WHEN SSPT IS NULL THEN NULL 
ELSE SAFE_CAST(SSPT AS FLOAT64) 
 END as pertussis_toxin_antibody_iu_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSPTL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above LLOQ' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSPTL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below LLOQ' -- categorize numeric values
WHEN SSPTL IS NULL THEN NULL 
ELSE SAFE_CAST(SSPTL AS STRING) 
 END as pertussis_toxin_antibody_comment_code, 

CASE
WHEN SSPRN IS NULL THEN NULL 
ELSE SAFE_CAST(SSPRN AS FLOAT64) 
 END as pertactin_antibody_iu_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSPRNL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above LLOQ' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSPRNL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below LLOQ' -- categorize numeric values
WHEN SSPRNL IS NULL THEN NULL 
ELSE SAFE_CAST(SSPRNL AS STRING) 
 END as pertactin_antibody_comment_code, 

CASE
WHEN SSTT IS NULL THEN NULL 
ELSE SAFE_CAST(SSTT AS FLOAT64) 
 END as tetanus_toxin_antibody_iu_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSTTL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above LLOQ' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSTTL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below LLOQ' -- categorize numeric values
WHEN SSTTL IS NULL THEN NULL 
ELSE SAFE_CAST(SSTTL AS STRING) 
 END as tetanus_toxin_antibody_comment_code, 

CASE
WHEN WTSSPT IS NULL THEN NULL 
ELSE SAFE_CAST(WTSSPT AS FLOAT64) 
 END as adjusted_examination_weight, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_pertussis_and_tetanus_serum_surplus_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/SSPT_I.htm
*/
