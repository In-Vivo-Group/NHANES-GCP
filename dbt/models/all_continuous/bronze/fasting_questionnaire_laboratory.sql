SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN PHQ020 = 1 THEN 'Yes' -- categorize numeric values
WHEN PHQ020 = 2 THEN 'No' -- categorize numeric values
WHEN PHQ020 IS NULL THEN NULL 
ELSE PHQ020 
 END as coffee_or_tea_with_cream_or_sugar, 

CASE
            WHEN PHACOFHR IS NULL THEN NULL 
ELSE PHACOFHR 
 END as coffee_tea_fast_time_hours, 

CASE
            WHEN PHACOFMN IS NULL THEN NULL 
ELSE PHACOFMN 
 END as coffee_tea_fast_time_minutes, 

CASE
            WHEN PHQ030 = 1 THEN 'Yes' -- categorize numeric values
WHEN PHQ030 = 2 THEN 'No' -- categorize numeric values
WHEN PHQ030 IS NULL THEN NULL 
ELSE PHQ030 
 END as alcohol_such_as_beer_wine_or_liquor, 

CASE
            WHEN PHAALCHR IS NULL THEN NULL 
ELSE PHAALCHR 
 END as alcohol_fast_time_hours, 

CASE
            WHEN PHAALCMN IS NULL THEN NULL 
ELSE PHAALCMN 
 END as alcohol_fast_time_minutes, 

CASE
            WHEN PHQ040 = 1 THEN 'Yes' -- categorize numeric values
WHEN PHQ040 = 2 THEN 'No' -- categorize numeric values
WHEN PHQ040 IS NULL THEN NULL 
ELSE PHQ040 
 END as gum_mints_lozenges_or_cough_drops, 

CASE
            WHEN PHAGUMHR IS NULL THEN NULL 
ELSE PHAGUMHR 
 END as gum_mints_cough_drops_fast_time_hours, 

CASE
            WHEN PHAGUMMN IS NULL THEN NULL 
ELSE PHAGUMMN 
 END as gum_mints_cough_fast_time_minutes, 

CASE
            WHEN PHQ050 = 1 THEN 'Yes' -- categorize numeric values
WHEN PHQ050 = 2 THEN 'No' -- categorize numeric values
WHEN PHQ050 IS NULL THEN NULL 
ELSE PHQ050 
 END as antacids_laxatives_or_anti_diarrheals, 

CASE
            WHEN PHAANTHR IS NULL THEN NULL 
ELSE PHAANTHR 
 END as antacids_laxatives_fast_time_hours, 

CASE
            WHEN PHAANTMN IS NULL THEN NULL 
ELSE PHAANTMN 
 END as antacids_laxatives_fast_time_minutes, 

CASE
            WHEN PHQ060 = 1 THEN 'Yes' -- categorize numeric values
WHEN PHQ060 = 2 THEN 'No' -- categorize numeric values
WHEN PHQ060 IS NULL THEN NULL 
ELSE PHQ060 
 END as dietary_supplements, 

CASE
            WHEN PHASUPHR IS NULL THEN NULL 
ELSE PHASUPHR 
 END as dietary_supplements_fast_time_hours, 

CASE
            WHEN PHASUPMN IS NULL THEN NULL 
ELSE PHASUPMN 
 END as dietary_supplements_fast_time_minutes, 

CASE
            WHEN PHAFSTHR IS NULL THEN NULL 
ELSE PHAFSTHR 
 END as total_length_of_food_fast_hours, 

CASE
            WHEN PHAFSTMN IS NULL THEN NULL 
ELSE PHAFSTMN 
 END as total_length_of_food_fast_minutes, 

CASE
            WHEN PHDSESN = 0 THEN 'morning' -- categorize numeric values
WHEN PHDSESN = 1 THEN 'afternoon' -- categorize numeric values
WHEN PHDSESN = 2 THEN 'evening' -- categorize numeric values
WHEN PHDSESN IS NULL THEN NULL 
ELSE PHDSESN 
 END as session_in_which_sp_was_examined, 

 FROM {{ ref('stg_fasting_questionnaire_laboratory') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/FASTQX_J.htm
        