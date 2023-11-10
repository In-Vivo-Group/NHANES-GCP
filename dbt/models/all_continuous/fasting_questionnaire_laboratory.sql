SELECT
SEQN as respondent_sequence_number, 

CASE
        WHEN PHQ020 = 1 THEN 'Yes' 
WHEN PHQ020 = 2 THEN 'No' 
WHEN PHQ020 IS NULL THEN NULL 
ELSE NULL 
 END as coffee_or_tea_with_cream_or_sugar, 

CASE
        WHEN PHACOFHR IS NOT NULL THEN PHACOFHR 
WHEN PHACOFHR IS NULL THEN NULL 
ELSE NULL 
 END as coffee_tea_fast_time_hours, 

CASE
        WHEN PHACOFMN IS NOT NULL THEN PHACOFMN 
WHEN PHACOFMN IS NULL THEN NULL 
ELSE NULL 
 END as coffee_tea_fast_time_minutes, 

CASE
        WHEN PHQ030 = 1 THEN 'Yes' 
WHEN PHQ030 = 2 THEN 'No' 
WHEN PHQ030 IS NULL THEN NULL 
ELSE NULL 
 END as alcohol_such_as_beer_wine_or_liquor, 

CASE
        WHEN PHAALCHR IS NOT NULL THEN PHAALCHR 
WHEN PHAALCHR IS NULL THEN NULL 
ELSE NULL 
 END as alcohol_fast_time_hours, 

CASE
        WHEN PHAALCMN IS NOT NULL THEN PHAALCMN 
WHEN PHAALCMN IS NULL THEN NULL 
ELSE NULL 
 END as alcohol_fast_time_minutes, 

CASE
        WHEN PHQ040 = 1 THEN 'Yes' 
WHEN PHQ040 = 2 THEN 'No' 
WHEN PHQ040 IS NULL THEN NULL 
ELSE NULL 
 END as gum_mints_lozenges_or_cough_drops, 

CASE
        WHEN PHAGUMHR IS NOT NULL THEN PHAGUMHR 
WHEN PHAGUMHR IS NULL THEN NULL 
ELSE NULL 
 END as gum_mints_cough_drops_fast_time_hours, 

CASE
        WHEN PHAGUMMN IS NOT NULL THEN PHAGUMMN 
WHEN PHAGUMMN IS NULL THEN NULL 
ELSE NULL 
 END as gum_mints_cough_fast_time_minutes, 

CASE
        WHEN PHQ050 = 1 THEN 'Yes' 
WHEN PHQ050 = 2 THEN 'No' 
WHEN PHQ050 IS NULL THEN NULL 
ELSE NULL 
 END as antacids_laxatives_or_anti_diarrheals, 

CASE
        WHEN PHAANTHR IS NOT NULL THEN PHAANTHR 
WHEN PHAANTHR IS NULL THEN NULL 
ELSE NULL 
 END as antacids_laxatives_fast_time_hours, 

CASE
        WHEN PHAANTMN IS NOT NULL THEN PHAANTMN 
WHEN PHAANTMN IS NULL THEN NULL 
ELSE NULL 
 END as antacids_laxatives_fast_time_minutes, 

CASE
        WHEN PHQ060 = 1 THEN 'Yes' 
WHEN PHQ060 = 2 THEN 'No' 
WHEN PHQ060 IS NULL THEN NULL 
ELSE NULL 
 END as dietary_supplements, 

CASE
        WHEN PHASUPHR IS NOT NULL THEN PHASUPHR 
WHEN PHASUPHR IS NULL THEN NULL 
ELSE NULL 
 END as dietary_supplements_fast_time_hours, 

CASE
        WHEN PHASUPMN IS NOT NULL THEN PHASUPMN 
WHEN PHASUPMN IS NULL THEN NULL 
ELSE NULL 
 END as dietary_supplements_fast_time_minutes, 

CASE
        WHEN PHAFSTHR IS NOT NULL THEN PHAFSTHR 
WHEN PHAFSTHR IS NULL THEN NULL 
ELSE NULL 
 END as total_length_of_food_fast_hours, 

CASE
        WHEN PHAFSTMN IS NOT NULL THEN PHAFSTMN 
WHEN PHAFSTMN IS NULL THEN NULL 
ELSE NULL 
 END as total_length_of_food_fast_minutes, 

CASE
        WHEN PHDSESN = 0 THEN 'morning' 
WHEN PHDSESN = 1 THEN 'afternoon' 
WHEN PHDSESN = 2 THEN 'evening' 
WHEN PHDSESN IS NULL THEN NULL 
ELSE NULL 
 END as session_in_which_sp_was_examined, 

 FROM {{ ref('stg_fasting_questionnaire_laboratory') }}