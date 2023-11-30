SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCD150 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Working at a job or business,' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCD150 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'With a job or business but not at work,' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCD150 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Looking for work, or' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCD150 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Not working at a job or business?' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCD150 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCD150 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN OCD150 IS NULL THEN NULL 
ELSE SAFE_CAST(OCD150 AS STRING) 
 END as type_of_work_done_last_week, 

CASE
WHEN OCQ180 IS NULL THEN NULL 
ELSE SAFE_CAST(OCQ180 AS FLOAT64) 
 END as hours_worked_last_week_at_all_jobs, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ210 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ210 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ210 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ210 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN OCQ210 IS NULL THEN NULL 
ELSE SAFE_CAST(OCQ210 AS STRING) 
 END as usually_work_35_or_more_hours_per_week, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ260 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'An employee of a private company, business, or individual for wages, salary, or commission.' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ260 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'A federal government employee' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ260 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'A state government employee' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ260 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'A local government employee' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ260 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN 'Self-employed in own business, professional practice or farm.' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ260 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(6 AS FLOAT64),0) AS INT64) THEN 'Working without pay in family business or farm' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ260 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(77 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ260 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(99 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN OCQ260 IS NULL THEN NULL 
ELSE SAFE_CAST(OCQ260 AS STRING) 
 END as description_of_job_work_situation, 

CASE
WHEN OCD270 IS NULL THEN NULL 
ELSE SAFE_CAST(OCD270 AS FLOAT64) 
 END as number_of_months_working_in_the_main_job, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCQ670 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Traditional 9 AM to 5 PM day' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCQ670 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'Evening or nights' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCQ670 AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN 'Early mornings' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCQ670 AS FLOAT64),0) AS INT64) AS STRING) = '5' THEN 'Variable (early mornings, days, and nights)' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCQ670 AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCQ670 AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN OCQ670 IS NULL THEN NULL 
ELSE SAFE_CAST(OCQ670 AS STRING) 
 END as overall_work_schedule_past_3_months, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ380 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Taking care of house or family' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ380 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Going to school' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ380 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Retired' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ380 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Unable to work for health reasons' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ380 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN 'On layoff' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ380 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(6 AS FLOAT64),0) AS INT64) THEN 'Disabled' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ380 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Other' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ380 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(77 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ380 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(99 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN OCQ380 IS NULL THEN NULL 
ELSE SAFE_CAST(OCQ380 AS STRING) 
 END as main_reason_did_not_work_last_week, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCD390G AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Enter occupation' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCD390G AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Same as current occupation' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCD390G AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Armed forces' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCD390G AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Never worked' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCD390G AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCD390G AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN OCD390G IS NULL THEN NULL 
ELSE SAFE_CAST(OCD390G AS STRING) 
 END as kind_of_work_you_have_done_the_longest, 

CASE
WHEN OCD395 IS NULL THEN NULL 
ELSE SAFE_CAST(OCD395 AS FLOAT64) 
 END as duration_of_longest_job_months, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD383 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Taking care of house or family' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD383 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'Going to school' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD383 AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN 'Retired' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD383 AS FLOAT64),0) AS INT64) AS STRING) = '4' THEN 'Unable to work for health reasons/Disabled' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD383 AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Other' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD383 AS FLOAT64),0) AS INT64) AS STRING) = '77' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD383 AS FLOAT64),0) AS INT64) AS STRING) = '99' THEN 'Dont know' -- categorize string values 
WHEN OCD383 IS NULL THEN NULL 
ELSE SAFE_CAST(OCD383 AS STRING) 
 END as main_reason_did_not_work_last_week_OCD383, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCQ600 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Always' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCQ600 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'Usually' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCQ600 AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN 'About half the time' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCQ600 AS FLOAT64),0) AS INT64) AS STRING) = '4' THEN 'Seldom' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCQ600 AS FLOAT64),0) AS INT64) AS STRING) = '5' THEN 'Never' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCQ600 AS FLOAT64),0) AS INT64) AS STRING) = '6' THEN 'No noise exposure past 12 months' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCQ600 AS FLOAT64),0) AS INT64) AS STRING) = '77' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCQ600 AS FLOAT64),0) AS INT64) AS STRING) = '99' THEN 'Dont know' -- categorize string values 
WHEN OCQ600 IS NULL THEN NULL 
ELSE SAFE_CAST(OCQ600 AS STRING) 
 END as how_often_wear_protective_hearing_device, 

