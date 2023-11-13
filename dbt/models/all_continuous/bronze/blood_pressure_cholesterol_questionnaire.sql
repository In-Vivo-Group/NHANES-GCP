SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN BPQ020 = 1 THEN 'Yes' -- categorize numeric values
WHEN BPQ020 = 2 THEN 'No' -- categorize numeric values
WHEN BPQ020 = 7 THEN 'Refused' -- categorize numeric values
WHEN BPQ020 = 9 THEN 'Dont know' -- categorize numeric values
WHEN BPQ020 IS NULL THEN NULL 
ELSE BPQ020 
 END as ever_told_you_had_high_blood_pressure, 

CASE
            WHEN BPQ030 = 1 THEN 'Yes' -- categorize numeric values
WHEN BPQ030 = 2 THEN 'No' -- categorize numeric values
WHEN BPQ030 = 7 THEN 'Refused' -- categorize numeric values
WHEN BPQ030 = 9 THEN 'Dont know' -- categorize numeric values
WHEN BPQ030 IS NULL THEN NULL 
ELSE BPQ030 
 END as told_had_high_blood_pressure_2_times, 

CASE
            WHEN SAFE_CAST(BPD035 AS FLOAT64) > 79.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN BPD035 IS NULL THEN NULL 
ELSE BPD035 
 END as age_told_had_hypertension, 

CASE
            WHEN BPQ040A = 1 THEN 'Yes' -- categorize numeric values
WHEN BPQ040A = 2 THEN 'No' -- categorize numeric values
WHEN BPQ040A = 7 THEN 'Refused' -- categorize numeric values
WHEN BPQ040A = 9 THEN 'Dont know' -- categorize numeric values
WHEN BPQ040A IS NULL THEN NULL 
ELSE BPQ040A 
 END as taking_prescription_for_hypertension, 

CASE
            WHEN BPQ050A = 1 THEN 'Yes' -- categorize numeric values
WHEN BPQ050A = 2 THEN 'No' -- categorize numeric values
WHEN BPQ050A = 7 THEN 'Refused' -- categorize numeric values
WHEN BPQ050A = 9 THEN 'Dont know' -- categorize numeric values
WHEN BPQ050A IS NULL THEN NULL 
ELSE BPQ050A 
 END as now_taking_prescribed_medicine_for_hbp, 

CASE
            WHEN BPQ080 = 1 THEN 'Yes' -- categorize numeric values
WHEN BPQ080 = 2 THEN 'No' -- categorize numeric values
WHEN BPQ080 = 7 THEN 'Refused' -- categorize numeric values
WHEN BPQ080 = 9 THEN 'Dont know' -- categorize numeric values
WHEN BPQ080 IS NULL THEN NULL 
ELSE BPQ080 
 END as doctor_told_you_high_cholesterol_level, 

CASE
            WHEN BPQ060 = 1 THEN 'Yes' -- categorize numeric values
WHEN BPQ060 = 2 THEN 'No' -- categorize numeric values
WHEN BPQ060 = 7 THEN 'Refused' -- categorize numeric values
WHEN BPQ060 = 9 THEN 'Dont know' -- categorize numeric values
WHEN BPQ060 IS NULL THEN NULL 
ELSE BPQ060 
 END as ever_had_blood_cholesterol_checked, 

CASE
            WHEN BPQ070 = 1 THEN 'Less than 1 year ago,' -- categorize numeric values
WHEN BPQ070 = 2 THEN '1 year but less than 2 years ago,' -- categorize numeric values
WHEN BPQ070 = 3 THEN '2 years but less than 5 years ago, or' -- categorize numeric values
WHEN BPQ070 = 4 THEN '5 years or more?' -- categorize numeric values
WHEN BPQ070 = 7 THEN 'Refused' -- categorize numeric values
WHEN BPQ070 = 9 THEN 'Dont know' -- categorize numeric values
WHEN BPQ070 IS NULL THEN NULL 
ELSE BPQ070 
 END as when_blood_cholesterol_last_checked, 

CASE
            WHEN BPQ090D = 1 THEN 'Yes' -- categorize numeric values
WHEN BPQ090D = 2 THEN 'No' -- categorize numeric values
WHEN BPQ090D = 7 THEN 'Refused' -- categorize numeric values
WHEN BPQ090D = 9 THEN 'Dont know' -- categorize numeric values
WHEN BPQ090D IS NULL THEN NULL 
ELSE BPQ090D 
 END as told_to_take_prescriptn_for_cholesterol, 

CASE
            WHEN BPQ100D = 1 THEN 'Yes' -- categorize numeric values
WHEN BPQ100D = 2 THEN 'No' -- categorize numeric values
WHEN BPQ100D = 7 THEN 'Refused' -- categorize numeric values
WHEN BPQ100D = 9 THEN 'Dont know' -- categorize numeric values
WHEN BPQ100D IS NULL THEN NULL 
ELSE BPQ100D 
 END as now_taking_prescribed_medicine, 

 FROM {{ ref('stg_blood_pressure_cholesterol_questionnaire') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/BPQ_J.htm
        