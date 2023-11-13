SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN HEQ010 = 1 THEN 'Yes' -- categorize numeric values
WHEN HEQ010 = 2 THEN 'No' -- categorize numeric values
WHEN HEQ010 = 7 THEN 'Refused' -- categorize numeric values
WHEN HEQ010 = 9 THEN 'Dont know' -- categorize numeric values
WHEN HEQ010 IS NULL THEN NULL 
ELSE HEQ010 
 END as ever_told_you_have_hepatitis_b, 

CASE
            WHEN HEQ020 = 1 THEN 'Yes' -- categorize numeric values
WHEN HEQ020 = 2 THEN 'No' -- categorize numeric values
WHEN HEQ020 = 7 THEN 'Refused' -- categorize numeric values
WHEN HEQ020 = 9 THEN 'Dont know' -- categorize numeric values
WHEN HEQ020 IS NULL THEN NULL 
ELSE HEQ020 
 END as ever_prescribed_meds_treat_hepatitis_b, 

CASE
            WHEN HEQ030 = 1 THEN 'Yes' -- categorize numeric values
WHEN HEQ030 = 2 THEN 'No' -- categorize numeric values
WHEN HEQ030 = 7 THEN 'Refused' -- categorize numeric values
WHEN HEQ030 = 9 THEN 'Dont know' -- categorize numeric values
WHEN HEQ030 IS NULL THEN NULL 
ELSE HEQ030 
 END as ever_told_you_have_hepatitis_c, 

CASE
            WHEN HEQ040 = 1 THEN 'Yes' -- categorize numeric values
WHEN HEQ040 = 2 THEN 'No' -- categorize numeric values
WHEN HEQ040 = 7 THEN 'Refused' -- categorize numeric values
WHEN HEQ040 = 9 THEN 'Dont know' -- categorize numeric values
WHEN HEQ040 IS NULL THEN NULL 
ELSE HEQ040 
 END as ever_prescribed_meds_treat_hepatitis_c, 

 FROM {{ ref('stg_hepatitis_questionnaire') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/HEQ_J.htm
        