CASE
WHEN SAFE_CAST(OCQ610 AS FLOAT64) > 41.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN OCQ610 IS NULL THEN NULL 
ELSE SAFE_CAST(OCQ610 AS FLOAT64) 
 END as how_many_days_mo_exposed_to_loud_noise, 

CASE
WHEN SAFE_CAST(OCQ630 AS FLOAT64) > 31.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN OCQ630 IS NULL THEN NULL 
ELSE SAFE_CAST(OCQ630 AS FLOAT64) 
 END as how_many_hrs_a_day_exposed_to_loud_noise, 

CASE
WHEN SAFE_CAST(OCQ640 AS FLOAT64) > 41.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN OCQ640 IS NULL THEN NULL 
ELSE SAFE_CAST(OCQ640 AS FLOAT64) 
 END as days_per_mo_exposed_to_very_loud_noise, 

CASE
WHEN SAFE_CAST(OCQ660 AS FLOAT64) > 31.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN OCQ660 IS NULL THEN NULL 
ELSE SAFE_CAST(OCQ660 AS FLOAT64) 
 END as hours_per_day_exposed_to_very_loud_noise, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD231 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Agriculture, Forestry, Fishing' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD231 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'Mining' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD231 AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN 'Utilities' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD231 AS FLOAT64),0) AS INT64) AS STRING) = '4' THEN 'Construction' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD231 AS FLOAT64),0) AS INT64) AS STRING) = '5' THEN 'Manufacturing: Durable Good' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD231 AS FLOAT64),0) AS INT64) AS STRING) = '6' THEN 'Manufacturing: Non-Durable Goods' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD231 AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Wholesale Trade' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD231 AS FLOAT64),0) AS INT64) AS STRING) = '8' THEN 'Retail Trade' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD231 AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Transportation, Warehousing' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD231 AS FLOAT64),0) AS INT64) AS STRING) = '10' THEN 'Information' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD231 AS FLOAT64),0) AS INT64) AS STRING) = '11' THEN 'Finance, Insurance' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD231 AS FLOAT64),0) AS INT64) AS STRING) = '12' THEN 'Real Estate, Rental, Leasing' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD231 AS FLOAT64),0) AS INT64) AS STRING) = '13' THEN 'Professional, Technical Services' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD231 AS FLOAT64),0) AS INT64) AS STRING) = '14' THEN 'Management,Business,Cleaning/Waste Services' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD231 AS FLOAT64),0) AS INT64) AS STRING) = '15' THEN 'Education Services' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD231 AS FLOAT64),0) AS INT64) AS STRING) = '16' THEN 'Health Care, Social Assistance' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD231 AS FLOAT64),0) AS INT64) AS STRING) = '17' THEN 'Arts, Entertainment, Recreation' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD231 AS FLOAT64),0) AS INT64) AS STRING) = '18' THEN 'Accommodation, Food Services' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD231 AS FLOAT64),0) AS INT64) AS STRING) = '19' THEN 'Other Services' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD231 AS FLOAT64),0) AS INT64) AS STRING) = '20' THEN 'Private Households' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD231 AS FLOAT64),0) AS INT64) AS STRING) = '21' THEN 'Public Administration' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD231 AS FLOAT64),0) AS INT64) AS STRING) = '22' THEN 'Armed Forces' -- categorize string values 
