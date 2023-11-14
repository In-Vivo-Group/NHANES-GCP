SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN SAFE_CAST(PHQ020 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(PHQ020 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN PHQ020 IS NULL THEN NULL 
ELSE SAFE_CAST(PHQ020 AS STRING) 
 END as coffee_or_tea_with_cream_or_sugar, 

CASE
            WHEN PHACOFHR IS NULL THEN NULL 
ELSE SAFE_CAST(PHACOFHR AS STRING) 
 END as coffee_tea_fast_time_hours, 

CASE
            WHEN PHACOFMN IS NULL THEN NULL 
ELSE SAFE_CAST(PHACOFMN AS STRING) 
 END as coffee_tea_fast_time_minutes, 

CASE
            WHEN SAFE_CAST(PHQ030 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(PHQ030 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN PHQ030 IS NULL THEN NULL 
ELSE SAFE_CAST(PHQ030 AS STRING) 
 END as alcohol_such_as_beer_wine_or_liquor, 

CASE
            WHEN PHAALCHR IS NULL THEN NULL 
ELSE SAFE_CAST(PHAALCHR AS STRING) 
 END as alcohol_fast_time_hours, 

CASE
            WHEN PHAALCMN IS NULL THEN NULL 
ELSE SAFE_CAST(PHAALCMN AS STRING) 
 END as alcohol_fast_time_minutes, 

CASE
            WHEN SAFE_CAST(PHQ040 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(PHQ040 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN PHQ040 IS NULL THEN NULL 
ELSE SAFE_CAST(PHQ040 AS STRING) 
 END as gum_mints_lozenges_or_cough_drops, 

CASE
            WHEN PHAGUMHR IS NULL THEN NULL 
ELSE SAFE_CAST(PHAGUMHR AS STRING) 
 END as gum_mints_cough_drops_fast_time_hours, 

CASE
            WHEN PHAGUMMN IS NULL THEN NULL 
ELSE SAFE_CAST(PHAGUMMN AS STRING) 
 END as gum_mints_cough_fast_time_minutes, 

CASE
            WHEN SAFE_CAST(PHQ050 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(PHQ050 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN PHQ050 IS NULL THEN NULL 
ELSE SAFE_CAST(PHQ050 AS STRING) 
 END as antacids_laxatives_or_anti_diarrheals, 

CASE
            WHEN PHAANTHR IS NULL THEN NULL 
ELSE SAFE_CAST(PHAANTHR AS STRING) 
 END as antacids_laxatives_fast_time_hours, 

CASE
            WHEN PHAANTMN IS NULL THEN NULL 
ELSE SAFE_CAST(PHAANTMN AS STRING) 
 END as antacids_laxatives_fast_time_minutes, 

CASE
            WHEN SAFE_CAST(PHQ060 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(PHQ060 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN PHQ060 IS NULL THEN NULL 
ELSE SAFE_CAST(PHQ060 AS STRING) 
 END as dietary_supplements, 

CASE
            WHEN PHASUPHR IS NULL THEN NULL 
ELSE SAFE_CAST(PHASUPHR AS STRING) 
 END as dietary_supplements_fast_time_hours, 

CASE
            WHEN PHASUPMN IS NULL THEN NULL 
ELSE SAFE_CAST(PHASUPMN AS STRING) 
 END as dietary_supplements_fast_time_minutes, 

CASE
            WHEN PHAFSTHR IS NULL THEN NULL 
ELSE SAFE_CAST(PHAFSTHR AS STRING) 
 END as total_length_of_food_fast_hours, 

CASE
            WHEN PHAFSTMN IS NULL THEN NULL 
ELSE SAFE_CAST(PHAFSTMN AS STRING) 
 END as total_length_of_food_fast_minutes, 

CASE
            WHEN SAFE_CAST(PHDSESN AS FLOAT64) = SAFE_CAST(0 AS FLOAT64) THEN 'morning' -- categorize numeric values
WHEN SAFE_CAST(PHDSESN AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'afternoon' -- categorize numeric values
WHEN SAFE_CAST(PHDSESN AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'evening' -- categorize numeric values
WHEN PHDSESN IS NULL THEN NULL 
ELSE SAFE_CAST(PHDSESN AS STRING) 
 END as session_in_which_sp_was_examined, 

 FROM {{ ref('stg_fasting_questionnaire_laboratory') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/FASTQX_J.htm
        