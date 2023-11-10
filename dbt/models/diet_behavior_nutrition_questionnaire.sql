SELECT
SEQN as respondent_sequence_number,
CASE
    WHEN DBQ010 = 1 THEN 'Yes' 
WHEN DBQ010 = 2 THEN 'No' 
WHEN DBQ010 = 7 THEN 'Refused' 
WHEN DBQ010 = 9 THEN 'Don't know' 
WHEN DBQ010 IS NULL THEN NULL 
ELSE NULL 
 END as ever_breastfed_or_fed_breastmilk,
WHEN DBD030 IS NOT NULL THEN SAFE_CAST(DBD030 AS FLOAT64)WHEN DBD030 IS NULL THEN NULL 
ELSE NULL 
 END as age_stopped_breastfeeding_days,
WHEN DBD041 IS NOT NULL THEN SAFE_CAST(DBD041 AS FLOAT64)WHEN DBD041 IS NULL THEN NULL 
ELSE NULL 
 END as age_first_fed_formula_days,
WHEN DBD050 IS NOT NULL THEN SAFE_CAST(DBD050 AS FLOAT64)WHEN DBD050 IS NULL THEN NULL 
ELSE NULL 
 END as age_stopped_receiving_formula_days,
WHEN DBD055 IS NOT NULL THEN SAFE_CAST(DBD055 AS FLOAT64)WHEN DBD055 IS NULL THEN NULL 
ELSE NULL 
 END as age_started_other_food_beverage,
WHEN DBD061 IS NOT NULL THEN SAFE_CAST(DBD061 AS FLOAT64)WHEN DBD061 IS NULL THEN NULL 
ELSE NULL 
 END as age_first_fed_milk_days,
CASE
    WHEN DBQ073A = 10 THEN 'Whole or regular milk' 
WHEN DBQ073A = 77 THEN 'Refused' 
WHEN DBQ073A = 99 THEN 'Don't know' 
WHEN DBQ073A IS NULL THEN NULL 
ELSE NULL 
 END as type_of_milk_first_fed_whole_milk,
CASE
    WHEN DBQ073B = 11 THEN '2% fat or reduced-fat milk' 
WHEN DBQ073B IS NULL THEN NULL 
ELSE NULL 
 END as type_of_milk_first_fed_2_milk,
CASE
    WHEN DBQ073C = 12 THEN '1% fat or low-fat milk (includes 0.5% fat milk or low-fat milk not further specified),' 
WHEN DBQ073C IS NULL THEN NULL 
ELSE NULL 
 END as type_of_milk_first_fed_1_milk,
CASE
    WHEN DBQ073D = 13 THEN 'fat-free, skim or nonfat milk, or' 
WHEN DBQ073D IS NULL THEN NULL 
ELSE NULL 
 END as type_of_milk_first_fed_fat_free_milk,
CASE
    WHEN DBQ073E = 14 THEN 'soy milk, or' 
WHEN DBQ073E IS NULL THEN NULL 
ELSE NULL 
 END as type_of_milk_first_fed_soy_milk,
CASE
    WHEN DBQ073U = 30 THEN 'Another type?' 
WHEN DBQ073U IS NULL THEN NULL 
ELSE NULL 
 END as type_of_milk_first_fed_other,
DBD085 as check_item,
CASE
    WHEN DBQ700 = 1 THEN 'Excellent' 
WHEN DBQ700 = 2 THEN 'Very good' 
WHEN DBQ700 = 3 THEN 'Good' 
WHEN DBQ700 = 4 THEN 'Fair' 
WHEN DBQ700 = 5 THEN 'Poor' 
WHEN DBQ700 = 7 THEN 'Refused' 
WHEN DBQ700 = 9 THEN 'Don't know' 
WHEN DBQ700 IS NULL THEN NULL 
ELSE NULL 
 END as how_healthy_is_the_diet,
CASE
    WHEN DBQ197 = 0 THEN 'Never' 
