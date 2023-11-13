SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN INDFMMPI IS NULL THEN NULL 
ELSE INDFMMPI 
 END as family_monthly_poverty_level_index, 

CASE
            WHEN INDFMMPC = 1 THEN 'Monthly poverty level index =1.30' -- categorize numeric values
WHEN INDFMMPC = 2 THEN '1.30 < Monthly poverty level index = 1.85' -- categorize numeric values
WHEN INDFMMPC = 3 THEN 'Monthly poverty level index >1.85' -- categorize numeric values
WHEN INDFMMPC = 7 THEN 'Refused' -- categorize numeric values
WHEN INDFMMPC = 9 THEN 'Dont know' -- categorize numeric values
WHEN INDFMMPC IS NULL THEN NULL 
ELSE INDFMMPC 
 END as family_monthly_poverty_level_category, 

 FROM {{ ref('stg_income_questionnaire') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_INQ.htm
        