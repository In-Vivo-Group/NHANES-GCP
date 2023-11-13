SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN WHD010 IS NULL THEN NULL 
ELSE WHD010 
 END as current_self_reported_height_inches, 

CASE
            WHEN WHD020 IS NULL THEN NULL 
ELSE WHD020 
 END as current_self_reported_weight_pounds, 

CASE
            WHEN WHQ030 = 1 THEN 'Overweight,' -- categorize numeric values
WHEN WHQ030 = 2 THEN 'Underweight, or' -- categorize numeric values
WHEN WHQ030 = 3 THEN 'About the right weight?' -- categorize numeric values
WHEN WHQ030 = 7 THEN 'Refused' -- categorize numeric values
WHEN WHQ030 = 9 THEN 'Dont know' -- categorize numeric values
WHEN WHQ030 IS NULL THEN NULL 
ELSE WHQ030 
 END as how_do_you_consider_your_weight, 

CASE
            WHEN WHQ040 = 1 THEN 'More,' -- categorize numeric values
WHEN WHQ040 = 2 THEN 'Less, or' -- categorize numeric values
WHEN WHQ040 = 3 THEN 'Stay about the same?' -- categorize numeric values
WHEN WHQ040 = 7 THEN 'Refused' -- categorize numeric values
WHEN WHQ040 = 9 THEN 'Dont know' -- categorize numeric values
WHEN WHQ040 IS NULL THEN NULL 
ELSE WHQ040 
 END as like_to_weigh_more_less_or_same, 

CASE
            WHEN WHD050 IS NULL THEN NULL 
ELSE WHD050 
 END as self_reported_weight_1_yr_ago_pounds, 

WHQ055 as WHQ055, -- could not automatically decode name of variable or transformation logic 

CASE
            WHEN WHQ060 = 1 THEN 'Yes' -- categorize numeric values
WHEN WHQ060 = 2 THEN 'No' -- categorize numeric values
WHEN WHQ060 = 7 THEN 'Refused' -- categorize numeric values
WHEN WHQ060 = 9 THEN 'Dont know' -- categorize numeric values
WHEN WHQ060 IS NULL THEN NULL 
ELSE WHQ060 
 END as weight_change_intentional, 

CASE
            WHEN WHQ070 = 1 THEN 'Yes' -- categorize numeric values
WHEN WHQ070 = 2 THEN 'No' -- categorize numeric values
WHEN WHQ070 = 7 THEN 'Refused' -- categorize numeric values
WHEN WHQ070 = 9 THEN 'Dont know' -- categorize numeric values
WHEN WHQ070 IS NULL THEN NULL 
ELSE WHQ070 
 END as tried_to_lose_weight_in_past_year, 

CASE
            WHEN WHD080A = 10 THEN 'Ate less food (amount)' -- categorize numeric values
WHEN WHD080A IS NULL THEN NULL 
ELSE WHD080A 
 END as ate_less_to_lose_weight, 

CASE
            WHEN WHD080B = 11 THEN 'Switched to foods with lower calories' -- categorize numeric values
WHEN WHD080B IS NULL THEN NULL 
ELSE WHD080B 
 END as switched_to_foods_with_lower_calories, 

CASE
            WHEN WHD080C = 12 THEN 'Ate less fat' -- categorize numeric values
WHEN WHD080C IS NULL THEN NULL 
ELSE WHD080C 
 END as ate_less_fat_to_lose_weight, 

CASE
            WHEN WHD080D = 13 THEN 'Exercised' -- categorize numeric values
WHEN WHD080D IS NULL THEN NULL 
ELSE WHD080D 
 END as exercised_to_lose_weight, 

CASE
            WHEN WHD080E = 14 THEN 'Skipped meals' -- categorize numeric values
WHEN WHD080E IS NULL THEN NULL 
ELSE WHD080E 
 END as skipped_meals, 

CASE
            WHEN WHD080F = 15 THEN 'Ate diet foods or products' -- categorize numeric values
WHEN WHD080F IS NULL THEN NULL 
ELSE WHD080F 
 END as ate_diet_foods_or_products, 

CASE
            WHEN WHD080G = 16 THEN 'Used a liquid diet formula such as slimfast or optifast' -- categorize numeric values
WHEN WHD080G IS NULL THEN NULL 
ELSE WHD080G 
 END as used_a_liquid_diet_formula, 

CASE
            WHEN WHD080H = 17 THEN 'Joined a weight loss program such as Weight Watchers, Jenny Craig, Tops, or Overeaters Anonymous' -- categorize numeric values
WHEN WHD080H IS NULL THEN NULL 
ELSE WHD080H 
 END as joined_a_weight_loss_program, 

CASE
            WHEN WHD080I = 31 THEN 'Took diet pills prescribed by a doctor' -- categorize numeric values
WHEN WHD080I IS NULL THEN NULL 
ELSE WHD080I 
 END as took_prescription_diet_pills, 

CASE
            WHEN WHD080J = 32 THEN 'Took other pills, medicines, herbs, or supplements not needing a prescription' -- categorize numeric values
WHEN WHD080J IS NULL THEN NULL 
ELSE WHD080J 
 END as took_non_rx_suppl_to_lose_weight, 

