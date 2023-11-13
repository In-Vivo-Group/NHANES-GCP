SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN HOD050 = 1 THEN '1' -- categorize numeric values
WHEN HOD050 = 2 THEN '2' -- categorize numeric values
WHEN HOD050 = 3 THEN '3' -- categorize numeric values
WHEN HOD050 = 4 THEN '4' -- categorize numeric values
WHEN HOD050 = 5 THEN '5' -- categorize numeric values
WHEN HOD050 = 6 THEN '6' -- categorize numeric values
WHEN HOD050 = 7 THEN '7' -- categorize numeric values
WHEN HOD050 = 8 THEN '8' -- categorize numeric values
WHEN HOD050 = 9 THEN '9' -- categorize numeric values
WHEN HOD050 = 10 THEN '10' -- categorize numeric values
WHEN HOD050 = 11 THEN '11' -- categorize numeric values
WHEN HOD050 = 12 THEN '12' -- categorize numeric values
WHEN HOD050 = 13 THEN '13 or more' -- categorize numeric values
WHEN HOD050 = 777 THEN 'Refused' -- categorize numeric values
WHEN HOD050 = 999 THEN 'Dont know' -- categorize numeric values
WHEN HOD050 IS NULL THEN NULL 
ELSE HOD050 
 END as number_of_rooms_in_home, 

CASE
            WHEN HOQ065 = 1 THEN 'Owned or being bought' -- categorize numeric values
WHEN HOQ065 = 2 THEN 'Rented' -- categorize numeric values
WHEN HOQ065 = 3 THEN 'Other arrangement' -- categorize numeric values
WHEN HOQ065 = 7 THEN 'Refused' -- categorize numeric values
WHEN HOQ065 = 9 THEN 'Dont know' -- categorize numeric values
WHEN HOQ065 IS NULL THEN NULL 
ELSE HOQ065 
 END as home_owned_bought_rented_other, 

 FROM {{ ref('stg_housing_characteristics_questionnaire') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/HOQ_J.htm
        