WHEN OCD231 IS NULL THEN NULL 
ELSE SAFE_CAST(OCD231 AS STRING) 
 END as industry_group_code_current_job, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD241 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Management Occupations' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD241 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'Business, Financial Operations Occupations' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD241 AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN 'Computer, Mathematical Occupations' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD241 AS FLOAT64),0) AS INT64) AS STRING) = '4' THEN 'Architecture, Engineering Occupations' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD241 AS FLOAT64),0) AS INT64) AS STRING) = '5' THEN 'Life, Physical, Social Science Occupations' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD241 AS FLOAT64),0) AS INT64) AS STRING) = '6' THEN 'Community, Social Services Occupations' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD241 AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Legal Occupations' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD241 AS FLOAT64),0) AS INT64) AS STRING) = '8' THEN 'Education, Training, Library Occupations' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD241 AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Arts, Design, Entertainment, Sports, Media Occupations' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD241 AS FLOAT64),0) AS INT64) AS STRING) = '10' THEN 'Healthcare Practitioner, Technical Occupations' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD241 AS FLOAT64),0) AS INT64) AS STRING) = '11' THEN 'Healthcare Support Occupations' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD241 AS FLOAT64),0) AS INT64) AS STRING) = '12' THEN 'Protective Service Occupations' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD241 AS FLOAT64),0) AS INT64) AS STRING) = '13' THEN 'Food Preparation, Serving Occupations' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD241 AS FLOAT64),0) AS INT64) AS STRING) = '14' THEN 'Building & Grounds Cleaning, Maintenance Occupations' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD241 AS FLOAT64),0) AS INT64) AS STRING) = '15' THEN 'Personal Care, Service Occupations' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD241 AS FLOAT64),0) AS INT64) AS STRING) = '16' THEN 'Sales & Related Occupations' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD241 AS FLOAT64),0) AS INT64) AS STRING) = '17' THEN 'Office, Administrative Support Occupations' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD241 AS FLOAT64),0) AS INT64) AS STRING) = '18' THEN 'Farming, Fishing, Forestry Occupations' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD241 AS FLOAT64),0) AS INT64) AS STRING) = '19' THEN 'Construction, Extraction Occupations' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD241 AS FLOAT64),0) AS INT64) AS STRING) = '20' THEN 'Installation, Maintenance, Repair Occupations' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD241 AS FLOAT64),0) AS INT64) AS STRING) = '21' THEN 'Production Occupations' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD241 AS FLOAT64),0) AS INT64) AS STRING) = '22' THEN 'Transportation, Material Moving Occupations' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD241 AS FLOAT64),0) AS INT64) AS STRING) = '23' THEN 'Armed Forces' -- categorize string values 
WHEN OCD241 IS NULL THEN NULL 
ELSE SAFE_CAST(OCD241 AS STRING) 
 END as occupation_group_code_current_job, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD391 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Agriculture, Forestry, Fishing' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD391 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'Mining' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD391 AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN 'Utilities' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD391 AS FLOAT64),0) AS INT64) AS STRING) = '4' THEN 'Construction' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD391 AS FLOAT64),0) AS INT64) AS STRING) = '5' THEN 'Manufacturing: Durable Goods' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD391 AS FLOAT64),0) AS INT64) AS STRING) = '6' THEN 'Manufacturing: Non-Durable Goods' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD391 AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Wholesale Trade' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD391 AS FLOAT64),0) AS INT64) AS STRING) = '8' THEN 'Retail Trade' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD391 AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Transportation, Warehousing' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD391 AS FLOAT64),0) AS INT64) AS STRING) = '10' THEN 'Information' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD391 AS FLOAT64),0) AS INT64) AS STRING) = '11' THEN 'Finance, Insurance' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD391 AS FLOAT64),0) AS INT64) AS STRING) = '12' THEN 'Real Estate, Rental, Leasing' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD391 AS FLOAT64),0) AS INT64) AS STRING) = '13' THEN 'Professional, Technical Services' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD391 AS FLOAT64),0) AS INT64) AS STRING) = '14' THEN 'Management,Business,Cleaning/Waste Services' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD391 AS FLOAT64),0) AS INT64) AS STRING) = '15' THEN 'Education Services' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD391 AS FLOAT64),0) AS INT64) AS STRING) = '16' THEN 'Health Care, Social Assistance' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD391 AS FLOAT64),0) AS INT64) AS STRING) = '17' THEN 'Arts, Entertainment, Recreation' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD391 AS FLOAT64),0) AS INT64) AS STRING) = '18' THEN 'Accommodation, Food Services' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD391 AS FLOAT64),0) AS INT64) AS STRING) = '19' THEN 'Other Services' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD391 AS FLOAT64),0) AS INT64) AS STRING) = '20' THEN 'Private Households' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD391 AS FLOAT64),0) AS INT64) AS STRING) = '21' THEN 'Public Administration' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD391 AS FLOAT64),0) AS INT64) AS STRING) = '22' THEN 'Armed Forces' -- categorize string values 
