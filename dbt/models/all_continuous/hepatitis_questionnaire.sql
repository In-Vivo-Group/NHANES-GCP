SELECT
SEQN as respondent_sequence_number,
CASE
        WHEN HEQ010 = 1 THEN 'Yes' 
WHEN HEQ010 = 2 THEN 'No' 
WHEN HEQ010 = 7 THEN 'Refused' 
WHEN HEQ010 = 9 THEN 'Don\'t know' 
WHEN HEQ010 IS NULL THEN NULL 
ELSE NULL 
 END as ever_told_you_have_hepatitis_b,
CASE
        WHEN HEQ020 = 1 THEN 'Yes' 
WHEN HEQ020 = 2 THEN 'No' 
WHEN HEQ020 = 7 THEN 'Refused' 
WHEN HEQ020 = 9 THEN 'Don\'t know' 
WHEN HEQ020 IS NULL THEN NULL 
ELSE NULL 
 END as ever_prescribed_meds_treat_hepatitis_b,
CASE
        WHEN HEQ030 = 1 THEN 'Yes' 
WHEN HEQ030 = 2 THEN 'No' 
WHEN HEQ030 = 7 THEN 'Refused' 
WHEN HEQ030 = 9 THEN 'Don\'t know' 
WHEN HEQ030 IS NULL THEN NULL 
ELSE NULL 
 END as ever_told_you_have_hepatitis_c,
CASE
        WHEN HEQ040 = 1 THEN 'Yes' 
WHEN HEQ040 = 2 THEN 'No' 
WHEN HEQ040 = 7 THEN 'Refused' 
WHEN HEQ040 = 9 THEN 'Don\'t know' 
WHEN HEQ040 IS NULL THEN NULL 
ELSE NULL 
 END as ever_prescribed_meds_treat_hepatitis_c,
 FROM {{ ref('stg_hepatitis_questionnaire') }}