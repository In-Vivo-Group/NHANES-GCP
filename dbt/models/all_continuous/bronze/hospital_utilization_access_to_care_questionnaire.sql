SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN HUQ010 = 1 THEN 'Excellent,' -- categorize numeric values
WHEN HUQ010 = 2 THEN 'Very good,' -- categorize numeric values
WHEN HUQ010 = 3 THEN 'Good,' -- categorize numeric values
WHEN HUQ010 = 4 THEN 'Fair, or' -- categorize numeric values
WHEN HUQ010 = 5 THEN 'Poor?' -- categorize numeric values
WHEN HUQ010 = 7 THEN 'Refused' -- categorize numeric values
WHEN HUQ010 = 9 THEN 'Dont know' -- categorize numeric values
WHEN HUQ010 IS NULL THEN NULL 
ELSE HUQ010 
 END as general_health_condition, 

HUQ015 as HUQ015, -- could not automatically decode name of variable or transformation logic 

CASE
            WHEN HUQ020 = 1 THEN 'Better,' -- categorize numeric values
WHEN HUQ020 = 2 THEN 'Worse, or' -- categorize numeric values
WHEN HUQ020 = 3 THEN 'About the same?' -- categorize numeric values
WHEN HUQ020 = 7 THEN 'Refused' -- categorize numeric values
WHEN HUQ020 = 9 THEN 'Dont know' -- categorize numeric values
WHEN HUQ020 IS NULL THEN NULL 
ELSE HUQ020 
 END as health_now_compared_with_1_year_ago, 

CASE
            WHEN HUQ030 = 1 THEN 'Yes' -- categorize numeric values
WHEN HUQ030 = 2 THEN 'There is no place' -- categorize numeric values
WHEN HUQ030 = 3 THEN 'There is more than one place' -- categorize numeric values
WHEN HUQ030 = 7 THEN 'Refused' -- categorize numeric values
WHEN HUQ030 = 9 THEN 'Dont know' -- categorize numeric values
WHEN HUQ030 IS NULL THEN NULL 
ELSE HUQ030 
 END as routine_place_to_go_for_healthcare, 

CASE
            WHEN HUQ041 = '1' THEN 'Clinic or health center' -- categorize string values 
WHEN HUQ041 = '2' THEN 'Doctors office or HMO' -- categorize string values 
WHEN HUQ041 = '3' THEN 'Hospital emergency room' -- categorize string values 
WHEN HUQ041 = '4' THEN 'Hospital outpatient department' -- categorize string values 
WHEN HUQ041 = '5' THEN 'Some other place' -- categorize string values 
WHEN HUQ041 = '6' THEN 'Doesnt go to one place most often' -- categorize string values 
WHEN HUQ041 = '77' THEN 'Refused' -- categorize string values 
WHEN HUQ041 = '99' THEN 'Dont know' -- categorize string values 
WHEN HUQ041 IS NULL THEN NULL 
ELSE HUQ041 
 END as type_place_most_often_go_for_healthcare, 

CASE
            WHEN HUQ051 = '0' THEN 'None' -- categorize string values 
WHEN HUQ051 = '1' THEN '1' -- categorize string values 
WHEN HUQ051 = '2' THEN '2 to 3' -- categorize string values 
WHEN HUQ051 = '3' THEN '4 to 5' -- categorize string values 
WHEN HUQ051 = '4' THEN '6 to 7' -- categorize string values 
WHEN HUQ051 = '5' THEN '8 to 9' -- categorize string values 
WHEN HUQ051 = '6' THEN '10 to 12' -- categorize string values 
WHEN HUQ051 = '7' THEN '13 to 15' -- categorize string values 
WHEN HUQ051 = '8' THEN '16 or more' -- categorize string values 
WHEN HUQ051 = '77' THEN 'Refused' -- categorize string values 
WHEN HUQ051 = '99' THEN 'Dont know' -- categorize string values 
WHEN HUQ051 IS NULL THEN NULL 
ELSE HUQ051 
 END as times_receive_healthcare_over_past_year, 

CASE
            WHEN HUQ061 = '1' THEN '6 months or less,' -- categorize string values 
WHEN HUQ061 = '2' THEN 'more than 6 months, but not more than 1 year ago,' -- categorize string values 
WHEN HUQ061 = '3' THEN 'more than 1 year, but not more than 2 years ago,' -- categorize string values 
WHEN HUQ061 = '4' THEN 'more than 2 years, but not more than 5 years ago,' -- categorize string values 
WHEN HUQ061 = '5' THEN 'more than 5 years ago, or' -- categorize string values 
WHEN HUQ061 = '6' THEN 'Never?' -- categorize string values 
WHEN HUQ061 = '77' THEN 'Refused' -- categorize string values 
WHEN HUQ061 = '99' THEN 'Dont know' -- categorize string values 
WHEN HUQ061 IS NULL THEN NULL 
ELSE HUQ061 
 END as how_long_since_last_healthcare_visit, 

CASE
            WHEN HUQ071 = '1' THEN 'Yes' -- categorize string values 
WHEN HUQ071 = '2' THEN 'No' -- categorize string values 
WHEN HUQ071 = '7' THEN 'Refused' -- categorize string values 
WHEN HUQ071 = '9' THEN 'Dont know' -- categorize string values 
WHEN HUQ071 IS NULL THEN NULL 
ELSE HUQ071 
 END as overnight_hospital_patient_in_last_year, 

CASE
            WHEN HUD080 = 1 THEN '1' -- categorize numeric values
WHEN HUD080 = 2 THEN '2' -- categorize numeric values
WHEN HUD080 = 3 THEN '3' -- categorize numeric values
WHEN HUD080 = 4 THEN '4' -- categorize numeric values
WHEN HUD080 = 5 THEN '5' -- categorize numeric values
WHEN HUD080 = 6 THEN '6 times or more' -- categorize numeric values
WHEN HUD080 = 77777 THEN 'Refused' -- categorize numeric values
WHEN HUD080 = 99999 THEN 'Dont know' -- categorize numeric values
WHEN HUD080 IS NULL THEN NULL 
ELSE HUD080 
 END as times_overnite_hospital_patient_last_yr, 

HUQ085 as HUQ085, -- could not automatically decode name of variable or transformation logic 

CASE
            WHEN HUQ090 = 1 THEN 'Yes' -- categorize numeric values
WHEN HUQ090 = 2 THEN 'No' -- categorize numeric values
WHEN HUQ090 = 7 THEN 'Refused' -- categorize numeric values
WHEN HUQ090 = 9 THEN 'Dont know' -- categorize numeric values
WHEN HUQ090 IS NULL THEN NULL 
ELSE HUQ090 
 END as seen_mental_health_professional_past_yr, 

 FROM {{ ref('stg_hospital_utilization_access_to_care_questionnaire') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/HUQ_J.htm
        