WHEN OCD391 IS NULL THEN NULL 
ELSE SAFE_CAST(OCD391 AS STRING) 
 END as industry_group_code_longest_job, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD392 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Management Occupations' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD392 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'Business, Financial Operations Occupations' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD392 AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN 'Computer, Mathematical Occupations' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD392 AS FLOAT64),0) AS INT64) AS STRING) = '4' THEN 'Architecture, Engineering Occupations' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD392 AS FLOAT64),0) AS INT64) AS STRING) = '5' THEN 'Life, Physical, Social Science Occupations' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD392 AS FLOAT64),0) AS INT64) AS STRING) = '6' THEN 'Community, Social Services Occupations' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD392 AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Legal Occupations' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD392 AS FLOAT64),0) AS INT64) AS STRING) = '8' THEN 'Education, Training, Library Occupations' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD392 AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Arts, Design, Entertainment, Sports, Media Occupations' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD392 AS FLOAT64),0) AS INT64) AS STRING) = '10' THEN 'Healthcare Practitioner, Technical Occupations' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD392 AS FLOAT64),0) AS INT64) AS STRING) = '11' THEN 'Healthcare Support Occupations' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD392 AS FLOAT64),0) AS INT64) AS STRING) = '12' THEN 'Protective Service Occupations' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD392 AS FLOAT64),0) AS INT64) AS STRING) = '13' THEN 'Food Preparation, Serving Occupations' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD392 AS FLOAT64),0) AS INT64) AS STRING) = '14' THEN 'Building & Grounds Cleaning, Maintenance Occupations' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD392 AS FLOAT64),0) AS INT64) AS STRING) = '15' THEN 'Personal Care, Service Occupations' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD392 AS FLOAT64),0) AS INT64) AS STRING) = '16' THEN 'Sales & Related Occupations' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD392 AS FLOAT64),0) AS INT64) AS STRING) = '17' THEN 'Office, Administrative Support Occupations' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD392 AS FLOAT64),0) AS INT64) AS STRING) = '18' THEN 'Farming, Fishing, Forestry Occupations' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD392 AS FLOAT64),0) AS INT64) AS STRING) = '19' THEN 'Construction, Extraction Occupations' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD392 AS FLOAT64),0) AS INT64) AS STRING) = '20' THEN 'Installation, Maintenance, Repair Occupations' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD392 AS FLOAT64),0) AS INT64) AS STRING) = '21' THEN 'Production Occupations' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD392 AS FLOAT64),0) AS INT64) AS STRING) = '22' THEN 'Transportation, Material Moving Occupations' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD392 AS FLOAT64),0) AS INT64) AS STRING) = '23' THEN 'Armed Forces' -- categorize string values 
WHEN OCD392 IS NULL THEN NULL 
ELSE SAFE_CAST(OCD392 AS STRING) 
 END as occupation_group_code_longest_job, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCQ275 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCQ275 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCQ275 AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCQ275 AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN OCQ275 IS NULL THEN NULL 
ELSE SAFE_CAST(OCQ275 AS STRING) 
 END as has_anyone_smoked_where_you_work, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCQ510 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCQ510 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCQ510 AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCQ510 AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN OCQ510 IS NULL THEN NULL 
ELSE SAFE_CAST(OCQ510 AS STRING) 
 END as ever_had_work_exposure_to_mineral_dusts, 

CASE
WHEN SAFE_CAST(OCQ520 AS FLOAT64) > 76.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN OCQ520 IS NULL THEN NULL 
ELSE SAFE_CAST(OCQ520 AS FLOAT64) 
 END as of_years_exposed_to_mineral_dusts, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCQ530 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCQ530 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCQ530 AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCQ530 AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN OCQ530 IS NULL THEN NULL 
ELSE SAFE_CAST(OCQ530 AS STRING) 
 END as ever_had_work_exposure_to_organic_dusts, 

CASE
WHEN SAFE_CAST(OCQ540 AS FLOAT64) > 76.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN OCQ540 IS NULL THEN NULL 
ELSE SAFE_CAST(OCQ540 AS FLOAT64) 
 END as of_years_exposed_to_organic_dusts, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCQ550 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCQ550 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCQ550 AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCQ550 AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN OCQ550 IS NULL THEN NULL 
ELSE SAFE_CAST(OCQ550 AS STRING) 
 END as ever_exposed_to_exhaust_fumes_at_work, 

CASE
WHEN SAFE_CAST(OCQ560 AS FLOAT64) > 66.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN OCQ560 IS NULL THEN NULL 
ELSE SAFE_CAST(OCQ560 AS FLOAT64) 
 END as of_years_exposed_to_exhaust_fumes, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCQ570 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCQ570 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCQ570 AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCQ570 AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN OCQ570 IS NULL THEN NULL 
ELSE SAFE_CAST(OCQ570 AS STRING) 
 END as ever_had_work_exposure_to_other_fumes, 

