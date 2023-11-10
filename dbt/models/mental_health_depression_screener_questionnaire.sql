SELECT
SEQN as respondent_sequence_number,
CASE
    WHEN DPQ010 = 0 THEN 'Not at all' 
WHEN DPQ010 = 1 THEN 'Several days' 
WHEN DPQ010 = 2 THEN 'More than half the days' 
WHEN DPQ010 = 3 THEN 'Nearly every day' 
WHEN DPQ010 = 7 THEN 'Refused' 
WHEN DPQ010 = 9 THEN 'Don't know' 
WHEN DPQ010 IS NULL THEN NULL 
ELSE NULL 
 END as have_little_interest_in_doing_things,
CASE
    WHEN DPQ020 = 0 THEN 'Not at all' 
WHEN DPQ020 = 1 THEN 'Several days' 
WHEN DPQ020 = 2 THEN 'More than half the days' 
WHEN DPQ020 = 3 THEN 'Nearly every day' 
WHEN DPQ020 = 7 THEN 'Refused' 
WHEN DPQ020 = 9 THEN 'Don't know' 
WHEN DPQ020 IS NULL THEN NULL 
ELSE NULL 
 END as feeling_down_depressed_or_hopeless,
CASE
    WHEN DPQ030 = 0 THEN 'Not at all' 
WHEN DPQ030 = 1 THEN 'Several days' 
WHEN DPQ030 = 2 THEN 'More than half the days' 
WHEN DPQ030 = 3 THEN 'Nearly every day' 
WHEN DPQ030 = 7 THEN 'Refused' 
WHEN DPQ030 = 9 THEN 'Don't know' 
WHEN DPQ030 IS NULL THEN NULL 
ELSE NULL 
 END as trouble_sleeping_or_sleeping_too_much,
CASE
    WHEN DPQ040 = 0 THEN 'Not at all' 
WHEN DPQ040 = 1 THEN 'Several days' 
WHEN DPQ040 = 2 THEN 'More than half the days' 
WHEN DPQ040 = 3 THEN 'Nearly every day' 
WHEN DPQ040 = 7 THEN 'Refused' 
WHEN DPQ040 = 9 THEN 'Don't know' 
WHEN DPQ040 IS NULL THEN NULL 
ELSE NULL 
 END as feeling_tired_or_having_little_energy,
CASE
    WHEN DPQ050 = 0 THEN 'Not at all' 
WHEN DPQ050 = 1 THEN 'Several days' 
WHEN DPQ050 = 2 THEN 'More than half the days' 
WHEN DPQ050 = 3 THEN 'Nearly every day' 
WHEN DPQ050 = 7 THEN 'Refused' 
WHEN DPQ050 = 9 THEN 'Don't know' 
WHEN DPQ050 IS NULL THEN NULL 
ELSE NULL 
 END as poor_appetite_or_overeating,
CASE
    WHEN DPQ060 = 0 THEN 'Not at all' 
WHEN DPQ060 = 1 THEN 'Several days' 
WHEN DPQ060 = 2 THEN 'More than half the days' 
WHEN DPQ060 = 3 THEN 'Nearly every day' 
WHEN DPQ060 = 7 THEN 'Refused' 
WHEN DPQ060 = 9 THEN 'Don't know' 
WHEN DPQ060 IS NULL THEN NULL 
ELSE NULL 
 END as feeling_bad_about_yourself,
CASE
    WHEN DPQ070 = 0 THEN 'Not at all' 
WHEN DPQ070 = 1 THEN 'Several days' 
WHEN DPQ070 = 2 THEN 'More than half the days' 
WHEN DPQ070 = 3 THEN 'Nearly every day' 
WHEN DPQ070 = 7 THEN 'Refused' 
WHEN DPQ070 = 9 THEN 'Don't know' 
WHEN DPQ070 IS NULL THEN NULL 
ELSE NULL 
 END as trouble_concentrating_on_things,
CASE
    WHEN DPQ080 = 0 THEN 'Not at all' 
WHEN DPQ080 = 1 THEN 'Several days' 
WHEN DPQ080 = 2 THEN 'More than half the days' 
WHEN DPQ080 = 3 THEN 'Nearly every day' 
WHEN DPQ080 = 7 THEN 'Refused' 
WHEN DPQ080 = 9 THEN 'Don't know' 
WHEN DPQ080 IS NULL THEN NULL 
ELSE NULL 
 END as moving_or_speaking_slowly_or_too_fast,
CASE
    WHEN DPQ090 = 0 THEN 'Not at all' 
WHEN DPQ090 = 1 THEN 'Several days' 
WHEN DPQ090 = 2 THEN 'More than half the days' 
WHEN DPQ090 = 3 THEN 'Nearly every day' 
WHEN DPQ090 = 7 THEN 'Refused' 
WHEN DPQ090 = 9 THEN 'Don't know' 
WHEN DPQ090 IS NULL THEN NULL 
ELSE NULL 
 END as thought_you_would_be_better_off_dead,
CASE
    WHEN DPQ100 = 0 THEN 'Not at all difficult,' 
WHEN DPQ100 = 1 THEN 'Somewhat difficult,' 
WHEN DPQ100 = 2 THEN 'Very difficult,' 
WHEN DPQ100 = 3 THEN 'Extremely difficult' 
WHEN DPQ100 = 7 THEN 'Refused' 
WHEN DPQ100 = 9 THEN 'Don't know' 
WHEN DPQ100 IS NULL THEN NULL 
ELSE NULL 
 END as difficulty_these_problems_have_caused,
 FROM {ref('stg_mental_health_depression_screener_questionnaire'})