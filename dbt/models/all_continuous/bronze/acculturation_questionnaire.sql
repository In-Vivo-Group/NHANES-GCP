SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

-- ACQBOX1 as ACQBOX1, -- not included in table but included in docs without transformation logic 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(ACD011A,'.0','') AS INT64) AS STRING) = '1' THEN 'English' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(ACD011A,'.0','') AS INT64) AS STRING) = '77' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(ACD011A,'.0','') AS INT64) AS STRING) = '99' THEN 'Dont know' -- categorize string values 
WHEN ACD011A IS NULL THEN NULL 
ELSE SAFE_CAST(ACD011A AS STRING) 
 END as speak_english_at_home_nhw_or_nhb, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(ACD011B,'.0','') AS INT64) AS STRING) = '8' THEN 'Spanish' -- categorize string values 
WHEN ACD011B IS NULL THEN NULL 
ELSE SAFE_CAST(ACD011B AS STRING) 
 END as speak_spanish_at_home_nhw_or_nhb, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(ACD011C,'.0','') AS INT64) AS STRING) = '9' THEN 'Other' -- categorize string values 
WHEN ACD011C IS NULL THEN NULL 
ELSE SAFE_CAST(ACD011C AS STRING) 
 END as speak_other_language_at_home_nhw_or_nhb, 

CASE
            WHEN SAFE_CAST(ACD040 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Only Spanish,' -- categorize numeric values
WHEN SAFE_CAST(ACD040 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'More Spanish than English' -- categorize numeric values
WHEN SAFE_CAST(ACD040 AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Both equally' -- categorize numeric values
WHEN SAFE_CAST(ACD040 AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN 'More English than Spanish' -- categorize numeric values
WHEN SAFE_CAST(ACD040 AS FLOAT64) = SAFE_CAST(5 AS FLOAT64) THEN 'Only English' -- categorize numeric values
WHEN SAFE_CAST(ACD040 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ACD040 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN ACD040 IS NULL THEN NULL 
ELSE SAFE_CAST(ACD040 AS STRING) 
 END as language_s_spoken_at_home_hispanics, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(ACD110,'.0','') AS INT64) AS STRING) = '1' THEN 'Only Non-English language' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(ACD110,'.0','') AS INT64) AS STRING) = '2' THEN 'More Non-English than English' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(ACD110,'.0','') AS INT64) AS STRING) = '3' THEN 'Both equally' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(ACD110,'.0','') AS INT64) AS STRING) = '4' THEN 'More English than Non-English' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(ACD110,'.0','') AS INT64) AS STRING) = '5' THEN 'Only English' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(ACD110,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(ACD110,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN ACD110 IS NULL THEN NULL 
ELSE SAFE_CAST(ACD110 AS STRING) 
 END as language_s_spoken_at_home_asians, 

 FROM {{ ref('stg_acculturation_questionnaire') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/ACQ_J.htm
        