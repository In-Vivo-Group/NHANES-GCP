SELECT
SEQN as respondent_sequence_number, 

CASE
        WHEN OSQ080 = '1' THEN 'Yes' 
WHEN OSQ080 = '2' THEN 'No' 
WHEN OSQ080 = '7' THEN 'Refused' 
WHEN OSQ080 = '9' THEN 'Dont know' 
WHEN OSQ080 IS NULL THEN NULL 
ELSE NULL 
 END as doctor_ever_told_any_other_fractures, 

CASE
        WHEN OSQ060 = 1 THEN 'Yes' 
WHEN OSQ060 = 2 THEN 'No' 
WHEN OSQ060 = 7 THEN 'Refused' 
WHEN OSQ060 = 9 THEN 'Dont know' 
WHEN OSQ060 IS NULL THEN NULL 
ELSE NULL 
 END as ever_told_had_osteoporosis_brittle_bones, 

CASE
        WHEN OSQ072 = '1' THEN 'Yes' 
WHEN OSQ072 = '2' THEN 'No' 
WHEN OSQ072 = '7' THEN 'Refused' 
WHEN OSQ072 = '9' THEN 'Dont know' 
WHEN OSQ072 IS NULL THEN NULL 
ELSE NULL 
 END as doctor_prescribe_rx_for_osteoporosis, 

CASE
        WHEN OSQ130 = '1' THEN 'Yes' 
WHEN OSQ130 = '2' THEN 'No' 
WHEN OSQ130 = '7' THEN 'Refused' 
WHEN OSQ130 = '9' THEN 'Dont know' 
WHEN OSQ130 IS NULL THEN NULL 
ELSE NULL 
 END as ever_taken_prednisone_or_cortisone_daily, 

CASE
        WHEN OSQ150 = '1' THEN 'Yes' 
WHEN OSQ150 = '2' THEN 'No' 
WHEN OSQ150 = '7' THEN 'Refused' 
WHEN OSQ150 = '9' THEN 'Dont know' 
WHEN OSQ150 IS NULL THEN NULL 
ELSE NULL 
 END as parents_ever_told_had_osteoporosis, 

CASE
        WHEN OSQ170 = '1' THEN 'Yes' 
WHEN OSQ170 = '2' THEN 'No' 
WHEN OSQ170 = '7' THEN 'Refused' 
WHEN OSQ170 = '9' THEN 'Dont know' 
WHEN OSQ170 IS NULL THEN NULL 
ELSE NULL 
 END as did_mother_ever_fracture_hip, 

CASE
        WHEN OSQ180 IS NOT NULL THEN SAFE_CAST(OSQ180 AS FLOAT64) 
WHEN OSQ180 IS NOT NULL THEN SAFE_CAST(OSQ180 AS FLOAT64) 
WHEN OSQ180 IS NOT NULL THEN SAFE_CAST(OSQ180 AS FLOAT64) 
WHEN OSQ180 IS NULL THEN NULL 
ELSE NULL 
 END as how_old_mother_when_fractured_hip, 

CASE
        WHEN OSQ190 = '1' THEN 'under 50 years or' 
WHEN OSQ190 = '2' THEN '50 years or older?' 
WHEN OSQ190 = '7' THEN 'Refused' 
WHEN OSQ190 = '9' THEN 'Dont know' 
WHEN OSQ190 IS NULL THEN NULL 
ELSE NULL 
 END as over_or_under_50_years_old, 

CASE
        WHEN OSQ200 = '1' THEN 'Yes' 
WHEN OSQ200 = '2' THEN 'No' 
WHEN OSQ200 = '7' THEN 'Refused' 
WHEN OSQ200 = '9' THEN 'Dont know' 
WHEN OSQ200 IS NULL THEN NULL 
ELSE NULL 
 END as did_father_ever_fracture_hip, 

CASE
        WHEN OSQ210 IS NOT NULL THEN SAFE_CAST(OSQ210 AS FLOAT64) 
WHEN OSQ210 IS NOT NULL THEN SAFE_CAST(OSQ210 AS FLOAT64) 
WHEN OSQ210 IS NOT NULL THEN SAFE_CAST(OSQ210 AS FLOAT64) 
WHEN OSQ210 IS NULL THEN NULL 
ELSE NULL 
 END as how_old_father_when_fractured_hip, 

CASE
        WHEN OSQ220 = '1' THEN 'Under 50 years old, or' 
WHEN OSQ220 = '2' THEN '50 years old or older?' 
WHEN OSQ220 = '7' THEN 'Refused' 
WHEN OSQ220 = '9' THEN 'Dont know' 
WHEN OSQ220 IS NULL THEN NULL 
ELSE NULL 
 END as over_or_under_50_years_old, 

 FROM {{ ref('stg_osteoporosis_questionnaire') }}