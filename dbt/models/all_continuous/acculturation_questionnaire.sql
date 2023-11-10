SELECT
SEQN as respondent_sequence_number,
CASE
    WHEN ACD011A = 1 THEN 'English' 
WHEN ACD011A = 77 THEN 'Refused' 
WHEN ACD011A = 99 THEN 'Don\'t know' 
WHEN ACD011A IS NULL THEN NULL 
ELSE NULL 
 END as speak_english_at_home_nhw_or_nhb,
CASE
    WHEN ACD011B = 8 THEN 'Spanish' 
WHEN ACD011B IS NULL THEN NULL 
ELSE NULL 
 END as speak_spanish_at_home_nhw_or_nhb,
CASE
    WHEN ACD011C = 9 THEN 'Other' 
WHEN ACD011C IS NULL THEN NULL 
ELSE NULL 
 END as speak_other_language_at_home_nhw_or_nhb,
CASE
    WHEN ACD040 = 1 THEN 'Only Spanish,' 
WHEN ACD040 = 2 THEN 'More Spanish than English' 
WHEN ACD040 = 3 THEN 'Both equally' 
WHEN ACD040 = 4 THEN 'More English than Spanish' 
WHEN ACD040 = 5 THEN 'Only English' 
WHEN ACD040 = 7 THEN 'Refused' 
WHEN ACD040 = 9 THEN 'Don\'t know' 
WHEN ACD040 IS NULL THEN NULL 
ELSE NULL 
 END as language_s_spoken_at_home_hispanics,
CASE
    WHEN ACD110 = 1 THEN 'Only Non-English language' 
WHEN ACD110 = 2 THEN 'More Non-English than English' 
WHEN ACD110 = 3 THEN 'Both equally' 
WHEN ACD110 = 4 THEN 'More English than Non-English' 
WHEN ACD110 = 5 THEN 'Only English' 
WHEN ACD110 = 7 THEN 'Refused' 
WHEN ACD110 = 9 THEN 'Don\'t know' 
WHEN ACD110 IS NULL THEN NULL 
ELSE NULL 
 END as language_s_spoken_at_home_asians,
 FROM {{ref('stg_acculturation_questionnaire')}}