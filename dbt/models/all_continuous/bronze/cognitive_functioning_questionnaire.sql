SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CFD010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CFD010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN CFD010 IS NULL THEN NULL 
ELSE SAFE_CAST(CFD010 AS STRING) 
 END as can_do_exercise_without_distraction, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CFQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CFQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN CFQ020 IS NULL THEN NULL 
ELSE SAFE_CAST(CFQ020 AS STRING) 
 END as usually_wear_glasses_to_read, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CFD030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Completed sample' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CFD030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Unable to complete sample' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CFD030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN CFD030 IS NULL THEN NULL 
ELSE SAFE_CAST(CFD030 AS STRING) 
 END as has_sp_completed_sample_exercise, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CFD040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Physical limitations' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CFD040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Cognitive limitations' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CFD040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Other reason' -- categorize numeric values
WHEN CFD040 IS NULL THEN NULL 
ELSE SAFE_CAST(CFD040 AS STRING) 
 END as reason_unable_to_complete_sample, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CFD050 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes, completed' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CFD050 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No, stopped before 2 minutes' -- categorize numeric values
WHEN CFD050 IS NULL THEN NULL 
ELSE SAFE_CAST(CFD050 AS STRING) 
 END as dss_exercise_completion_result, 

CASE
    WHEN CFDFINSH IS NULL THEN NULL 
ELSE SAFE_CAST(CFDFINSH AS FLOAT64) 
 END as number_complete, 

CASE
    WHEN CFDRIGHT IS NULL THEN NULL 
ELSE SAFE_CAST(CFDRIGHT AS FLOAT64) 
 END as score_number_correct, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_cognitive_functioning_questionnaire') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/CFQ_B.htm
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/CFQ.htm
*/
