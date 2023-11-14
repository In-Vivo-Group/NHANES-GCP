SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN SAFE_CAST(DUQ200 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DUQ200 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(DUQ200 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DUQ200 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DUQ200 IS NULL THEN NULL 
ELSE SAFE_CAST(DUQ200 AS STRING) 
 END as ever_used_marijuana_or_hashish, 

CASE
            WHEN DUQ210 IS NULL THEN NULL 
ELSE SAFE_CAST(DUQ210 AS STRING) 
 END as age_when_first_tried_marijuana, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DUQ211,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DUQ211,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DUQ211,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DUQ211,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN DUQ211 IS NULL THEN NULL 
ELSE SAFE_CAST(DUQ211 AS STRING) 
 END as used_marijuana_every_month_for_a_year, 

CASE
            WHEN SAFE_CAST(DUQ213 AS FLOAT64) > 57.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DUQ213 IS NULL THEN NULL 
ELSE SAFE_CAST(DUQ213 AS FLOAT64) 
 END as age_started_regularly_using_marijuana, 

CASE
            WHEN SAFE_CAST(DUQ215Q AS FLOAT64) > 1001.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DUQ215Q IS NULL THEN NULL 
ELSE SAFE_CAST(DUQ215Q AS FLOAT64) 
 END as time_since_last_used_marijuana_regularly, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DUQ215U,'.0','') AS INT64) AS STRING) = '1' THEN 'Days' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DUQ215U,'.0','') AS INT64) AS STRING) = '2' THEN 'Weeks' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DUQ215U,'.0','') AS INT64) AS STRING) = '3' THEN 'Months' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DUQ215U,'.0','') AS INT64) AS STRING) = '4' THEN 'Years' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DUQ215U,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DUQ215U,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN DUQ215U IS NULL THEN NULL 
ELSE SAFE_CAST(DUQ215U AS STRING) 
 END as time_since_used_marijuana_regularly_unit, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DUQ217,'.0','') AS INT64) AS STRING) = '1' THEN 'Once per month' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DUQ217,'.0','') AS INT64) AS STRING) = '2' THEN '2-3 times per month' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DUQ217,'.0','') AS INT64) AS STRING) = '3' THEN '4-8 times per month (about 1-2 times per 
  week)' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DUQ217,'.0','') AS INT64) AS STRING) = '4' THEN '9-24 times per month (about 3-6 times per 
  week)' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DUQ217,'.0','') AS INT64) AS STRING) = '5' THEN '25-30 times per month (one or more times 
  per day)' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DUQ217,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DUQ217,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN DUQ217 IS NULL THEN NULL 
ELSE SAFE_CAST(DUQ217 AS STRING) 
 END as how_often_would_you_use_marijuana, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DUQ219,'.0','') AS INT64) AS STRING) = '1' THEN '1 per day' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DUQ219,'.0','') AS INT64) AS STRING) = '2' THEN '2 per day' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DUQ219,'.0','') AS INT64) AS STRING) = '3' THEN '3-5 per day' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DUQ219,'.0','') AS INT64) AS STRING) = '4' THEN 'Six or more per day' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DUQ219,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DUQ219,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN DUQ219 IS NULL THEN NULL 
ELSE SAFE_CAST(DUQ219 AS STRING) 
 END as how_many_joints_or_pipes_smoke_in_a_day, 

CASE
            WHEN DUQ220Q IS NULL THEN NULL 
ELSE SAFE_CAST(DUQ220Q AS STRING) 
 END as last_time_used_marijuana_or_hashish, 