WHEN DBQ197 = 1 THEN 'Rarely-less than once a week' 
WHEN DBQ197 = 2 THEN 'Sometimes-once a week or more, but less than once a day, or' 
WHEN DBQ197 = 3 THEN 'Often-once a day or more?' 
WHEN DBQ197 = 4 THEN 'Varied' 
WHEN DBQ197 = 7 THEN 'Refused' 
WHEN DBQ197 = 9 THEN 'Don't know' 
WHEN DBQ197 IS NULL THEN NULL 
ELSE NULL 
 END as past_30_day_milk_product_consumption,
CASE
    WHEN DBQ223A = 10 THEN 'Whole or regular,' 
WHEN DBQ223A = 77 THEN 'Refused' 
WHEN DBQ223A = 99 THEN 'Don't know' 
WHEN DBQ223A IS NULL THEN NULL 
ELSE NULL 
 END as you_drink_whole_or_regular_milk,
CASE
    WHEN DBQ223B = 11 THEN '2% fat or reduced-fat milk,' 
WHEN DBQ223B IS NULL THEN NULL 
ELSE NULL 
 END as you_drink_2_fat_milk,
CASE
    WHEN DBQ223C = 12 THEN '1% fat or low-fat milk (includes 0.5% fat milk or low-fat milk not further specified),' 
WHEN DBQ223C IS NULL THEN NULL 
ELSE NULL 
 END as you_drink_1_fat_milk,
CASE
    WHEN DBQ223D = 13 THEN 'Skim, nonfat, or 0.5% fat milk (includes liquid or reconstituted from dry),' 
WHEN DBQ223D IS NULL THEN NULL 
ELSE NULL 
 END as you_drink_fat_free_skim_milk,
CASE
    WHEN DBQ223E = 14 THEN 'soy milk, or' 
WHEN DBQ223E IS NULL THEN NULL 
ELSE NULL 
 END as you_drink_soy_milk,
CASE
    WHEN DBQ223U = 30 THEN 'Another type?' 
WHEN DBQ223U IS NULL THEN NULL 
ELSE NULL 
 END as you_drink_another_type_of_milk,
DBD225 as DBD225, -- Could not automatically decode
CASE
    WHEN DBQ229 = 1 THEN '{I've/He's/She's} been a regular milk drinker for most or all of {my/his/her} life, including {my/his/her} childhood' 
WHEN DBQ229 = 2 THEN '{I've/He's/She's} never been a regular milk drinker;' 
WHEN DBQ229 = 3 THEN '{My/His/Her} milk drinking has varied over {my/his/her} life-sometimes {I've/he's/she's} been a regular milk drinker' 
WHEN DBQ229 = 7 THEN 'Refused' 
WHEN DBQ229 = 9 THEN 'Don't know' 
WHEN DBQ229 IS NULL THEN NULL 
ELSE NULL 
 END as regular_milk_use_5_times_per_week,
CASE
    WHEN DBQ235A = 0 THEN 'Never' 
WHEN DBQ235A = 1 THEN 'Rarely-less than once a week' 
WHEN DBQ235A = 2 THEN 'Sometimes-once a week or more, but less than once a day' 
WHEN DBQ235A = 3 THEN 'Often-once a day or more' 
WHEN DBQ235A = 4 THEN 'Varied' 
WHEN DBQ235A = 7 THEN 'Refused' 
WHEN DBQ235A = 9 THEN 'Don't know' 
WHEN DBQ235A IS NULL THEN NULL 
ELSE NULL 
 END as how_often_drank_milk_age_5_12,
CASE
    WHEN DBQ235B = 0 THEN 'Never' 
WHEN DBQ235B = 1 THEN 'Rarely-less than once a week' 
WHEN DBQ235B = 2 THEN 'Sometimes-once a week or more, but less than once a day' 
WHEN DBQ235B = 3 THEN 'Often-once a day or more' 
WHEN DBQ235B = 4 THEN 'Varied' 
WHEN DBQ235B = 7 THEN 'Refused' 
WHEN DBQ235B = 9 THEN 'Don't know' 
WHEN DBQ235B IS NULL THEN NULL 
ELSE NULL 
 END as how_often_drank_milk_age_13_17,
CASE
    WHEN DBQ235C = 0 THEN 'Never' 
