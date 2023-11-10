SELECT
SEQN as respondent_sequence_number, 

CASE
        WHEN SLQ300 = 'Usual sleep time on weekdays or workdays' THEN 'Value was recorded' 
WHEN SLQ300 = '77777' THEN 'Refused' 
WHEN SLQ300 = '99999' THEN 'Dont know' 
WHEN SLQ300 IS NULL THEN NULL 
ELSE NULL 
 END as usual_sleep_time_on_weekdays_or_workdays, 

CASE
        WHEN SLQ310 = 'Usual wake time on weekdays or workdays' THEN 'Value was recorded' 
WHEN SLQ310 = '77777' THEN 'Refused' 
WHEN SLQ310 = '99999' THEN 'Dont know' 
WHEN SLQ310 IS NULL THEN NULL 
ELSE NULL 
 END as usual_wake_time_on_weekdays_or_workdays, 

CASE
        WHEN SLD012 IS NOT NULL THEN SAFE_CAST(SLD012 AS FLOAT64) 
WHEN SLD012 IS NOT NULL THEN SAFE_CAST(SLD012 AS FLOAT64) 
WHEN SLD012 IS NOT NULL THEN SAFE_CAST(SLD012 AS FLOAT64) 
WHEN SLD012 IS NULL THEN NULL 
ELSE NULL 
 END as sleep_hours_weekdays_or_workdays, 

CASE
        WHEN SLQ320 = 'Usual sleep time on weekends' THEN 'Value was recorded' 
WHEN SLQ320 = '77777' THEN 'Refused' 
WHEN SLQ320 = '99999' THEN 'Dont know' 
WHEN SLQ320 IS NULL THEN NULL 
ELSE NULL 
 END as usual_sleep_time_on_weekends, 

CASE
        WHEN SLQ330 = 'Usual wake time on weekends' THEN 'Value was recorded' 
WHEN SLQ330 = '77777' THEN 'Refused' 
WHEN SLQ330 = '99999' THEN 'Dont know' 
WHEN SLQ330 IS NULL THEN NULL 
ELSE NULL 
 END as usual_wake_time_on_weekends, 

CASE
        WHEN SLD013 IS NOT NULL THEN SAFE_CAST(SLD013 AS FLOAT64) 
WHEN SLD013 IS NOT NULL THEN SAFE_CAST(SLD013 AS FLOAT64) 
WHEN SLD013 IS NOT NULL THEN SAFE_CAST(SLD013 AS FLOAT64) 
WHEN SLD013 IS NULL THEN NULL 
ELSE NULL 
 END as sleep_hours_weekends, 

CASE
        WHEN SLQ030 = 0 THEN 'Never' 
WHEN SLQ030 = 1 THEN 'Rarely - 1-2 nights a week' 
WHEN SLQ030 = 2 THEN 'Occasionally - 3-4 nights a week' 
WHEN SLQ030 = 3 THEN 'Frequently - 5 or more nights a week' 
WHEN SLQ030 = 7 THEN 'Refused' 
WHEN SLQ030 = 9 THEN 'Dont know' 
WHEN SLQ030 IS NULL THEN NULL 
ELSE NULL 
 END as how_often_do_you_snore, 

CASE
        WHEN SLQ040 = 0 THEN 'Never' 
WHEN SLQ040 = 1 THEN 'Rarely - 1-2 nights a week' 
WHEN SLQ040 = 2 THEN 'Occasionally - 3-4 nights a week' 
WHEN SLQ040 = 3 THEN 'Frequently - 5 or more nights a week' 
WHEN SLQ040 = 7 THEN 'Refused' 
WHEN SLQ040 = 9 THEN 'Dont know' 
WHEN SLQ040 IS NULL THEN NULL 
ELSE NULL 
 END as how_often_do_you_snort_or_stop_breathing, 

CASE
        WHEN SLQ050 = 1 THEN 'Yes' 
WHEN SLQ050 = 2 THEN 'No' 
WHEN SLQ050 = 7 THEN 'Refused' 
WHEN SLQ050 = 9 THEN 'Dont know' 
WHEN SLQ050 IS NULL THEN NULL 
ELSE NULL 
 END as ever_told_doctor_had_trouble_sleeping, 

CASE
        WHEN SLQ120 = 0 THEN 'Never' 
WHEN SLQ120 = 1 THEN 'Rarely - 1 time a month' 
WHEN SLQ120 = 2 THEN 'Sometimes - 2-4 times a month' 
WHEN SLQ120 = 3 THEN 'Often- 5-15 times a month' 
WHEN SLQ120 = 4 THEN 'Almost always - 16-30 times a month' 
WHEN SLQ120 = 7 THEN 'Refused' 
WHEN SLQ120 = 9 THEN 'Dont know' 
WHEN SLQ120 IS NULL THEN NULL 
ELSE NULL 
 END as how_often_feel_overly_sleepy_during_day, 

 FROM {{ ref('stg_sleep_disorders_questionnaire') }}