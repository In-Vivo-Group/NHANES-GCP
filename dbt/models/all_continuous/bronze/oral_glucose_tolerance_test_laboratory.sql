SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN WTSOG2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSOG2YR AS FLOAT64) 
 END as ogtt_subsample_2_year_mec_weight, 

CASE
WHEN LBXGLT IS NULL THEN NULL 
ELSE SAFE_CAST(LBXGLT AS FLOAT64) 
 END as two_hour_glucose_ogtt_mg_dl, 

CASE
WHEN LBDGLTSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDGLTSI AS FLOAT64) 
 END as two_hour_glucose_ogtt_mmol_l, 

CASE
WHEN GTDSCMMN IS NULL THEN NULL 
ELSE SAFE_CAST(GTDSCMMN AS FLOAT64) 
 END as glucose_challenge_administer_time_in_min, 

CASE
WHEN GTDDR1MN IS NULL THEN NULL 
ELSE SAFE_CAST(GTDDR1MN AS FLOAT64) 
 END as time_from_fast_glucose_challenge_min, 

CASE
WHEN GTDBL2MN IS NULL THEN NULL 
ELSE SAFE_CAST(GTDBL2MN AS FLOAT64) 
 END as time_from_fasting_glucose_ogtt_min, 

CASE
WHEN GTDDR2MN IS NULL THEN NULL 
ELSE SAFE_CAST(GTDDR2MN AS FLOAT64) 
 END as time_from_glucose_challenge_ogtt_min, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(GTXDRANK AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'All' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(GTXDRANK AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Some' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(GTXDRANK AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'None' -- categorize numeric values
WHEN GTXDRANK IS NULL THEN NULL 
ELSE SAFE_CAST(GTXDRANK AS STRING) 
 END as amount_of_glucose_challenge_drank, 

CASE
WHEN PHAFSTHR IS NULL THEN NULL 
ELSE SAFE_CAST(PHAFSTHR AS FLOAT64) 
 END as total_length_of_food_fast_hours, 

CASE
WHEN PHAFSTMN IS NULL THEN NULL 
ELSE SAFE_CAST(PHAFSTMN AS FLOAT64) 
 END as total_length_of_food_fast_minutes, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(GTDCODE AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'OGTT complete' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(GTDCODE AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(20 AS FLOAT64),0) AS INT64) THEN 'Hemophiliac' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(GTDCODE AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(21 AS FLOAT64),0) AS INT64) THEN 'Cancer chemotherapy within 4 weeks' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(GTDCODE AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(22 AS FLOAT64),0) AS INT64) THEN 'Diabetic on medications' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(GTDCODE AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(23 AS FLOAT64),0) AS INT64) THEN 'Refused venipuncture' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(GTDCODE AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(24 AS FLOAT64),0) AS INT64) THEN 'Ill/faint during test' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(GTDCODE AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(25 AS FLOAT64),0) AS INT64) THEN 'Venipuncture unsuccessful' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(GTDCODE AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(26 AS FLOAT64),0) AS INT64) THEN 'Currently pregnant' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(GTDCODE AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(27 AS FLOAT64),0) AS INT64) THEN 'Refused glucose challenge' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(GTDCODE AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(28 AS FLOAT64),0) AS INT64) THEN 'Fasting less than 9 hours' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(GTDCODE AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(29 AS FLOAT64),0) AS INT64) THEN 'Came late/left early' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(GTDCODE AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(30 AS FLOAT64),0) AS INT64) THEN 'Other' -- categorize numeric values
WHEN GTDCODE IS NULL THEN NULL 
ELSE SAFE_CAST(GTDCODE AS STRING) 
 END as incomplete_ogtt_comment_code, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_oral_glucose_tolerance_test_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/OGTT_H.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/OGTT_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/OGTT_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/OGTT_E.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/OGTT_D.htm
*/
