SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN SLQ300 = 'Usual sleep time on weekdays or workdays' THEN 'Value was recorded' -- categorize string values 
WHEN SLQ300 = '77777' THEN 'Refused' -- categorize string values 
WHEN SLQ300 = '99999' THEN 'Dont know' -- categorize string values 
WHEN SLQ300 IS NULL THEN NULL 
ELSE SLQ300 
 END as usual_sleep_time_on_weekdays_or_workdays, 

CASE
            WHEN SLQ310 = 'Usual wake time on weekdays or workdays' THEN 'Value was recorded' -- categorize string values 
WHEN SLQ310 = '77777' THEN 'Refused' -- categorize string values 
WHEN SLQ310 = '99999' THEN 'Dont know' -- categorize string values 
WHEN SLQ310 IS NULL THEN NULL 
ELSE SLQ310 
 END as usual_wake_time_on_weekdays_or_workdays, 

CASE
            WHEN SAFE_CAST(SLD012 AS FLOAT64) > 13.5 THEN NULL -- remove missing, dont know, categories in float field  
WHEN SLD012 IS NULL THEN NULL 
ELSE SLD012 
 END as sleep_hours_weekdays_or_workdays, 

CASE
            WHEN SLQ320 = 'Usual sleep time on weekends' THEN 'Value was recorded' -- categorize string values 
WHEN SLQ320 = '77777' THEN 'Refused' -- categorize string values 
WHEN SLQ320 = '99999' THEN 'Dont know' -- categorize string values 
WHEN SLQ320 IS NULL THEN NULL 
ELSE SLQ320 
 END as usual_sleep_time_on_weekends, 

CASE
            WHEN SLQ330 = 'Usual wake time on weekends' THEN 'Value was recorded' -- categorize string values 
WHEN SLQ330 = '77777' THEN 'Refused' -- categorize string values 
WHEN SLQ330 = '99999' THEN 'Dont know' -- categorize string values 
WHEN SLQ330 IS NULL THEN NULL 
ELSE SLQ330 
 END as usual_wake_time_on_weekends, 

CASE
            WHEN SAFE_CAST(SLD013 AS FLOAT64) > 13.5 THEN NULL -- remove missing, dont know, categories in float field  
WHEN SLD013 IS NULL THEN NULL 
ELSE SLD013 
 END as sleep_hours_weekends, 

CASE
            WHEN SLQ030 = 0 THEN 'Never' -- categorize numeric values
WHEN SLQ030 = 1 THEN 'Rarely - 1-2 nights a week' -- categorize numeric values
WHEN SLQ030 = 2 THEN 'Occasionally - 3-4 nights a week' -- categorize numeric values
WHEN SLQ030 = 3 THEN 'Frequently - 5 or more nights a week' -- categorize numeric values
WHEN SLQ030 = 7 THEN 'Refused' -- categorize numeric values
WHEN SLQ030 = 9 THEN 'Dont know' -- categorize numeric values
WHEN SLQ030 IS NULL THEN NULL 
ELSE SLQ030 
 END as how_often_do_you_snore, 

CASE
            WHEN SLQ040 = 0 THEN 'Never' -- categorize numeric values
WHEN SLQ040 = 1 THEN 'Rarely - 1-2 nights a week' -- categorize numeric values
WHEN SLQ040 = 2 THEN 'Occasionally - 3-4 nights a week' -- categorize numeric values
WHEN SLQ040 = 3 THEN 'Frequently - 5 or more nights a week' -- categorize numeric values
WHEN SLQ040 = 7 THEN 'Refused' -- categorize numeric values
WHEN SLQ040 = 9 THEN 'Dont know' -- categorize numeric values
WHEN SLQ040 IS NULL THEN NULL 
ELSE SLQ040 
 END as how_often_do_you_snort_or_stop_breathing, 

CASE
            WHEN SLQ050 = 1 THEN 'Yes' -- categorize numeric values
WHEN SLQ050 = 2 THEN 'No' -- categorize numeric values
WHEN SLQ050 = 7 THEN 'Refused' -- categorize numeric values
WHEN SLQ050 = 9 THEN 'Dont know' -- categorize numeric values
WHEN SLQ050 IS NULL THEN NULL 
ELSE SLQ050 
 END as ever_told_doctor_had_trouble_sleeping, 

CASE
            WHEN SLQ120 = 0 THEN 'Never' -- categorize numeric values
WHEN SLQ120 = 1 THEN 'Rarely - 1 time a month' -- categorize numeric values
WHEN SLQ120 = 2 THEN 'Sometimes - 2-4 times a month' -- categorize numeric values
WHEN SLQ120 = 3 THEN 'Often- 5-15 times a month' -- categorize numeric values
WHEN SLQ120 = 4 THEN 'Almost always - 16-30 times a month' -- categorize numeric values
WHEN SLQ120 = 7 THEN 'Refused' -- categorize numeric values
WHEN SLQ120 = 9 THEN 'Dont know' -- categorize numeric values
WHEN SLQ120 IS NULL THEN NULL 
ELSE SLQ120 
 END as how_often_feel_overly_sleepy_during_day, 

 FROM {{ ref('stg_sleep_disorders_questionnaire') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/SLQ_J.htm
        