CASE
            WHEN WHD080K = 33 THEN 'Took laxatives or vomited' -- categorize numeric values
WHEN WHD080K IS NULL THEN NULL 
ELSE WHD080K 
 END as took_laxatives_or_vomited, 

CASE
            WHEN WHD080M = 34 THEN 'Drank a lot of water' -- categorize numeric values
WHEN WHD080M IS NULL THEN NULL 
ELSE WHD080M 
 END as drank_a_lot_of_water, 

CASE
            WHEN WHD080N = 30 THEN 'Followed a special diet' -- categorize numeric values
WHEN WHD080N IS NULL THEN NULL 
ELSE WHD080N 
 END as followed_a_special_diet, 

CASE
            WHEN WHD080O = '41' THEN 'Ate fewer carbohydrates' -- categorize string values 
WHEN WHD080O IS NULL THEN NULL 
ELSE WHD080O 
 END as ate_fewer_carbohydrates, 

CASE
            WHEN WHD080P = '42' THEN 'Started to smoke or began to smoke again' -- categorize string values 
WHEN WHD080P IS NULL THEN NULL 
ELSE WHD080P 
 END as started_to_smoke_or_began_to_smoke_again, 

CASE
            WHEN WHD080Q = '43' THEN 'Ate more fruits, vegetables, salads' -- categorize string values 
WHEN WHD080Q IS NULL THEN NULL 
ELSE WHD080Q 
 END as ate_more_fruits_vegetables_salads, 

CASE
            WHEN WHD080R = '44' THEN 'Changed eating habits' -- categorize string values 
WHEN WHD080R IS NULL THEN NULL 
ELSE WHD080R 
 END as changed_eating_habits, 

CASE
            WHEN WHD080S = '45' THEN 'Ate less sugar, candy, sweets' -- categorize string values 
WHEN WHD080S IS NULL THEN NULL 
ELSE WHD080S 
 END as ate_less_sugar_candy_sweets, 

CASE
            WHEN WHD080T = '46' THEN 'Ate less junk food or fast food' -- categorize string values 
WHEN WHD080T IS NULL THEN NULL 
ELSE WHD080T 
 END as ate_less_junk_food_or_fast_food, 

CASE
            WHEN WHD080U = '35' THEN 'Had weight loss surgery' -- categorize string values 
WHEN WHD080U IS NULL THEN NULL 
ELSE WHD080U 
 END as had_weight_loss_surgery_to_lose_weight, 

CASE
            WHEN WHD080L = 40 THEN 'Other' -- categorize numeric values
WHEN WHD080L IS NULL THEN NULL 
ELSE WHD080L 
 END as other, 

CASE
            WHEN WHQ225 = '1' THEN '1 to 2' -- categorize string values 
WHEN WHQ225 = '2' THEN '3 to 5' -- categorize string values 
WHEN WHQ225 = '3' THEN '6 to 10' -- categorize string values 
WHEN WHQ225 = '4' THEN '11 times or more' -- categorize string values 
WHEN WHQ225 = '5' THEN 'Never' -- categorize string values 
WHEN WHQ225 = '7' THEN 'Refused' -- categorize string values 
WHEN WHQ225 = '9' THEN 'Dont know' -- categorize string values 
WHEN WHQ225 IS NULL THEN NULL 
ELSE WHQ225 
 END as times_lost_10_lbs_or_more_to_lose_weight, 

WHQ105 as WHQ105, -- could not automatically decode name of variable or transformation logic 

CASE
            WHEN WHD110 IS NULL THEN NULL 
ELSE WHD110 
 END as self_reported_weight_10_yrs_ago_pounds, 

WHQ115A as WHQ115A, -- could not automatically decode name of variable or transformation logic 

CASE
            WHEN WHD120 IS NULL THEN NULL 
ELSE WHD120 
 END as self_reported_weight_age_25_pounds, 

WHQ125 as WHQ125, -- could not automatically decode name of variable or transformation logic 

CASE
            WHEN WHD130 IS NULL THEN NULL 
ELSE WHD130 
 END as self_reported_height_age_25_inches, 

CASE
            WHEN WHD140 IS NULL THEN NULL 
ELSE WHD140 
 END as self_reported_greatest_weight_pounds, 

CASE
            WHEN WHQ150 IS NULL THEN NULL 
ELSE WHQ150 
 END as age_when_heaviest_weight, 

CASE
            WHEN WHQ190 = '1' THEN 'Yes' -- categorize string values 
WHEN WHQ190 = '2' THEN 'No' -- categorize string values 
WHEN WHQ190 = '7' THEN 'Refused' -- categorize string values 
WHEN WHQ190 = '9' THEN 'Dont know' -- categorize string values 
WHEN WHQ190 IS NULL THEN NULL 
ELSE WHQ190 
 END as have_you_ever_had_wt_loss_surgery, 

CASE
            WHEN SAFE_CAST(WHQ200 AS FLOAT64) > 79.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN WHQ200 IS NULL THEN NULL 
ELSE WHQ200 
 END as age_when_you_had_wt_loss_surgery, 

 FROM {{ ref('stg_weight_history_questionnaire') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/WHQ_J.htm
        