CASE
WHEN SAFE_CAST(OCQ580 AS FLOAT64) > 71.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN OCQ580 IS NULL THEN NULL 
ELSE SAFE_CAST(OCQ580 AS FLOAT64) 
 END as of_years_exposed_to_other_fumes, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCQ265 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'A regular daytime schedule' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCQ265 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'A regular evening shift' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCQ265 AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN 'A regular night shift' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCQ265 AS FLOAT64),0) AS INT64) AS STRING) = '4' THEN 'A rotating shift' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCQ265 AS FLOAT64),0) AS INT64) AS STRING) = '5' THEN 'Another schedule' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCQ265 AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCQ265 AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN OCQ265 IS NULL THEN NULL 
ELSE SAFE_CAST(OCQ265 AS STRING) 
 END as which_best_describes_hours_worked, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ290G AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Enter number' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ290G AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Never' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ290G AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ290G AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN OCQ290G IS NULL THEN NULL 
ELSE SAFE_CAST(OCQ290G AS STRING) 
 END as smell_tobacco_smoke_at_work, 

CASE
WHEN OCQ290Q IS NULL THEN NULL 
ELSE SAFE_CAST(OCQ290Q AS FLOAT64) 
 END as hrs_day_smell_tobacco_smoke_at_work, 

CASE
WHEN OCD230 IS NULL THEN NULL 
ELSE SAFE_CAST(OCD230 AS FLOAT64) 
 END as industry_group_code_current_job_OCD230, 

CASE
WHEN OCD240 IS NULL THEN NULL 
ELSE SAFE_CAST(OCD240 AS FLOAT64) 
 END as occupation_group_code_current_job_OCD240, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCQ295 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCQ295 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCQ295 AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCQ295 AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN OCQ295 IS NULL THEN NULL 
ELSE SAFE_CAST(OCQ295 AS STRING) 
 END as wear_hearing_protection_current_job, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ340 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ340 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ340 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ340 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN OCQ340 IS NULL THEN NULL 
ELSE SAFE_CAST(OCQ340 AS STRING) 
 END as ever_exposed_to_loud_work_noise_3_months, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ350 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ350 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ350 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ350 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN OCQ350 IS NULL THEN NULL 
ELSE SAFE_CAST(OCQ350 AS STRING) 
 END as currently_exposed_to_loud_noise_at_work, 

CASE
WHEN OCQ360 IS NULL THEN NULL 
ELSE SAFE_CAST(OCQ360 AS FLOAT64) 
 END as avg_hours_loud_noise_exposure_now, 

CASE
WHEN OCD390 IS NULL THEN NULL 
ELSE SAFE_CAST(OCD390 AS FLOAT64) 
 END as occupation_group_code_longest_job_OCD390, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ420 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ420 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ420 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ420 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN OCQ420 IS NULL THEN NULL 
ELSE SAFE_CAST(OCQ420 AS STRING) 
 END as loud_job_noise_ever_exposed_3_months, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ430 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ430 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ430 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ430 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN OCQ430 IS NULL THEN NULL 
ELSE SAFE_CAST(OCQ430 AS STRING) 
 END as loud_job_noise_3_months_on_longest_job, 

CASE
WHEN OCQ440 IS NULL THEN NULL 
ELSE SAFE_CAST(OCQ440 AS FLOAT64) 
 END as hours_day_constant_loud_noise_on_job, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ450 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ450 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ450 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ450 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN OCQ450 IS NULL THEN NULL 
ELSE SAFE_CAST(OCQ450 AS STRING) 
 END as wear_ear_protection_during_work, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD470G AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Enter occupation' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD470G AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'Same as current occupation' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD470G AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN 'Same as longest occupation' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD470G AS FLOAT64),0) AS INT64) AS STRING) = '4' THEN 'Not working at that time' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD470G AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(OCD470G AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN OCD470G IS NULL THEN NULL 
ELSE SAFE_CAST(OCD470G AS STRING) 
 END as kind_of_job_held_when_had_asthma, 

CASE
WHEN OCD470 IS NULL THEN NULL 
ELSE SAFE_CAST(OCD470 AS FLOAT64) 
 END as occupation_group_code_job_asthma_began, 

CASE
WHEN OCD480 IS NULL THEN NULL 
ELSE SAFE_CAST(OCD480 AS FLOAT64) 
 END as industry_group_code_job_asthma_began, 

