SELECT
SEQN as respondent_sequence_number, 

CASE
        WHEN BPQ020 = 1 THEN 'Yes' 
WHEN BPQ020 = 2 THEN 'No' 
WHEN BPQ020 = 7 THEN 'Refused' 
WHEN BPQ020 = 9 THEN 'Dont know' 
WHEN BPQ020 IS NULL THEN NULL 
ELSE NULL 
 END as ever_told_you_had_high_blood_pressure, 

CASE
        WHEN BPQ030 = 1 THEN 'Yes' 
WHEN BPQ030 = 2 THEN 'No' 
WHEN BPQ030 = 7 THEN 'Refused' 
WHEN BPQ030 = 9 THEN 'Dont know' 
WHEN BPQ030 IS NULL THEN NULL 
ELSE NULL 
 END as told_had_high_blood_pressure_2_times, 

CASE
        WHEN BPD035 IS NOT NULL THEN SAFE_CAST(BPD035 AS FLOAT64) 
WHEN BPD035 IS NOT NULL THEN SAFE_CAST(BPD035 AS FLOAT64) 
WHEN BPD035 IS NOT NULL THEN SAFE_CAST(BPD035 AS FLOAT64) 
WHEN BPD035 IS NOT NULL THEN SAFE_CAST(BPD035 AS FLOAT64) 
WHEN BPD035 IS NOT NULL THEN SAFE_CAST(BPD035 AS FLOAT64) 
WHEN BPD035 IS NULL THEN NULL 
ELSE NULL 
 END as age_told_had_hypertension, 

CASE
        WHEN BPQ040A = 1 THEN 'Yes' 
WHEN BPQ040A = 2 THEN 'No' 
WHEN BPQ040A = 7 THEN 'Refused' 
WHEN BPQ040A = 9 THEN 'Dont know' 
WHEN BPQ040A IS NULL THEN NULL 
ELSE NULL 
 END as taking_prescription_for_hypertension, 

CASE
        WHEN BPQ050A = 1 THEN 'Yes' 
WHEN BPQ050A = 2 THEN 'No' 
WHEN BPQ050A = 7 THEN 'Refused' 
WHEN BPQ050A = 9 THEN 'Dont know' 
WHEN BPQ050A IS NULL THEN NULL 
ELSE NULL 
 END as now_taking_prescribed_medicine_for_hbp, 

CASE
        WHEN BPQ080 = 1 THEN 'Yes' 
WHEN BPQ080 = 2 THEN 'No' 
WHEN BPQ080 = 7 THEN 'Refused' 
WHEN BPQ080 = 9 THEN 'Dont know' 
WHEN BPQ080 IS NULL THEN NULL 
ELSE NULL 
 END as doctor_told_you_high_cholesterol_level, 

CASE
        WHEN BPQ060 = 1 THEN 'Yes' 
WHEN BPQ060 = 2 THEN 'No' 
WHEN BPQ060 = 7 THEN 'Refused' 
WHEN BPQ060 = 9 THEN 'Dont know' 
WHEN BPQ060 IS NULL THEN NULL 
ELSE NULL 
 END as ever_had_blood_cholesterol_checked, 

CASE
        WHEN BPQ070 = 1 THEN 'Less than 1 year ago,' 
WHEN BPQ070 = 2 THEN '1 year but less than 2 years ago,' 
WHEN BPQ070 = 3 THEN '2 years but less than 5 years ago, or' 
WHEN BPQ070 = 4 THEN '5 years or more?' 
WHEN BPQ070 = 7 THEN 'Refused' 
WHEN BPQ070 = 9 THEN 'Dont know' 
WHEN BPQ070 IS NULL THEN NULL 
ELSE NULL 
 END as when_blood_cholesterol_last_checked, 

CASE
        WHEN BPQ090D = 1 THEN 'Yes' 
WHEN BPQ090D = 2 THEN 'No' 
WHEN BPQ090D = 7 THEN 'Refused' 
WHEN BPQ090D = 9 THEN 'Dont know' 
WHEN BPQ090D IS NULL THEN NULL 
ELSE NULL 
 END as told_to_take_prescriptn_for_cholesterol, 

CASE
        WHEN BPQ100D = 1 THEN 'Yes' 
WHEN BPQ100D = 2 THEN 'No' 
WHEN BPQ100D = 7 THEN 'Refused' 
WHEN BPQ100D = 9 THEN 'Dont know' 
WHEN BPQ100D IS NULL THEN NULL 
ELSE NULL 
 END as now_taking_prescribed_medicine, 

 FROM {{ ref('stg_blood_pressure_cholesterol_questionnaire') }}