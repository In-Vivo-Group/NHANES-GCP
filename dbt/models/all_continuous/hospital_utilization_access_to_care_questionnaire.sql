SELECT
SEQN as respondent_sequence_number, 

CASE
        WHEN HUQ010 = 1 THEN 'Excellent,' 
WHEN HUQ010 = 2 THEN 'Very good,' 
WHEN HUQ010 = 3 THEN 'Good,' 
WHEN HUQ010 = 4 THEN 'Fair, or' 
WHEN HUQ010 = 5 THEN 'Poor?' 
WHEN HUQ010 = 7 THEN 'Refused' 
WHEN HUQ010 = 9 THEN 'Dont know' 
WHEN HUQ010 IS NULL THEN NULL 
ELSE NULL 
 END as general_health_condition, 

CASE
        WHEN HUQ020 = 1 THEN 'Better,' 
WHEN HUQ020 = 2 THEN 'Worse, or' 
WHEN HUQ020 = 3 THEN 'About the same?' 
WHEN HUQ020 = 7 THEN 'Refused' 
WHEN HUQ020 = 9 THEN 'Dont know' 
WHEN HUQ020 IS NULL THEN NULL 
ELSE NULL 
 END as health_now_compared_with_1_year_ago, 

CASE
        WHEN HUQ030 = 1 THEN 'Yes' 
WHEN HUQ030 = 2 THEN 'There is no place' 
WHEN HUQ030 = 3 THEN 'There is more than one place' 
WHEN HUQ030 = 7 THEN 'Refused' 
WHEN HUQ030 = 9 THEN 'Dont know' 
WHEN HUQ030 IS NULL THEN NULL 
ELSE NULL 
 END as routine_place_to_go_for_healthcare, 

CASE
        WHEN HUQ041 = '1' THEN 'Clinic or health center' 
WHEN HUQ041 = '2' THEN 'Doctors office or HMO' 
WHEN HUQ041 = '3' THEN 'Hospital emergency room' 
WHEN HUQ041 = '4' THEN 'Hospital outpatient department' 
WHEN HUQ041 = '5' THEN 'Some other place' 
WHEN HUQ041 = '6' THEN 'Doesnt go to one place most often' 
WHEN HUQ041 = '77' THEN 'Refused' 
WHEN HUQ041 = '99' THEN 'Dont know' 
WHEN HUQ041 IS NULL THEN NULL 
ELSE NULL 
 END as type_place_most_often_go_for_healthcare, 

CASE
        WHEN HUQ051 = '0' THEN 'None' 
WHEN HUQ051 = '1' THEN '1' 
WHEN HUQ051 = '2' THEN '2 to 3' 
WHEN HUQ051 = '3' THEN '4 to 5' 
WHEN HUQ051 = '4' THEN '6 to 7' 
WHEN HUQ051 = '5' THEN '8 to 9' 
WHEN HUQ051 = '6' THEN '10 to 12' 
WHEN HUQ051 = '7' THEN '13 to 15' 
WHEN HUQ051 = '8' THEN '16 or more' 
WHEN HUQ051 = '77' THEN 'Refused' 
WHEN HUQ051 = '99' THEN 'Dont know' 
WHEN HUQ051 IS NULL THEN NULL 
ELSE NULL 
 END as times_receive_healthcare_over_past_year, 

CASE
        WHEN HUQ061 = '1' THEN '6 months or less,' 
WHEN HUQ061 = '2' THEN 'more than 6 months, but not more than 1 year ago,' 
WHEN HUQ061 = '3' THEN 'more than 1 year, but not more than 2 years ago,' 
WHEN HUQ061 = '4' THEN 'more than 2 years, but not more than 5 years ago,' 
WHEN HUQ061 = '5' THEN 'more than 5 years ago, or' 
WHEN HUQ061 = '6' THEN 'Never?' 
WHEN HUQ061 = '77' THEN 'Refused' 
WHEN HUQ061 = '99' THEN 'Dont know' 
WHEN HUQ061 IS NULL THEN NULL 
ELSE NULL 
 END as how_long_since_last_healthcare_visit, 

CASE
        WHEN HUQ071 = '1' THEN 'Yes' 
WHEN HUQ071 = '2' THEN 'No' 
WHEN HUQ071 = '7' THEN 'Refused' 
WHEN HUQ071 = '9' THEN 'Dont know' 
WHEN HUQ071 IS NULL THEN NULL 
ELSE NULL 
 END as overnight_hospital_patient_in_last_year, 

CASE
        WHEN HUD080 = 1 THEN '1' 
WHEN HUD080 = 2 THEN '2' 
WHEN HUD080 = 3 THEN '3' 
WHEN HUD080 = 4 THEN '4' 
WHEN HUD080 = 5 THEN '5' 
WHEN HUD080 = 6 THEN '6 times or more' 
WHEN HUD080 = 77777 THEN 'Refused' 
WHEN HUD080 = 99999 THEN 'Dont know' 
WHEN HUD080 IS NULL THEN NULL 
ELSE NULL 
 END as times_overnite_hospital_patient_last_yr, 

CASE
        WHEN HUQ090 = 1 THEN 'Yes' 
WHEN HUQ090 = 2 THEN 'No' 
WHEN HUQ090 = 7 THEN 'Refused' 
WHEN HUQ090 = 9 THEN 'Dont know' 
WHEN HUQ090 IS NULL THEN NULL 
ELSE NULL 
 END as seen_mental_health_professional_past_yr, 

 FROM {{ ref('stg_hospital_utilization_access_to_care_questionnaire') }}