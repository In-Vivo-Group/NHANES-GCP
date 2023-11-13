SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN DBQ010 = 1 THEN 'Yes' -- categorize numeric values
WHEN DBQ010 = 2 THEN 'No' -- categorize numeric values
WHEN DBQ010 = 7 THEN 'Refused' -- categorize numeric values
WHEN DBQ010 = 9 THEN 'Dont know' -- categorize numeric values
WHEN DBQ010 IS NULL THEN NULL 
ELSE DBQ010 
 END as ever_breastfed_or_fed_breastmilk, 

CASE
            WHEN DBD030 IS NULL THEN NULL 
ELSE DBD030 
 END as age_stopped_breastfeeding_days, 

CASE
            WHEN SAFE_CAST(DBD041 AS FLOAT64) > 365.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DBD041 IS NULL THEN NULL 
ELSE DBD041 
 END as age_first_fed_formula_days, 

CASE
            WHEN DBD050 IS NULL THEN NULL 
ELSE DBD050 
 END as age_stopped_receiving_formula_days, 

CASE
            WHEN SAFE_CAST(DBD055 AS FLOAT64) > 730.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DBD055 IS NULL THEN NULL 
ELSE DBD055 
 END as age_started_other_food_beverage, 

CASE
            WHEN SAFE_CAST(DBD061 AS FLOAT64) > 1095.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DBD061 IS NULL THEN NULL 
ELSE DBD061 
 END as age_first_fed_milk_days, 

CASE
            WHEN DBQ073A = '10' THEN 'Whole or regular milk' -- categorize string values 
WHEN DBQ073A = '77' THEN 'Refused' -- categorize string values 
WHEN DBQ073A = '99' THEN 'Dont know' -- categorize string values 
WHEN DBQ073A IS NULL THEN NULL 
ELSE DBQ073A 
 END as type_of_milk_first_fed_whole_milk, 

CASE
            WHEN DBQ073B = '11' THEN '2% fat or reduced-fat milk' -- categorize string values 
WHEN DBQ073B IS NULL THEN NULL 
ELSE DBQ073B 
 END as type_of_milk_first_fed_2_milk, 

CASE
            WHEN DBQ073C = '12' THEN '1% fat or low-fat milk (includes 0.5% fat milk or low-fat milk not further specified),' -- categorize string values 
WHEN DBQ073C IS NULL THEN NULL 
ELSE DBQ073C 
 END as type_of_milk_first_fed_1_milk, 

CASE
            WHEN DBQ073D = '13' THEN 'fat-free, skim or nonfat milk, or' -- categorize string values 
WHEN DBQ073D IS NULL THEN NULL 
ELSE DBQ073D 
 END as type_of_milk_first_fed_fat_free_milk, 

CASE
            WHEN DBQ073E = '14' THEN 'soy milk, or' -- categorize string values 
WHEN DBQ073E IS NULL THEN NULL 
ELSE DBQ073E 
 END as type_of_milk_first_fed_soy_milk, 

CASE
            WHEN DBQ073U = '30' THEN 'Another type?' -- categorize string values 
WHEN DBQ073U IS NULL THEN NULL 
ELSE DBQ073U 
 END as type_of_milk_first_fed_other, 

DBD085 as DBD085, -- could not automatically decode name of variable or transformation logic 

CASE
            WHEN DBQ700 = '1' THEN 'Excellent' -- categorize string values 
WHEN DBQ700 = '2' THEN 'Very good' -- categorize string values 
WHEN DBQ700 = '3' THEN 'Good' -- categorize string values 
WHEN DBQ700 = '4' THEN 'Fair' -- categorize string values 
WHEN DBQ700 = '5' THEN 'Poor' -- categorize string values 
WHEN DBQ700 = '7' THEN 'Refused' -- categorize string values 
WHEN DBQ700 = '9' THEN 'Dont know' -- categorize string values 
WHEN DBQ700 IS NULL THEN NULL 
ELSE DBQ700 
 END as how_healthy_is_the_diet, 

CASE
            WHEN DBQ197 = '0' THEN 'Never' -- categorize string values 
WHEN DBQ197 = '1' THEN 'Rarely-less than once a week' -- categorize string values 
WHEN DBQ197 = '2' THEN 'Sometimes-once a week or more, but less than once a day, or' -- categorize string values 
WHEN DBQ197 = '3' THEN 'Often-once a day or more?' -- categorize string values 
WHEN DBQ197 = '4' THEN 'Varied' -- categorize string values 
WHEN DBQ197 = '7' THEN 'Refused' -- categorize string values 
WHEN DBQ197 = '9' THEN 'Dont know' -- categorize string values 
WHEN DBQ197 IS NULL THEN NULL 
ELSE DBQ197 
 END as past_30_day_milk_product_consumption, 

