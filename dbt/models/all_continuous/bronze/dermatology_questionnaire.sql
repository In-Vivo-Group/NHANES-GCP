SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN DEQ034A = '1' THEN 'Always' -- categorize string values 
WHEN DEQ034A = '2' THEN 'Most of the time' -- categorize string values 
WHEN DEQ034A = '3' THEN 'Sometimes' -- categorize string values 
WHEN DEQ034A = '4' THEN 'Rarely, or' -- categorize string values 
WHEN DEQ034A = '5' THEN 'Never?' -- categorize string values 
WHEN DEQ034A = '6' THEN 'Dont go out in the sun' -- categorize string values 
WHEN DEQ034A = '77' THEN 'Refused' -- categorize string values 
WHEN DEQ034A = '99' THEN 'Dont know' -- categorize string values 
WHEN DEQ034A IS NULL THEN NULL 
ELSE DEQ034A 
 END as stay_in_the_shade, 

CASE
            WHEN DEQ034C = '1' THEN 'Always' -- categorize string values 
WHEN DEQ034C = '2' THEN 'Most of the time' -- categorize string values 
WHEN DEQ034C = '3' THEN 'Sometimes' -- categorize string values 
WHEN DEQ034C = '4' THEN 'Rarely, or' -- categorize string values 
WHEN DEQ034C = '5' THEN 'Never?' -- categorize string values 
WHEN DEQ034C = '7' THEN 'Refused' -- categorize string values 
WHEN DEQ034C = '9' THEN 'Dont know' -- categorize string values 
WHEN DEQ034C IS NULL THEN NULL 
ELSE DEQ034C 
 END as wear_a_long_sleeved_shirt, 

CASE
            WHEN DEQ034D = '1' THEN 'Always' -- categorize string values 
WHEN DEQ034D = '2' THEN 'Most of the time' -- categorize string values 
WHEN DEQ034D = '3' THEN 'Sometimes' -- categorize string values 
WHEN DEQ034D = '4' THEN 'Rarely, or' -- categorize string values 
WHEN DEQ034D = '5' THEN 'Never?' -- categorize string values 
WHEN DEQ034D = '7' THEN 'Refused' -- categorize string values 
WHEN DEQ034D = '9' THEN 'Dont know' -- categorize string values 
WHEN DEQ034D IS NULL THEN NULL 
ELSE DEQ034D 
 END as use_sunscreen, 

CASE
            WHEN SAFE_CAST(DED120 AS FLOAT64) > 480.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DED120 IS NULL THEN NULL 
ELSE DED120 
 END as minutes_outdoors_9am_5pm_work_day, 

CASE
            WHEN SAFE_CAST(DED125 AS FLOAT64) > 480.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DED125 IS NULL THEN NULL 
ELSE DED125 
 END as minutes_outdoors_9am_5pm_not_work_day, 

 FROM {{ ref('stg_dermatology_questionnaire') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_DEQ.htm
        