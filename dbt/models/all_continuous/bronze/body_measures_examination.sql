SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(BMDSTATS,'.0','') AS INT64) AS STRING) = '1' THEN 'Complete data for age group' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(BMDSTATS,'.0','') AS INT64) AS STRING) = '2' THEN 'Partial:  Only height and weight obtained' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(BMDSTATS,'.0','') AS INT64) AS STRING) = '3' THEN 'Other partial exam' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(BMDSTATS,'.0','') AS INT64) AS STRING) = '4' THEN 'No body measures exam data' -- categorize string values 
WHEN BMDSTATS IS NULL THEN NULL 
ELSE SAFE_CAST(BMDSTATS AS STRING) 
 END as body_measures_component_status_code, 

CASE
            WHEN BMXWT IS NULL THEN NULL 
ELSE SAFE_CAST(BMXWT AS STRING) 
 END as weight_kg, 

CASE
            WHEN SAFE_CAST(BMIWT AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Could not obtain' -- categorize numeric values
WHEN SAFE_CAST(BMIWT AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Clothing' -- categorize numeric values
WHEN SAFE_CAST(BMIWT AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN 'Medical appliance' -- categorize numeric values
WHEN BMIWT IS NULL THEN NULL 
ELSE SAFE_CAST(BMIWT AS STRING) 
 END as weight_comment, 

CASE
            WHEN BMXRECUM IS NULL THEN NULL 
ELSE SAFE_CAST(BMXRECUM AS STRING) 
 END as recumbent_length_cm, 

CASE
            WHEN SAFE_CAST(BMIRECUM AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Could not obtain' -- categorize numeric values
WHEN SAFE_CAST(BMIRECUM AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Not straight' -- categorize numeric values
WHEN BMIRECUM IS NULL THEN NULL 
ELSE SAFE_CAST(BMIRECUM AS STRING) 
 END as recumbent_length_comment, 

CASE
            WHEN BMXHEAD IS NULL THEN NULL 
ELSE SAFE_CAST(BMXHEAD AS STRING) 
 END as head_circumference_cm, 

CASE
            WHEN SAFE_CAST(BMIHEAD AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Could not obtain' -- categorize numeric values
WHEN BMIHEAD IS NULL THEN NULL 
ELSE SAFE_CAST(BMIHEAD AS STRING) 
 END as head_circumference_comment, 

CASE
            WHEN BMXHT IS NULL THEN NULL 
ELSE SAFE_CAST(BMXHT AS STRING) 
 END as standing_height_cm, 

CASE
            WHEN SAFE_CAST(BMIHT AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Could not obtain' -- categorize numeric values
WHEN SAFE_CAST(BMIHT AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Not straight' -- categorize numeric values
WHEN BMIHT IS NULL THEN NULL 
ELSE SAFE_CAST(BMIHT AS STRING) 
 END as standing_height_comment, 

CASE
            WHEN BMXBMI IS NULL THEN NULL 
ELSE SAFE_CAST(BMXBMI AS STRING) 
 END as body_mass_index_kg_m_2, 

CASE
            WHEN BMXLEG IS NULL THEN NULL 
ELSE SAFE_CAST(BMXLEG AS STRING) 
 END as upper_leg_length_cm, 

CASE
            WHEN SAFE_CAST(BMILEG AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Could not obtain' -- categorize numeric values
WHEN BMILEG IS NULL THEN NULL 
ELSE SAFE_CAST(BMILEG AS STRING) 
 END as upper_leg_length_comment, 

CASE
            WHEN BMXARML IS NULL THEN NULL 
ELSE SAFE_CAST(BMXARML AS STRING) 
 END as upper_arm_length_cm, 

CASE
            WHEN SAFE_CAST(BMIARML AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Could not obtain' -- categorize numeric values
WHEN BMIARML IS NULL THEN NULL 
ELSE SAFE_CAST(BMIARML AS STRING) 
 END as upper_arm_length_comment, 

CASE
            WHEN BMXARMC IS NULL THEN NULL 
ELSE SAFE_CAST(BMXARMC AS STRING) 
 END as arm_circumference_cm, 

CASE
            WHEN SAFE_CAST(BMIARMC AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Could not obtain' -- categorize numeric values
WHEN BMIARMC IS NULL THEN NULL 
ELSE SAFE_CAST(BMIARMC AS STRING) 
 END as arm_circumference_comment, 

CASE
            WHEN BMXWAIST IS NULL THEN NULL 
ELSE SAFE_CAST(BMXWAIST AS STRING) 
 END as waist_circumference_cm, 

CASE
            WHEN SAFE_CAST(BMIWAIST AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Could not obtain' -- categorize numeric values
WHEN BMIWAIST IS NULL THEN NULL 
ELSE SAFE_CAST(BMIWAIST AS STRING) 
 END as waist_circumference_comment, 

CASE
            WHEN BMXHIP IS NOT NULL THEN SAFE_CAST(BMXHIP AS FLOAT64) -- correct wrong data types for numerical data 
WHEN BMXHIP IS NULL THEN NULL 
ELSE SAFE_CAST(BMXHIP AS FLOAT64) 
 END as hip_circumference_cm, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(BMIHIP,'.0','') AS INT64) AS STRING) = '1' THEN 'Could not obtain' -- categorize string values 
WHEN BMIHIP IS NULL THEN NULL 
ELSE SAFE_CAST(BMIHIP AS STRING) 
 END as hip_circumference_comment, 

 FROM {{ ref('stg_body_measures_examination') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/BMX_J.htm
        