CASE
            WHEN DBQ223A = '10' THEN 'Whole or regular,' -- categorize string values 
WHEN DBQ223A = '77' THEN 'Refused' -- categorize string values 
WHEN DBQ223A = '99' THEN 'Dont know' -- categorize string values 
WHEN DBQ223A IS NULL THEN NULL 
ELSE DBQ223A 
 END as you_drink_whole_or_regular_milk, 

CASE
            WHEN DBQ223B = '11' THEN '2% fat or reduced-fat milk,' -- categorize string values 
WHEN DBQ223B IS NULL THEN NULL 
ELSE DBQ223B 
 END as you_drink_2_fat_milk, 

CASE
            WHEN DBQ223C = '12' THEN '1% fat or low-fat milk (includes 0.5% fat milk or low-fat milk not further specified),' -- categorize string values 
WHEN DBQ223C IS NULL THEN NULL 
ELSE DBQ223C 
 END as you_drink_1_fat_milk, 

CASE
            WHEN DBQ223D = '13' THEN 'Skim, nonfat, or 0.5% fat milk (includes liquid or reconstituted from dry),' -- categorize string values 
WHEN DBQ223D IS NULL THEN NULL 
ELSE DBQ223D 
 END as you_drink_fat_free_skim_milk, 

CASE
            WHEN DBQ223E = '14' THEN 'soy milk, or' -- categorize string values 
WHEN DBQ223E IS NULL THEN NULL 
ELSE DBQ223E 
 END as you_drink_soy_milk, 

CASE
            WHEN DBQ223U = '30' THEN 'Another type?' -- categorize string values 
WHEN DBQ223U IS NULL THEN NULL 
ELSE DBQ223U 
 END as you_drink_another_type_of_milk, 

DBD225 as DBD225, -- could not automatically decode name of variable or transformation logic 

CASE
            WHEN DBQ229 = '1' THEN '{Ive/Hes/Shes} been a regular milk drinker for most or all of {my/his/her} life, including {my/his/her} childhood' -- categorize string values 
WHEN DBQ229 = '2' THEN '{Ive/Hes/Shes} never been a regular milk drinker;' -- categorize string values 
WHEN DBQ229 = '3' THEN '{My/His/Her} milk drinking has varied over {my/his/her} life-sometimes {Ive/hes/shes} been a regular milk drinker' -- categorize string values 
WHEN DBQ229 = '7' THEN 'Refused' -- categorize string values 
WHEN DBQ229 = '9' THEN 'Dont know' -- categorize string values 
WHEN DBQ229 IS NULL THEN NULL 
ELSE DBQ229 
 END as regular_milk_use_5_times_per_week, 

CASE
            WHEN DBQ235A = '0' THEN 'Never' -- categorize string values 
WHEN DBQ235A = '1' THEN 'Rarely-less than once a week' -- categorize string values 
WHEN DBQ235A = '2' THEN 'Sometimes-once a week or more, but less than once a day' -- categorize string values 
WHEN DBQ235A = '3' THEN 'Often-once a day or more' -- categorize string values 
WHEN DBQ235A = '4' THEN 'Varied' -- categorize string values 
WHEN DBQ235A = '7' THEN 'Refused' -- categorize string values 
WHEN DBQ235A = '9' THEN 'Dont know' -- categorize string values 
WHEN DBQ235A IS NULL THEN NULL 
ELSE DBQ235A 
 END as how_often_drank_milk_age_5_12, 

CASE
            WHEN DBQ235B = '0' THEN 'Never' -- categorize string values 
WHEN DBQ235B = '1' THEN 'Rarely-less than once a week' -- categorize string values 
WHEN DBQ235B = '2' THEN 'Sometimes-once a week or more, but less than once a day' -- categorize string values 
WHEN DBQ235B = '3' THEN 'Often-once a day or more' -- categorize string values 
WHEN DBQ235B = '4' THEN 'Varied' -- categorize string values 
WHEN DBQ235B = '7' THEN 'Refused' -- categorize string values 
WHEN DBQ235B = '9' THEN 'Dont know' -- categorize string values 
WHEN DBQ235B IS NULL THEN NULL 
ELSE DBQ235B 
 END as how_often_drank_milk_age_13_17, 

CASE
            WHEN DBQ235C = '0' THEN 'Never' -- categorize string values 
