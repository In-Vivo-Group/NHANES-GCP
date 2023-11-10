SELECT
SEQN as respondent_sequence_number,
CASE
    WHEN SMD460 = 0 THEN 'No one in houseold is a smoker' 
WHEN SMD460 = 1 THEN '1 household member is a smoker' 
WHEN SMD460 = 2 THEN '2 household members are smokers' 
WHEN SMD460 = 3 THEN '3 or more household members are smokers' 
WHEN SMD460 = 777 THEN 'Refused' 
WHEN SMD460 = 999 THEN 'Don't know' 
WHEN SMD460 IS NULL THEN NULL 
ELSE NULL 
 END as of_people_who_live_here_smoke_tobacco,
CASE
    WHEN SMD470 = 0 THEN 'No one smokes inside the house' 
WHEN SMD470 = 1 THEN '1 household member smokes inside the house' 
WHEN SMD470 = 2 THEN '2 household members smoke inside the house' 
WHEN SMD470 = 3 THEN '3 or more household members smoke inside the house' 
WHEN SMD470 = 777 THEN 'Refused' 
WHEN SMD470 = 999 THEN 'Don't know' 
WHEN SMD470 IS NULL THEN NULL 
ELSE NULL 
 END as of_people_who_smoke_inside_this_home,
CASE
    WHEN SMD480 = 0 THEN '0' 
WHEN SMD480 = 1 THEN '1' 
WHEN SMD480 = 2 THEN '2' 
WHEN SMD480 = 3 THEN '3' 
WHEN SMD480 = 4 THEN '4' 
WHEN SMD480 = 5 THEN '5' 
WHEN SMD480 = 6 THEN '6' 
WHEN SMD480 = 7 THEN '7' 
WHEN SMD480 = 77 THEN 'Refused' 
WHEN SMD480 = 99 THEN 'Don't know' 
WHEN SMD480 IS NULL THEN NULL 
ELSE NULL 
 END as in_past_week_days_person_smoked_inside,
 FROM {ref('stg_smoking_household_smokers_questionnaire'})