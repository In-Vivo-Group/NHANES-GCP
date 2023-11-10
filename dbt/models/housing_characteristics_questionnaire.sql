SELECT
SEQN as respondent_sequence_number,
CASE
    WHEN HOD050 = 1 THEN '1' 
WHEN HOD050 = 2 THEN '2' 
WHEN HOD050 = 3 THEN '3' 
WHEN HOD050 = 4 THEN '4' 
WHEN HOD050 = 5 THEN '5' 
WHEN HOD050 = 6 THEN '6' 
WHEN HOD050 = 7 THEN '7' 
WHEN HOD050 = 8 THEN '8' 
WHEN HOD050 = 9 THEN '9' 
WHEN HOD050 = 10 THEN '10' 
WHEN HOD050 = 11 THEN '11' 
WHEN HOD050 = 12 THEN '12' 
WHEN HOD050 = 13 THEN '13 or more' 
WHEN HOD050 = 777 THEN 'Refused' 
WHEN HOD050 = 999 THEN 'Don't know' 
WHEN HOD050 IS NULL THEN NULL 
ELSE NULL 
 END as number_of_rooms_in_home,
CASE
    WHEN HOQ065 = 1 THEN 'Owned or being bought' 
WHEN HOQ065 = 2 THEN 'Rented' 
WHEN HOQ065 = 3 THEN 'Other arrangement' 
WHEN HOQ065 = 7 THEN 'Refused' 
WHEN HOQ065 = 9 THEN 'Don't know' 
WHEN HOQ065 IS NULL THEN NULL 
ELSE NULL 
 END as home_owned_bought_rented_other,
 FROM {ref('stg_housing_characteristics_questionnaire'})