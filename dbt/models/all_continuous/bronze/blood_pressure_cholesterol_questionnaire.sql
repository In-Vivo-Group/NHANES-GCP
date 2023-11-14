SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN SAFE_CAST(BPQ020 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(BPQ020 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(BPQ020 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(BPQ020 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN BPQ020 IS NULL THEN NULL 
ELSE SAFE_CAST(BPQ020 AS STRING) 
 END as ever_told_you_had_high_blood_pressure, 

CASE
            WHEN SAFE_CAST(BPQ030 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(BPQ030 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(BPQ030 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(BPQ030 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN BPQ030 IS NULL THEN NULL 
ELSE SAFE_CAST(BPQ030 AS STRING) 
 END as told_had_high_blood_pressure_2_times, 

CASE
            WHEN SAFE_CAST(BPD035 AS FLOAT64) > 81.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN BPD035 IS NULL THEN NULL 
ELSE SAFE_CAST(BPD035 AS FLOAT64) 
 END as age_told_had_hypertension, 

CASE
            WHEN SAFE_CAST(BPQ040A AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(BPQ040A AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(BPQ040A AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(BPQ040A AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN BPQ040A IS NULL THEN NULL 
ELSE SAFE_CAST(BPQ040A AS STRING) 
 END as taking_prescription_for_hypertension, 

CASE
            WHEN SAFE_CAST(BPQ050A AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(BPQ050A AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(BPQ050A AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(BPQ050A AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN BPQ050A IS NULL THEN NULL 
ELSE SAFE_CAST(BPQ050A AS STRING) 
 END as now_taking_prescribed_medicine_for_hbp, 

CASE
            WHEN SAFE_CAST(BPQ080 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(BPQ080 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(BPQ080 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(BPQ080 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN BPQ080 IS NULL THEN NULL 
ELSE SAFE_CAST(BPQ080 AS STRING) 
 END as doctor_told_you_high_cholesterol_level, 

CASE
            WHEN SAFE_CAST(BPQ060 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(BPQ060 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(BPQ060 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(BPQ060 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN BPQ060 IS NULL THEN NULL 
ELSE SAFE_CAST(BPQ060 AS STRING) 
 END as ever_had_blood_cholesterol_checked, 

CASE
            WHEN SAFE_CAST(BPQ070 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Less than 1 year ago,' -- categorize numeric values
WHEN SAFE_CAST(BPQ070 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN '1 year but less than 2 years ago,' -- categorize numeric values
WHEN SAFE_CAST(BPQ070 AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN '2 years but less than 5 years ago, or' -- categorize numeric values
WHEN SAFE_CAST(BPQ070 AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN '5 years or more?' -- categorize numeric values
WHEN SAFE_CAST(BPQ070 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(BPQ070 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN BPQ070 IS NULL THEN NULL 
ELSE SAFE_CAST(BPQ070 AS STRING) 
 END as when_blood_cholesterol_last_checked, 

CASE
            WHEN SAFE_CAST(BPQ090D AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(BPQ090D AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(BPQ090D AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(BPQ090D AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN BPQ090D IS NULL THEN NULL 
ELSE SAFE_CAST(BPQ090D AS STRING) 
 END as told_to_take_prescriptn_for_cholesterol, 

CASE
            WHEN SAFE_CAST(BPQ100D AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(BPQ100D AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(BPQ100D AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(BPQ100D AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN BPQ100D IS NULL THEN NULL 
ELSE SAFE_CAST(BPQ100D AS STRING) 
 END as now_taking_prescribed_medicine, 

 FROM {{ ref('stg_blood_pressure_cholesterol_questionnaire') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/BPQ_J.htm
        