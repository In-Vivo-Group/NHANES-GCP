SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN PAQ706 = 0 THEN '0 days' -- categorize numeric values
WHEN PAQ706 = 1 THEN '1 day' -- categorize numeric values
WHEN PAQ706 = 2 THEN '2 days' -- categorize numeric values
WHEN PAQ706 = 3 THEN '3 days' -- categorize numeric values
WHEN PAQ706 = 4 THEN '4 days' -- categorize numeric values
WHEN PAQ706 = 5 THEN '5 days' -- categorize numeric values
WHEN PAQ706 = 6 THEN '6 days' -- categorize numeric values
WHEN PAQ706 = 7 THEN '7 days' -- categorize numeric values
WHEN PAQ706 = 77 THEN 'Refused' -- categorize numeric values
WHEN PAQ706 = 99 THEN 'Dont know' -- categorize numeric values
WHEN PAQ706 IS NULL THEN NULL 
ELSE PAQ706 
 END as days_physically_active_at_least_60_min, 

 FROM {{ ref('stg_physical_activity_youth_questionnaire') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_PAQY.htm
        