WHEN DBQ235C = 1 THEN 'Rarely-less than once a week' 
WHEN DBQ235C = 2 THEN 'Sometimes-once a week or more, but less than once a day' 
WHEN DBQ235C = 3 THEN 'Often-once a day or more' 
WHEN DBQ235C = 4 THEN 'Varied' 
WHEN DBQ235C = 7 THEN 'Refused' 
WHEN DBQ235C = 9 THEN 'Don't know' 
WHEN DBQ235C IS NULL THEN NULL 
ELSE NULL 
 END as how_often_drank_milk_age_18_35,
DBD265a as DBD265a, -- Could not automatically decode
CASE
    WHEN DBQ301 = 1 THEN 'Yes' 
WHEN DBQ301 = 2 THEN 'No' 
WHEN DBQ301 = 7 THEN 'Refused' 
WHEN DBQ301 = 9 THEN 'Don't know' 
WHEN DBQ301 IS NULL THEN NULL 
ELSE NULL 
 END as community_government_meals_delivered,
CASE
    WHEN DBQ330 = 1 THEN 'Yes' 
WHEN DBQ330 = 2 THEN 'No' 
WHEN DBQ330 = 7 THEN 'Refused' 
WHEN DBQ330 = 9 THEN 'Don't know' 
WHEN DBQ330 IS NULL THEN NULL 
ELSE NULL 
 END as eat_meals_at_community_senior_center,
DBD355 as DBD355, -- Could not automatically decode
CASE
    WHEN DBQ360 = 1 THEN 'Yes' 
WHEN DBQ360 = 2 THEN 'No' 
WHEN DBQ360 = 7 THEN 'Refused' 
WHEN DBQ360 = 9 THEN 'Don't know' 
WHEN DBQ360 IS NULL THEN NULL 
ELSE NULL 
 END as attend_kindergarten_thru_high_school,
CASE
    WHEN DBQ370 = 1 THEN 'Yes' 
WHEN DBQ370 = 2 THEN 'No' 
WHEN DBQ370 = 7 THEN 'Refused' 
WHEN DBQ370 = 9 THEN 'Don't know' 
WHEN DBQ370 IS NULL THEN NULL 
ELSE NULL 
 END as school_serves_school_lunches,
WHEN DBD381 IS NOT NULL THEN SAFE_CAST(DBD381 AS FLOAT64)WHEN DBD381 IS NULL THEN NULL 
ELSE NULL 
 END as of_times_week_get_school_lunch,
CASE
    WHEN DBQ390 = 1 THEN 'Free' 
WHEN DBQ390 = 2 THEN 'Reduced price' 
WHEN DBQ390 = 3 THEN 'Full price' 
WHEN DBQ390 = 7 THEN 'Refused' 
WHEN DBQ390 = 9 THEN 'Don't know' 
WHEN DBQ390 IS NULL THEN NULL 
ELSE NULL 
 END as school_lunch_free_reduced_or_full_price,
CASE
    WHEN DBQ400 = 1 THEN 'Yes' 
WHEN DBQ400 = 2 THEN 'No' 
WHEN DBQ400 = 7 THEN 'Refused' 
WHEN DBQ400 = 9 THEN 'Don't know' 
WHEN DBQ400 IS NULL THEN NULL 
ELSE NULL 
 END as school_serve_complete_breakfast_each_day,
WHEN DBD411 IS NOT NULL THEN SAFE_CAST(DBD411 AS FLOAT64)WHEN DBD411 IS NULL THEN NULL 
ELSE NULL 
 END as of_times_week_get_school_breakfast,
CASE
    WHEN DBQ421 = 1 THEN 'Free' 
WHEN DBQ421 = 2 THEN 'Reduced price' 
WHEN DBQ421 = 3 THEN 'Full price' 
WHEN DBQ421 = 7 THEN 'Refused' 
WHEN DBQ421 = 9 THEN 'Don't know' 
WHEN DBQ421 IS NULL THEN NULL 
ELSE NULL 
 END as school_breakfast_free_reduced_full_price,
DBQ422 as DBQ422, -- Could not automatically decode
CASE
    WHEN DBQ424 = 1 THEN 'Yes' 