WHEN DBQ235C = '1' THEN 'Rarely-less than once a week' -- categorize string values 
WHEN DBQ235C = '2' THEN 'Sometimes-once a week or more, but less than once a day' -- categorize string values 
WHEN DBQ235C = '3' THEN 'Often-once a day or more' -- categorize string values 
WHEN DBQ235C = '4' THEN 'Varied' -- categorize string values 
WHEN DBQ235C = '7' THEN 'Refused' -- categorize string values 
WHEN DBQ235C = '9' THEN 'Dont know' -- categorize string values 
WHEN DBQ235C IS NULL THEN NULL 
ELSE DBQ235C 
 END as how_often_drank_milk_age_18_35, 

DBD265A as DBD265A, -- could not automatically decode name of variable or transformation logic 

CASE
            WHEN DBQ301 = '1' THEN 'Yes' -- categorize string values 
WHEN DBQ301 = '2' THEN 'No' -- categorize string values 
WHEN DBQ301 = '7' THEN 'Refused' -- categorize string values 
WHEN DBQ301 = '9' THEN 'Dont know' -- categorize string values 
WHEN DBQ301 IS NULL THEN NULL 
ELSE DBQ301 
 END as community_government_meals_delivered, 

CASE
            WHEN DBQ330 = 1 THEN 'Yes' -- categorize numeric values
WHEN DBQ330 = 2 THEN 'No' -- categorize numeric values
WHEN DBQ330 = 7 THEN 'Refused' -- categorize numeric values
WHEN DBQ330 = 9 THEN 'Dont know' -- categorize numeric values
WHEN DBQ330 IS NULL THEN NULL 
ELSE DBQ330 
 END as eat_meals_at_community_senior_center, 

DBD355 as DBD355, -- could not automatically decode name of variable or transformation logic 

CASE
            WHEN DBQ360 = 1 THEN 'Yes' -- categorize numeric values
WHEN DBQ360 = 2 THEN 'No' -- categorize numeric values
WHEN DBQ360 = 7 THEN 'Refused' -- categorize numeric values
WHEN DBQ360 = 9 THEN 'Dont know' -- categorize numeric values
WHEN DBQ360 IS NULL THEN NULL 
ELSE DBQ360 
 END as attend_kindergarten_thru_high_school, 

CASE
            WHEN DBQ370 = 1 THEN 'Yes' -- categorize numeric values
WHEN DBQ370 = 2 THEN 'No' -- categorize numeric values
WHEN DBQ370 = 7 THEN 'Refused' -- categorize numeric values
WHEN DBQ370 = 9 THEN 'Dont know' -- categorize numeric values
WHEN DBQ370 IS NULL THEN NULL 
ELSE DBQ370 
 END as school_serves_school_lunches, 

CASE
            WHEN DBD381 IS NULL THEN NULL 
ELSE DBD381 
 END as of_times_week_get_school_lunch, 

CASE
            WHEN DBQ390 = 1 THEN 'Free' -- categorize numeric values
WHEN DBQ390 = 2 THEN 'Reduced price' -- categorize numeric values
WHEN DBQ390 = 3 THEN 'Full price' -- categorize numeric values
WHEN DBQ390 = 7 THEN 'Refused' -- categorize numeric values
WHEN DBQ390 = 9 THEN 'Dont know' -- categorize numeric values
WHEN DBQ390 IS NULL THEN NULL 
ELSE DBQ390 
 END as school_lunch_free_reduced_or_full_price, 

CASE
            WHEN DBQ400 = 1 THEN 'Yes' -- categorize numeric values
WHEN DBQ400 = 2 THEN 'No' -- categorize numeric values
WHEN DBQ400 = 7 THEN 'Refused' -- categorize numeric values
WHEN DBQ400 = 9 THEN 'Dont know' -- categorize numeric values
WHEN DBQ400 IS NULL THEN NULL 
ELSE DBQ400 
 END as school_serve_complete_breakfast_each_day, 

CASE
            WHEN DBD411 IS NULL THEN NULL 
ELSE DBD411 
 END as of_times_week_get_school_breakfast, 

CASE
            WHEN DBQ421 = '1' THEN 'Free' -- categorize string values 
WHEN DBQ421 = '2' THEN 'Reduced price' -- categorize string values 
WHEN DBQ421 = '3' THEN 'Full price' -- categorize string values 
WHEN DBQ421 = '7' THEN 'Refused' -- categorize string values 
WHEN DBQ421 = '9' THEN 'Dont know' -- categorize string values 
WHEN DBQ421 IS NULL THEN NULL 
ELSE DBQ421 
 END as school_breakfast_free_reduced_full_price, 

DBQ422 as DBQ422, -- could not automatically decode name of variable or transformation logic 

