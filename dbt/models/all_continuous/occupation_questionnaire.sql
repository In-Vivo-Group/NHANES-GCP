SELECT
SEQN as respondent_sequence_number, 

CASE
        WHEN OCD150 = 1 THEN 'Working at a job or business,' 
WHEN OCD150 = 2 THEN 'With a job or business but not at work,' 
WHEN OCD150 = 3 THEN 'Looking for work, or' 
WHEN OCD150 = 4 THEN 'Not working at a job or business?' 
WHEN OCD150 = 7 THEN 'Refused' 
WHEN OCD150 = 9 THEN 'Dont know' 
WHEN OCD150 IS NULL THEN NULL 
ELSE NULL 
 END as type_of_work_done_last_week, 

CASE
        WHEN OCQ180 IS NOT NULL THEN OCQ180 
WHEN OCQ180 IS NOT NULL THEN OCQ180 
WHEN OCQ180 IS NOT NULL THEN OCQ180 
WHEN OCQ180 IS NOT NULL THEN OCQ180 
WHEN OCQ180 IS NOT NULL THEN OCQ180 
WHEN OCQ180 IS NULL THEN NULL 
ELSE NULL 
 END as hours_worked_last_week_at_all_jobs, 

CASE
        WHEN OCQ210 = 1 THEN 'Yes' 
WHEN OCQ210 = 2 THEN 'No' 
WHEN OCQ210 = 7 THEN 'Refused' 
WHEN OCQ210 = 9 THEN 'Dont know' 
WHEN OCQ210 IS NULL THEN NULL 
ELSE NULL 
 END as usually_work_35_or_more_hours_per_week, 

CASE
        WHEN OCQ260 = 1 THEN 'An employee of a private company, business, or individual for wages, salary, or commission.' 
WHEN OCQ260 = 2 THEN 'A federal government employee' 
WHEN OCQ260 = 3 THEN 'A state government employee' 
WHEN OCQ260 = 4 THEN 'A local government employee' 
WHEN OCQ260 = 5 THEN 'Self-employed in own business, professional practice or farm.' 
WHEN OCQ260 = 6 THEN 'Working without pay in family business or farm' 
WHEN OCQ260 = 77 THEN 'Refused' 
WHEN OCQ260 = 99 THEN 'Dont know' 
WHEN OCQ260 IS NULL THEN NULL 
ELSE NULL 
 END as description_of_job_work_situation, 

CASE
        WHEN OCD270 IS NOT NULL THEN OCD270 
WHEN OCD270 IS NOT NULL THEN OCD270 
WHEN OCD270 IS NOT NULL THEN OCD270 
WHEN OCD270 IS NOT NULL THEN OCD270 
WHEN OCD270 IS NOT NULL THEN OCD270 
WHEN OCD270 IS NULL THEN NULL 
ELSE NULL 
 END as number_of_months_working_in_the_main_job, 

CASE
        WHEN OCQ670 = '1' THEN 'Traditional 9 AM to 5 PM day' 
WHEN OCQ670 = '2' THEN 'Evening or nights' 
WHEN OCQ670 = '3' THEN 'Early mornings' 
WHEN OCQ670 = '5' THEN 'Variable (early mornings, days, and nights)' 
WHEN OCQ670 = '7' THEN 'Refused' 
WHEN OCQ670 = '9' THEN 'Dont know' 
WHEN OCQ670 IS NULL THEN NULL 
ELSE NULL 
 END as overall_work_schedule_past_3_months, 

CASE
        WHEN OCQ380 = 1 THEN 'Taking care of house or family' 
WHEN OCQ380 = 2 THEN 'Going to school' 
WHEN OCQ380 = 3 THEN 'Retired' 
WHEN OCQ380 = 4 THEN 'Unable to work for health reasons' 
WHEN OCQ380 = 5 THEN 'On layoff' 
WHEN OCQ380 = 6 THEN 'Disabled' 
WHEN OCQ380 = 7 THEN 'Other' 
WHEN OCQ380 = 77 THEN 'Refused' 
WHEN OCQ380 = 99 THEN 'Dont know' 
WHEN OCQ380 IS NULL THEN NULL 
ELSE NULL 
 END as main_reason_did_not_work_last_week, 

CASE
        WHEN OCD390G = 1 THEN 'Enter occupation' 
WHEN OCD390G = 2 THEN 'Same as current occupation' 
WHEN OCD390G = 3 THEN 'Armed forces' 
WHEN OCD390G = 4 THEN 'Never worked' 
WHEN OCD390G = 7 THEN 'Refused' 
WHEN OCD390G = 9 THEN 'Dont know' 
WHEN OCD390G IS NULL THEN NULL 
ELSE NULL 
 END as kind_of_work_you_have_done_the_longest, 

CASE
        WHEN OCD395 IS NOT NULL THEN OCD395 
WHEN OCD395 IS NOT NULL THEN OCD395 
WHEN OCD395 IS NOT NULL THEN OCD395 
WHEN OCD395 IS NOT NULL THEN OCD395 
WHEN OCD395 IS NOT NULL THEN OCD395 
WHEN OCD395 IS NULL THEN NULL 
ELSE NULL 
 END as duration_of_longest_job_months, 

 FROM {{ ref('stg_occupation_questionnaire') }}