WHEN DBQ424 = 2 THEN 'No' 
WHEN DBQ424 = 3 THEN 'Did not attend summer program' 
WHEN DBQ424 = 7 THEN 'Refused' 
WHEN DBQ424 = 9 THEN 'Don't know' 
WHEN DBQ424 IS NULL THEN NULL 
ELSE NULL 
 END as summer_program_meal_free_reduced_price,
WHEN DBD895 IS NOT NULL THEN SAFE_CAST(DBD895 AS FLOAT64)WHEN DBD895 IS NULL THEN NULL 
ELSE NULL 
 END as of_meals_not_home_prepared,
WHEN DBD900 IS NOT NULL THEN SAFE_CAST(DBD900 AS FLOAT64)WHEN DBD900 IS NULL THEN NULL 
ELSE NULL 
 END as of_meals_from_fast_food_or_pizza_place,
WHEN DBD905 IS NOT NULL THEN SAFE_CAST(DBD905 AS FLOAT64)WHEN DBD905 IS NULL THEN NULL 
ELSE NULL 
 END as of_ready_to_eat_foods_in_past_30_days,
WHEN DBD910 IS NOT NULL THEN SAFE_CAST(DBD910 AS FLOAT64)WHEN DBD910 IS NULL THEN NULL 
ELSE NULL 
 END as of_frozen_meals_pizza_in_past_30_days,
DBQ715a as DBQ715a, -- Could not automatically decode
CASE
    WHEN CBQ596 = 1 THEN 'Yes' 
WHEN CBQ596 = 2 THEN 'No' 
WHEN CBQ596 = 7 THEN 'Refused' 
WHEN CBQ596 = 9 THEN 'Don't know' 
WHEN CBQ596 IS NULL THEN NULL 
ELSE NULL 
 END as heard_of_my_plate,
CASE
    WHEN CBQ606 = 1 THEN 'Yes' 
WHEN CBQ606 = 2 THEN 'No' 
WHEN CBQ606 = 7 THEN 'Refused' 
WHEN CBQ606 = 9 THEN 'Don't know' 
WHEN CBQ606 IS NULL THEN NULL 
ELSE NULL 
 END as looked_up_my_plate_on_internet,
CASE
    WHEN CBQ611 = 1 THEN 'Yes' 
WHEN CBQ611 = 2 THEN 'No' 
WHEN CBQ611 = 7 THEN 'Refused' 
WHEN CBQ611 = 9 THEN 'Don't know' 
WHEN CBQ611 IS NULL THEN NULL 
ELSE NULL 
 END as tried_my_plate_plan,
CASE
    WHEN DBQ930 = 1 THEN 'Yes' 
WHEN DBQ930 = 2 THEN 'No' 
WHEN DBQ930 = 7 THEN 'Refused' 
WHEN DBQ930 = 9 THEN 'Don't know' 
WHEN DBQ930 IS NULL THEN NULL 
ELSE NULL 
 END as main_meal_planner_preparer,
CASE
    WHEN DBQ935 = 1 THEN 'Yes' 
WHEN DBQ935 = 2 THEN 'No' 
WHEN DBQ935 = 7 THEN 'Refused' 
WHEN DBQ935 = 9 THEN 'Don't know' 
WHEN DBQ935 IS NULL THEN NULL 
ELSE NULL 
 END as shared_meal_planning_preparing_duty,
CASE
    WHEN DBQ940 = 1 THEN 'Yes' 
WHEN DBQ940 = 2 THEN 'No' 
WHEN DBQ940 = 7 THEN 'Refused' 
WHEN DBQ940 = 9 THEN 'Don't know' 
WHEN DBQ940 IS NULL THEN NULL 
ELSE NULL 
 END as main_food_shopper,
CASE
    WHEN DBQ945 = 1 THEN 'Yes' 
WHEN DBQ945 = 2 THEN 'No' 
WHEN DBQ945 = 7 THEN 'Refused' 
WHEN DBQ945 = 9 THEN 'Don't know' 
WHEN DBQ945 IS NULL THEN NULL 
ELSE NULL 
 END as shared_food_shopping_duty,
 FROM {ref('stg_diet_behavior_nutrition_questionnaire'})