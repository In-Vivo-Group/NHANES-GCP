SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(ARDEXSTS AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Complete' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ARDEXSTS AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Partial' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ARDEXSTS AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Not done' -- categorize numeric values
WHEN ARDEXSTS IS NULL THEN NULL 
ELSE SAFE_CAST(ARDEXSTS AS STRING) 
 END as arthritis_body_measures_exam_status, 

CASE
WHEN ARXO2WD IS NULL THEN NULL 
ELSE SAFE_CAST(ARXO2WD AS FLOAT64) 
 END as occiput_to_wall_distance_cm, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(ARIO2WD AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Could not obtain' -- categorize numeric values
WHEN ARIO2WD IS NULL THEN NULL 
ELSE SAFE_CAST(ARIO2WD AS STRING) 
 END as occiput_to_wall_distance_comment, 

CASE
WHEN ARXCCIN IS NULL THEN NULL 
ELSE SAFE_CAST(ARXCCIN AS FLOAT64) 
 END as chest_circumference_inspiration_cm, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(ARICCIN AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Could not obtain' -- categorize numeric values
WHEN ARICCIN IS NULL THEN NULL 
ELSE SAFE_CAST(ARICCIN AS STRING) 
 END as chest_circumference_inspiration_comment, 

CASE
WHEN ARXCCEX IS NULL THEN NULL 
ELSE SAFE_CAST(ARXCCEX AS FLOAT64) 
 END as chest_circumference_exhalation_cm, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(ARICCEX AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Could not obtain' -- categorize numeric values
WHEN ARICCEX IS NULL THEN NULL 
ELSE SAFE_CAST(ARICCEX AS STRING) 
 END as chest_circumference_exhalation_comment, 

CASE
WHEN ARDDINEX IS NULL THEN NULL 
ELSE SAFE_CAST(ARDDINEX AS FLOAT64) 
 END as difference_inspiration_exhalation_cm, 

CASE
WHEN ARXXDIST IS NULL THEN NULL 
ELSE SAFE_CAST(ARXXDIST AS FLOAT64) 
 END as xiphoid_notch_distance_cm, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(ARIXDIST AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Could not obtain' -- categorize numeric values
WHEN ARIXDIST IS NULL THEN NULL 
ELSE SAFE_CAST(ARIXDIST AS STRING) 
 END as xiphoid_notch_distance_comment, 

CASE
WHEN ARDLFTL IS NULL THEN NULL 
ELSE SAFE_CAST(ARDLFTL AS FLOAT64) 
 END as lumbar_flexion_test_length_cm, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(ARILFTL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Could not obtain' -- categorize numeric values
WHEN ARILFTL IS NULL THEN NULL 
ELSE SAFE_CAST(ARILFTL AS STRING) 
 END as lumbar_flexion_test_length_comment, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_arthritis_body_measures_examination') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/ARX_F.htm
*/
