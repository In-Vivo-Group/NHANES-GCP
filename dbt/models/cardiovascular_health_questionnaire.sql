SELECT
SEQN as respondent_sequence_number,
CASE
    WHEN CDQ001 = 1 THEN 'Yes' 
WHEN CDQ001 = 2 THEN 'No' 
WHEN CDQ001 = 7 THEN 'Refused' 
WHEN CDQ001 = 9 THEN 'Don't know' 
WHEN CDQ001 IS NULL THEN NULL 
ELSE NULL 
 END as sp_ever_had_pain_or_discomfort_in_chest,
CASE
    WHEN CDQ002 = 1 THEN 'Yes' 
WHEN CDQ002 = 2 THEN 'No' 
WHEN CDQ002 = 3 THEN 'Never walks uphill or hurries' 
WHEN CDQ002 = 7 THEN 'Refused' 
WHEN CDQ002 = 9 THEN 'Don't know' 
WHEN CDQ002 IS NULL THEN NULL 
ELSE NULL 
 END as sp_get_it_walking_uphill_or_in_a_hurry,
CASE
    WHEN CDQ003 = 1 THEN 'Yes' 
WHEN CDQ003 = 2 THEN 'No' 
WHEN CDQ003 = 7 THEN 'Refused' 
WHEN CDQ003 = 9 THEN 'Don't know' 
WHEN CDQ003 IS NULL THEN NULL 
ELSE NULL 
 END as during_an_ordinary_pace_on_level_ground,
CDQ003A as CDQ003A, -- Could not automatically decode
CASE
    WHEN CDQ004 = 1 THEN 'Stop or slow down' 
WHEN CDQ004 = 2 THEN 'Continue at the same pace' 
WHEN CDQ004 = 7 THEN 'Refused' 
WHEN CDQ004 = 9 THEN 'Don't know' 
WHEN CDQ004 IS NULL THEN NULL 
ELSE NULL 
 END as if_so_does_sp_continue_or_slow_down,
CASE
    WHEN CDQ005 = 1 THEN 'Relieved' 
WHEN CDQ005 = 2 THEN 'Not Relieved' 
WHEN CDQ005 = 7 THEN 'Refused' 
WHEN CDQ005 = 9 THEN 'Don't know' 
WHEN CDQ005 IS NULL THEN NULL 
ELSE NULL 
 END as does_standing_relieve_pain_discomfort,
CASE
    WHEN CDQ006 = 1 THEN '10 minutes or less' 
WHEN CDQ006 = 2 THEN 'More than 10 minutes' 
WHEN CDQ006 = 7 THEN 'Refused' 
WHEN CDQ006 = 9 THEN 'Don't know' 
WHEN CDQ006 IS NULL THEN NULL 
ELSE NULL 
 END as how_soon_is_the_pain_relieved,
CASE
    WHEN CDQ009A = 1 THEN 'Pain in right arm' 
WHEN CDQ009A = 77 THEN 'Refused' 
WHEN CDQ009A = 99 THEN 'Don't know' 
WHEN CDQ009A IS NULL THEN NULL 
ELSE NULL 
 END as pain_in_right_arm,
CASE
    WHEN CDQ009B = 2 THEN 'Pain in right chest' 
WHEN CDQ009B IS NULL THEN NULL 
ELSE NULL 
 END as pain_in_right_chest,
CASE
    WHEN CDQ009C = 3 THEN 'Pain in neck' 
WHEN CDQ009C IS NULL THEN NULL 
ELSE NULL 
 END as pain_in_neck,
CASE
    WHEN CDQ009D = 4 THEN 'Pain in upper sternum' 
WHEN CDQ009D IS NULL THEN NULL 
ELSE NULL 
 END as pain_in_upper_sternum,
CASE
    WHEN CDQ009E = 5 THEN 'Pain in lower sternum' 
WHEN CDQ009E IS NULL THEN NULL 
ELSE NULL 
 END as pain_in_lower_sternum,
CASE
    WHEN CDQ009F = 6 THEN 'Pain in left chest' 
WHEN CDQ009F IS NULL THEN NULL 
ELSE NULL 
 END as pain_in_left_chest,
CASE
    WHEN CDQ009G = 7 THEN 'Pain in left arm' 
WHEN CDQ009G IS NULL THEN NULL 
ELSE NULL 
 END as pain_in_left_arm,
CASE
    WHEN CDQ009H = 8 THEN 'Pain in epigastric area' 
WHEN CDQ009H IS NULL THEN NULL 
ELSE NULL 
 END as pain_in_epigastric_area,
CASE
    WHEN CDQ008 = 1 THEN 'Yes' 
WHEN CDQ008 = 2 THEN 'No' 
WHEN CDQ008 = 7 THEN 'Refused' 
WHEN CDQ008 = 9 THEN 'Don't know' 
WHEN CDQ008 IS NULL THEN NULL 
ELSE NULL 
 END as severe_pain_in_chest_more_than_half_hour,
CASE
    WHEN CDQ010 = 1 THEN 'Yes' 
WHEN CDQ010 = 2 THEN 'No' 
WHEN CDQ010 = 7 THEN 'Refused' 
WHEN CDQ010 = 9 THEN 'Don't know' 
WHEN CDQ010 IS NULL THEN NULL 
ELSE NULL 
 END as shortness_of_breath_on_stairs_inclines,
 FROM {ref('stg_cardiovascular_health_questionnaire'})