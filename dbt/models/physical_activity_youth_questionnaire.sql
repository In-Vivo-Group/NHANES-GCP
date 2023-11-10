SELECT
SEQN as respondent_sequence_number,
CASE
    WHEN PAQ706 = 0 THEN '0 days' 
WHEN PAQ706 = 1 THEN '1 day' 
WHEN PAQ706 = 2 THEN '2 days' 
WHEN PAQ706 = 3 THEN '3 days' 
WHEN PAQ706 = 4 THEN '4 days' 
WHEN PAQ706 = 5 THEN '5 days' 
WHEN PAQ706 = 6 THEN '6 days' 
WHEN PAQ706 = 7 THEN '7 days' 
WHEN PAQ706 = 77 THEN 'Refused' 
WHEN PAQ706 = 99 THEN 'Don't know' 
WHEN PAQ706 IS NULL THEN NULL 
ELSE NULL 
 END as days_physically_active_at_least_60_min,
CASE
    WHEN PAQ710 = 0 THEN 'Less than 1 hour,' 
WHEN PAQ710 = 1 THEN '1 hour,' 
WHEN PAQ710 = 2 THEN '2 hours,' 
WHEN PAQ710 = 3 THEN '3 hours,' 
WHEN PAQ710 = 4 THEN '4 hours, or' 
WHEN PAQ710 = 5 THEN '5 hours or more, or' 
WHEN PAQ710 = 8 THEN '{You don't/SP does not} watch TV or videos' 
WHEN PAQ710 = 77 THEN 'Refused' 
WHEN PAQ710 = 99 THEN 'Don't know' 
WHEN PAQ710 IS NULL THEN NULL 
ELSE NULL 
 END as hours_watch_tv_or_videos_past_30_days,
CASE
    WHEN PAQ715 = 0 THEN 'Less than 1 hour,' 
WHEN PAQ715 = 1 THEN '1 hour,' 
WHEN PAQ715 = 2 THEN '2 hours,' 
WHEN PAQ715 = 3 THEN '3 hours,' 
WHEN PAQ715 = 4 THEN '4 hours, or' 
WHEN PAQ715 = 5 THEN '5 hours or more, or' 
WHEN PAQ715 = 8 THEN '{you do not/SP does not} use a computer outside of school' 
WHEN PAQ715 = 77 THEN 'Refused' 
WHEN PAQ715 = 99 THEN 'Don't know' 
WHEN PAQ715 IS NULL THEN NULL 
ELSE NULL 
 END as hours_use_computer_past_30_days,
 FROM {ref('stg_physical_activity_youth_questionnaire'})