CASE
            WHEN SAFE_CAST(DUQ220U AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Days' -- categorize numeric values
WHEN SAFE_CAST(DUQ220U AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Weeks' -- categorize numeric values
WHEN SAFE_CAST(DUQ220U AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Months' -- categorize numeric values
WHEN SAFE_CAST(DUQ220U AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN 'Years' -- categorize numeric values
WHEN SAFE_CAST(DUQ220U AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DUQ220U AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DUQ220U IS NULL THEN NULL 
ELSE SAFE_CAST(DUQ220U AS STRING) 
 END as last_time_used_marijuana_or_hashish_unit, 

CASE
            WHEN DUQ230 IS NULL THEN NULL 
ELSE SAFE_CAST(DUQ230 AS STRING) 
 END as days_used_marijuana_or_hashish_month, 

CASE
            WHEN SAFE_CAST(DUQ240 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DUQ240 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(DUQ240 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DUQ240 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DUQ240 IS NULL THEN NULL 
ELSE SAFE_CAST(DUQ240 AS STRING) 
 END as ever_used_cocaine_heroin_methamphetamine, 

CASE
            WHEN SAFE_CAST(DUQ250 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DUQ250 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(DUQ250 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DUQ250 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DUQ250 IS NULL THEN NULL 
ELSE SAFE_CAST(DUQ250 AS STRING) 
 END as ever_use_any_form_of_cocaine, 

CASE
            WHEN DUQ260 IS NULL THEN NULL 
ELSE SAFE_CAST(DUQ260 AS STRING) 
 END as age_first_used_cocaine, 

CASE
            WHEN DUQ270Q IS NULL THEN NULL 
ELSE SAFE_CAST(DUQ270Q AS STRING) 
 END as last_time_you_used_cocaine_in_any_form, 

CASE
            WHEN SAFE_CAST(DUQ270U AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Days' -- categorize numeric values
WHEN SAFE_CAST(DUQ270U AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Weeks' -- categorize numeric values
WHEN SAFE_CAST(DUQ270U AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Months' -- categorize numeric values
WHEN SAFE_CAST(DUQ270U AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN 'Years' -- categorize numeric values
WHEN SAFE_CAST(DUQ270U AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DUQ270U AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DUQ270U IS NULL THEN NULL 
ELSE SAFE_CAST(DUQ270U AS STRING) 
 END as last_time_you_used_cocaine_unit, 

CASE
            WHEN SAFE_CAST(DUQ272 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Once' -- categorize numeric values
WHEN SAFE_CAST(DUQ272 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN '2-5 times' -- categorize numeric values
WHEN SAFE_CAST(DUQ272 AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN '6-19 times' -- categorize numeric values
WHEN SAFE_CAST(DUQ272 AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN '20-49 times' -- categorize numeric values
WHEN SAFE_CAST(DUQ272 AS FLOAT64) = SAFE_CAST(5 AS FLOAT64) THEN '50-99 times' -- categorize numeric values
WHEN SAFE_CAST(DUQ272 AS FLOAT64) = SAFE_CAST(6 AS FLOAT64) THEN '100 times or more' -- categorize numeric values
WHEN SAFE_CAST(DUQ272 AS FLOAT64) = SAFE_CAST(77 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DUQ272 AS FLOAT64) = SAFE_CAST(99 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DUQ272 IS NULL THEN NULL 
ELSE SAFE_CAST(DUQ272 AS STRING) 
 END as of_time_you_used_cocaine, 

CASE
            WHEN DUQ280 IS NULL THEN NULL 
ELSE SAFE_CAST(DUQ280 AS STRING) 
 END as of_days_used_cocaine_month, 

CASE
            WHEN SAFE_CAST(DUQ290 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DUQ290 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(DUQ290 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DUQ290 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DUQ290 IS NULL THEN NULL 
ELSE SAFE_CAST(DUQ290 AS STRING) 
 END as ever_used_heroin, 

CASE
            WHEN DUQ300 IS NULL THEN NULL 
ELSE SAFE_CAST(DUQ300 AS STRING) 
 END as age_first_used_heroin, 

CASE
            WHEN DUQ310Q IS NULL THEN NULL 
ELSE SAFE_CAST(DUQ310Q AS STRING) 
 END as last_time_used_heroin, 

CASE
            WHEN SAFE_CAST(DUQ310U AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Days' -- categorize numeric values
WHEN SAFE_CAST(DUQ310U AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Weeks' -- categorize numeric values
WHEN SAFE_CAST(DUQ310U AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Months' -- categorize numeric values
WHEN SAFE_CAST(DUQ310U AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN 'Years' -- categorize numeric values
WHEN SAFE_CAST(DUQ310U AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DUQ310U AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DUQ310U IS NULL THEN NULL 
ELSE SAFE_CAST(DUQ310U AS STRING) 
 END as last_time_used_heroin_unit, 

CASE
            WHEN SAFE_CAST(DUQ320 AS FLOAT64) > 32.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DUQ320 IS NULL THEN NULL 
ELSE SAFE_CAST(DUQ320 AS FLOAT64) 
 END as of_days_used_heroin_month, 

CASE
            WHEN SAFE_CAST(DUQ330 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DUQ330 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(DUQ330 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DUQ330 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DUQ330 IS NULL THEN NULL 
ELSE SAFE_CAST(DUQ330 AS STRING) 
 END as ever_used_methamphetamine, 

CASE
            WHEN DUQ340 IS NULL THEN NULL 
ELSE SAFE_CAST(DUQ340 AS STRING) 
 END as age_first_used_methamphetamine, 

CASE
            WHEN DUQ350Q IS NULL THEN NULL 
ELSE SAFE_CAST(DUQ350Q AS STRING) 
 END as last_time_used_methamphetamine, 

CASE
            WHEN SAFE_CAST(DUQ350U AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Days' -- categorize numeric values
WHEN SAFE_CAST(DUQ350U AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Weeks' -- categorize numeric values
WHEN SAFE_CAST(DUQ350U AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Months' -- categorize numeric values
WHEN SAFE_CAST(DUQ350U AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN 'Years' -- categorize numeric values
WHEN SAFE_CAST(DUQ350U AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DUQ350U AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DUQ350U IS NULL THEN NULL 
ELSE SAFE_CAST(DUQ350U AS STRING) 
 END as last_time_used_methamphetamine_unit, 

CASE
            WHEN SAFE_CAST(DUQ352 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Once' -- categorize numeric values
WHEN SAFE_CAST(DUQ352 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN '2-5 times' -- categorize numeric values
WHEN SAFE_CAST(DUQ352 AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN '6-19 times' -- categorize numeric values
WHEN SAFE_CAST(DUQ352 AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN '20-49 times' -- categorize numeric values
WHEN SAFE_CAST(DUQ352 AS FLOAT64) = SAFE_CAST(5 AS FLOAT64) THEN '50-99 times' -- categorize numeric values
WHEN SAFE_CAST(DUQ352 AS FLOAT64) = SAFE_CAST(6 AS FLOAT64) THEN '100 times or more' -- categorize numeric values
WHEN SAFE_CAST(DUQ352 AS FLOAT64) = SAFE_CAST(77 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DUQ352 AS FLOAT64) = SAFE_CAST(99 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DUQ352 IS NULL THEN NULL 
ELSE SAFE_CAST(DUQ352 AS STRING) 
 END as times_used_methamphetamine, 

CASE
            WHEN DUQ360 IS NULL THEN NULL 
ELSE SAFE_CAST(DUQ360 AS STRING) 
 END as days_used_methamphetamine_month, 

CASE
            WHEN SAFE_CAST(DUQ370 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DUQ370 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(DUQ370 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DUQ370 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DUQ370 IS NULL THEN NULL 
ELSE SAFE_CAST(DUQ370 AS STRING) 
 END as ever_use_a_needle_to_inject_illegal_drug, 

CASE
            WHEN SAFE_CAST(DUQ380A AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Cocaine' -- categorize numeric values
WHEN SAFE_CAST(DUQ380A AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DUQ380A AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DUQ380A IS NULL THEN NULL 
ELSE SAFE_CAST(DUQ380A AS STRING) 
 END as drugs_injected_cocaine, 

CASE
            WHEN SAFE_CAST(DUQ380B AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Heroin' -- categorize numeric values
WHEN DUQ380B IS NULL THEN NULL 
ELSE SAFE_CAST(DUQ380B AS STRING) 
 END as drugs_injected_heroin, 

CASE
            WHEN SAFE_CAST(DUQ380C AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Methamphetamine' -- categorize numeric values
WHEN DUQ380C IS NULL THEN NULL 
ELSE SAFE_CAST(DUQ380C AS STRING) 
 END as drugs_injected_methamphetamine, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DUD380F,'.0','') AS INT64) AS STRING) = '6' THEN 'Steroids or any other drugs' -- categorize string values 
WHEN DUD380F IS NULL THEN NULL 
ELSE SAFE_CAST(DUD380F AS STRING) 
 END as drugs_injected_steroids_or_other_drugs, 

CASE
            WHEN DUQ390 IS NULL THEN NULL 
ELSE SAFE_CAST(DUQ390 AS STRING) 
 END as age_first_injected_drugs, 

CASE
            WHEN DUQ400Q IS NULL THEN NULL 
ELSE SAFE_CAST(DUQ400Q AS STRING) 
 END as last_time_injected_drugs, 

CASE
            WHEN SAFE_CAST(DUQ400U AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Days' -- categorize numeric values
WHEN SAFE_CAST(DUQ400U AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Weeks' -- categorize numeric values
WHEN SAFE_CAST(DUQ400U AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Months' -- categorize numeric values
WHEN SAFE_CAST(DUQ400U AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN 'Years' -- categorize numeric values
WHEN SAFE_CAST(DUQ400U AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DUQ400U AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DUQ400U IS NULL THEN NULL 
ELSE SAFE_CAST(DUQ400U AS STRING) 
 END as last_time_injected_drugs_unit, 

CASE
            WHEN SAFE_CAST(DUQ410 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Once' -- categorize numeric values
WHEN SAFE_CAST(DUQ410 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN '2-5 times' -- categorize numeric values
WHEN SAFE_CAST(DUQ410 AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN '6-19 times' -- categorize numeric values
WHEN SAFE_CAST(DUQ410 AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN '20-49 times' -- categorize numeric values
WHEN SAFE_CAST(DUQ410 AS FLOAT64) = SAFE_CAST(5 AS FLOAT64) THEN '50-99 times' -- categorize numeric values
WHEN SAFE_CAST(DUQ410 AS FLOAT64) = SAFE_CAST(6 AS FLOAT64) THEN '100 times or more' -- categorize numeric values
WHEN SAFE_CAST(DUQ410 AS FLOAT64) = SAFE_CAST(77 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DUQ410 AS FLOAT64) = SAFE_CAST(99 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DUQ410 IS NULL THEN NULL 
ELSE SAFE_CAST(DUQ410 AS STRING) 
 END as times_injected_drugs_lifetime, 

CASE
            WHEN SAFE_CAST(DUQ420 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'More than once a day,' -- categorize numeric values
WHEN SAFE_CAST(DUQ420 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'About once a day,' -- categorize numeric values
WHEN SAFE_CAST(DUQ420 AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'At least once a week but not every day,' -- categorize numeric values
WHEN SAFE_CAST(DUQ420 AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN 'At least once a month but not every week,' -- categorize numeric values
WHEN SAFE_CAST(DUQ420 AS FLOAT64) = SAFE_CAST(5 AS FLOAT64) THEN 'Less than once a month' -- categorize numeric values
WHEN SAFE_CAST(DUQ420 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DUQ420 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DUQ420 IS NULL THEN NULL 
ELSE SAFE_CAST(DUQ420 AS STRING) 
 END as how_often_did_you_inject_drugs, 

-- DUQ426 as DUQ426, -- not included in table but included in docs without transformation logic 

CASE
            WHEN SAFE_CAST(DUQ430 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DUQ430 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(DUQ430 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DUQ430 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DUQ430 IS NULL THEN NULL 
ELSE SAFE_CAST(DUQ430 AS STRING) 
 END as ever_been_in_rehabilitation_program, 

 FROM {{ ref('stg_drug_use_questionnaire') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/DUQ_J.htm
        