CASE
WHEN OCD180 IS NULL THEN NULL 
ELSE SAFE_CAST(OCD180 AS FLOAT64) 
 END as hours_worked_last_week_at_all_jobs_OCD180, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCD310B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCD310B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCD310B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCD310B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN OCD310B IS NULL THEN NULL 
ELSE SAFE_CAST(OCD310B AS STRING) 
 END as hearing_protection_used_current_job, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ470G AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Enter occupation' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ470G AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Same as current occupation' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ470G AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Same as longest occupation' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ470G AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Not working at that time' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ470G AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ470G AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN OCQ470G IS NULL THEN NULL 
ELSE SAFE_CAST(OCQ470G AS STRING) 
 END as kind_of_job_held_when_had_asthma_OCQ470G, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ130 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN '5 or fewer hours,' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ130 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN '6 to 9 hours,' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ130 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN '10 to 14 hours,' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ130 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN '15 to 19 hours,' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ130 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN '20 to 24 hours, or' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ130 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(6 AS FLOAT64),0) AS INT64) THEN '25 or more hours?' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ130 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'None' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ130 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(77 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ130 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(99 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN OCQ130 IS NULL THEN NULL 
ELSE SAFE_CAST(OCQ130 AS STRING) 
 END as average_hours_week_of_paid_unpaid_work, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ150 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Working at a job or business,' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ150 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'With a job or business but not at work,' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ150 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Looking for work, or' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ150 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Not working at a job or business?' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ150 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ150 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN OCQ150 IS NULL THEN NULL 
ELSE SAFE_CAST(OCQ150 AS STRING) 
 END as type_of_work_done_last_week_OCQ150, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ160 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ160 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ160 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ160 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN OCQ160 IS NULL THEN NULL 
ELSE SAFE_CAST(OCQ160 AS STRING) 
 END as worked_at_all_last_week, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ280 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ280 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ280 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ280 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN OCQ280 IS NULL THEN NULL 
ELSE SAFE_CAST(OCQ280 AS STRING) 
 END as health_insurance_offered_at_main_job, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ300 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ300 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ300 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ300 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN OCQ300 IS NULL THEN NULL 
ELSE SAFE_CAST(OCQ300 AS STRING) 
 END as ever_wear_protective_equipment_at_work, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ310A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ310A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ310A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ310A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN OCQ310A IS NULL THEN NULL 
ELSE SAFE_CAST(OCQ310A AS STRING) 
 END as ever_wear_respirator_at_work, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ310B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ310B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ310B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ310B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN OCQ310B IS NULL THEN NULL 
ELSE SAFE_CAST(OCQ310B AS STRING) 
 END as hearing_protection_used_current_job_OCQ310B, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ310C AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ310C AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ310C AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ310C AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN OCQ310C IS NULL THEN NULL 
ELSE SAFE_CAST(OCQ310C AS STRING) 
 END as ever_wear_protective_gloves_at_work, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ330A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Latex rubber,' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ330A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ330A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN OCQ330A IS NULL THEN NULL 
ELSE SAFE_CAST(OCQ330A AS STRING) 
 END as protective_gloves_of_latex_rubber, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ330B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Leather,' -- categorize numeric values
WHEN OCQ330B IS NULL THEN NULL 
ELSE SAFE_CAST(OCQ330B AS STRING) 
 END as protective_gloves_of_leather, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ330C AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Vinyl,' -- categorize numeric values
WHEN OCQ330C IS NULL THEN NULL 
ELSE SAFE_CAST(OCQ330C AS STRING) 
 END as protective_gloves_of_vinyl, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ330D AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Cloth, or' -- categorize numeric values
WHEN OCQ330D IS NULL THEN NULL 
ELSE SAFE_CAST(OCQ330D AS STRING) 
 END as protective_gloves_of_cloth, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ330E AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN 'Something else?' -- categorize numeric values
WHEN OCQ330E IS NULL THEN NULL 
ELSE SAFE_CAST(OCQ330E AS STRING) 
 END as protective_gloves_of_something_else, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ390G AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Enter occupation' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ390G AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Same as current occupation' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ390G AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Armed forces' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ390G AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Never worked' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ390G AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OCQ390G AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN OCQ390G IS NULL THEN NULL 
ELSE SAFE_CAST(OCQ390G AS STRING) 
 END as kind_of_work_you_have_done_the_longest_OCQ390G, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_occupation_questionnaire') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/OCQ_J.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_OCQ.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/OCQ_I.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/OCQ_H.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/OCQ_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/OCQ_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/OCQ_E.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/OCQ_D.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/OCQ_C.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/OCQ_B.htm
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/OCQ.htm
*/