CASE
            WHEN DBQ424 = '1' THEN 'Yes' -- categorize string values 
WHEN DBQ424 = '2' THEN 'No' -- categorize string values 
WHEN DBQ424 = '3' THEN 'Did not attend summer program' -- categorize string values 
WHEN DBQ424 = '7' THEN 'Refused' -- categorize string values 
WHEN DBQ424 = '9' THEN 'Dont know' -- categorize string values 
WHEN DBQ424 IS NULL THEN NULL 
ELSE DBQ424 
 END as summer_program_meal_free_reduced_price, 

CASE
            WHEN SAFE_CAST(DBD895 AS FLOAT64) > 21.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DBD895 IS NULL THEN NULL 
ELSE DBD895 
 END as of_meals_not_home_prepared, 

CASE
            WHEN SAFE_CAST(DBD900 AS FLOAT64) > 21.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DBD900 IS NULL THEN NULL 
ELSE DBD900 
 END as of_meals_from_fast_food_or_pizza_place, 

CASE
            WHEN SAFE_CAST(DBD905 AS FLOAT64) > 90.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DBD905 IS NULL THEN NULL 
ELSE DBD905 
 END as of_ready_to_eat_foods_in_past_30_days, 

CASE
            WHEN SAFE_CAST(DBD910 AS FLOAT64) > 90.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DBD910 IS NULL THEN NULL 
ELSE DBD910 
 END as of_frozen_meals_pizza_in_past_30_days, 

DBQ715A as DBQ715A, -- could not automatically decode name of variable or transformation logic 

CASE
            WHEN CBQ596 = '1' THEN 'Yes' -- categorize string values 
WHEN CBQ596 = '2' THEN 'No' -- categorize string values 
WHEN CBQ596 = '7' THEN 'Refused' -- categorize string values 
WHEN CBQ596 = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ596 IS NULL THEN NULL 
ELSE CBQ596 
 END as heard_of_my_plate, 

CASE
            WHEN CBQ606 = '1' THEN 'Yes' -- categorize string values 
WHEN CBQ606 = '2' THEN 'No' -- categorize string values 
WHEN CBQ606 = '7' THEN 'Refused' -- categorize string values 
WHEN CBQ606 = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ606 IS NULL THEN NULL 
ELSE CBQ606 
 END as looked_up_my_plate_on_internet, 

CASE
            WHEN CBQ611 = '1' THEN 'Yes' -- categorize string values 
WHEN CBQ611 = '2' THEN 'No' -- categorize string values 
WHEN CBQ611 = '7' THEN 'Refused' -- categorize string values 
WHEN CBQ611 = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ611 IS NULL THEN NULL 
ELSE CBQ611 
 END as tried_my_plate_plan, 

CASE
            WHEN DBQ930 = '1' THEN 'Yes' -- categorize string values 
WHEN DBQ930 = '2' THEN 'No' -- categorize string values 
WHEN DBQ930 = '7' THEN 'Refused' -- categorize string values 
WHEN DBQ930 = '9' THEN 'Dont know' -- categorize string values 
WHEN DBQ930 IS NULL THEN NULL 
ELSE DBQ930 
 END as main_meal_planner_preparer, 

CASE
            WHEN DBQ935 = '1' THEN 'Yes' -- categorize string values 
WHEN DBQ935 = '2' THEN 'No' -- categorize string values 
WHEN DBQ935 = '7' THEN 'Refused' -- categorize string values 
WHEN DBQ935 = '9' THEN 'Dont know' -- categorize string values 
WHEN DBQ935 IS NULL THEN NULL 
ELSE DBQ935 
 END as shared_meal_planning_preparing_duty, 

CASE
            WHEN DBQ940 = '1' THEN 'Yes' -- categorize string values 
WHEN DBQ940 = '2' THEN 'No' -- categorize string values 
WHEN DBQ940 = '7' THEN 'Refused' -- categorize string values 
WHEN DBQ940 = '9' THEN 'Dont know' -- categorize string values 
WHEN DBQ940 IS NULL THEN NULL 
ELSE DBQ940 
 END as main_food_shopper, 

CASE
            WHEN DBQ945 = '1' THEN 'Yes' -- categorize string values 
WHEN DBQ945 = '2' THEN 'No' -- categorize string values 
WHEN DBQ945 = '7' THEN 'Refused' -- categorize string values 
WHEN DBQ945 = '9' THEN 'Dont know' -- categorize string values 
WHEN DBQ945 IS NULL THEN NULL 
ELSE DBQ945 
 END as shared_food_shopping_duty, 

 FROM {{ ref('stg_diet_behavior_nutrition_questionnaire') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/DBQ_J.htm
        