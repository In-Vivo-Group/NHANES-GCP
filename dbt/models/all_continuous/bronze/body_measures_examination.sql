SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN BMDSTATS = '1' THEN 'Complete data for age group' -- categorize string values 
WHEN BMDSTATS = '2' THEN 'Partial:  Only height and weight obtained' -- categorize string values 
WHEN BMDSTATS = '3' THEN 'Other partial exam' -- categorize string values 
WHEN BMDSTATS = '4' THEN 'No body measures exam data' -- categorize string values 
WHEN BMDSTATS IS NULL THEN NULL 
ELSE BMDSTATS 
 END as body_measures_component_status_code, 

CASE
            WHEN BMXWT IS NULL THEN NULL 
ELSE BMXWT 
 END as weight_kg, 

CASE
            WHEN BMIWT = 1 THEN 'Could not obtain' -- categorize numeric values
WHEN BMIWT = 3 THEN 'Clothing' -- categorize numeric values
WHEN BMIWT = 4 THEN 'Medical appliance' -- categorize numeric values
WHEN BMIWT IS NULL THEN NULL 
ELSE BMIWT 
 END as weight_comment, 

CASE
            WHEN BMXRECUM IS NULL THEN NULL 
ELSE BMXRECUM 
 END as recumbent_length_cm, 

CASE
            WHEN BMIRECUM = 1 THEN 'Could not obtain' -- categorize numeric values
WHEN BMIRECUM = 3 THEN 'Not straight' -- categorize numeric values
WHEN BMIRECUM IS NULL THEN NULL 
ELSE BMIRECUM 
 END as recumbent_length_comment, 

CASE
            WHEN BMXHEAD IS NULL THEN NULL 
ELSE BMXHEAD 
 END as head_circumference_cm, 

CASE
            WHEN BMIHEAD = 1 THEN 'Could not obtain' -- categorize numeric values
WHEN BMIHEAD IS NULL THEN NULL 
ELSE BMIHEAD 
 END as head_circumference_comment, 

CASE
            WHEN BMXHT IS NULL THEN NULL 
ELSE BMXHT 
 END as standing_height_cm, 

CASE
            WHEN BMIHT = 1 THEN 'Could not obtain' -- categorize numeric values
WHEN BMIHT = 3 THEN 'Not straight' -- categorize numeric values
WHEN BMIHT IS NULL THEN NULL 
ELSE BMIHT 
 END as standing_height_comment, 

CASE
            WHEN BMXBMI IS NULL THEN NULL 
ELSE BMXBMI 
 END as body_mass_index_kg_m_2, 

CASE
            WHEN BMXLEG IS NULL THEN NULL 
ELSE BMXLEG 
 END as upper_leg_length_cm, 

CASE
            WHEN BMILEG = 1 THEN 'Could not obtain' -- categorize numeric values
WHEN BMILEG IS NULL THEN NULL 
ELSE BMILEG 
 END as upper_leg_length_comment, 

CASE
            WHEN BMXARML IS NULL THEN NULL 
ELSE BMXARML 
 END as upper_arm_length_cm, 

CASE
            WHEN BMIARML = 1 THEN 'Could not obtain' -- categorize numeric values
WHEN BMIARML IS NULL THEN NULL 
ELSE BMIARML 
 END as upper_arm_length_comment, 

CASE
            WHEN BMXARMC IS NULL THEN NULL 
ELSE BMXARMC 
 END as arm_circumference_cm, 

CASE
            WHEN BMIARMC = 1 THEN 'Could not obtain' -- categorize numeric values
WHEN BMIARMC IS NULL THEN NULL 
ELSE BMIARMC 
 END as arm_circumference_comment, 

CASE
            WHEN BMXWAIST IS NULL THEN NULL 
ELSE BMXWAIST 
 END as waist_circumference_cm, 

CASE
            WHEN BMIWAIST = 1 THEN 'Could not obtain' -- categorize numeric values
WHEN BMIWAIST IS NULL THEN NULL 
ELSE BMIWAIST 
 END as waist_circumference_comment, 

CASE
            WHEN BMXHIP IS NOT NULL THEN SAFE_CAST(BMXHIP AS FLOAT64) -- correct wrong data types for numerical data 
WHEN BMXHIP IS NULL THEN NULL 
ELSE BMXHIP 
 END as hip_circumference_cm, 

CASE
            WHEN BMIHIP = '1' THEN 'Could not obtain' -- categorize string values 
WHEN BMIHIP IS NULL THEN NULL 
ELSE BMIHIP 
 END as hip_circumference_comment, 

 FROM {{ ref('stg_body_measures_examination') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/BMX_J.htm
        