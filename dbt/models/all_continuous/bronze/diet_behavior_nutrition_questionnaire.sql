SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN SAFE_CAST(DBQ010 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DBQ010 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(DBQ010 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DBQ010 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DBQ010 IS NULL THEN NULL 
ELSE SAFE_CAST(DBQ010 AS STRING) 
 END as ever_breastfed_or_fed_breastmilk, 

CASE
            WHEN DBD030 IS NULL THEN NULL 
ELSE SAFE_CAST(DBD030 AS STRING) 
 END as age_stopped_breastfeeding_days, 

CASE
            WHEN SAFE_CAST(DBD041 AS FLOAT64) > 367.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DBD041 IS NULL THEN NULL 
ELSE SAFE_CAST(DBD041 AS FLOAT64) 
 END as age_first_fed_formula_days, 

CASE
            WHEN DBD050 IS NULL THEN NULL 
ELSE SAFE_CAST(DBD050 AS FLOAT64) 
 END as age_stopped_receiving_formula_days, 

CASE
            WHEN SAFE_CAST(DBD055 AS FLOAT64) > 732.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DBD055 IS NULL THEN NULL 
ELSE SAFE_CAST(DBD055 AS FLOAT64) 
 END as age_started_other_food_beverage, 

CASE
            WHEN SAFE_CAST(DBD061 AS FLOAT64) > 1097.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DBD061 IS NULL THEN NULL 
ELSE SAFE_CAST(DBD061 AS FLOAT64) 
 END as age_first_fed_milk_days, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ073A,'.0','') AS INT64) AS STRING) = '10' THEN 'Whole or regular milk' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ073A,'.0','') AS INT64) AS STRING) = '77' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ073A,'.0','') AS INT64) AS STRING) = '99' THEN 'Dont know' -- categorize string values 
WHEN DBQ073A IS NULL THEN NULL 
ELSE SAFE_CAST(DBQ073A AS STRING) 
 END as type_of_milk_first_fed_whole_milk, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ073B,'.0','') AS INT64) AS STRING) = '11' THEN '2% fat or reduced-fat milk' -- categorize string values 
WHEN DBQ073B IS NULL THEN NULL 
ELSE SAFE_CAST(DBQ073B AS STRING) 
 END as type_of_milk_first_fed_2_milk, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ073C,'.0','') AS INT64) AS STRING) = '12' THEN '1% fat or low-fat milk (includes 0.5% fat milk or low-fat milk not further specified),' -- categorize string values 
WHEN DBQ073C IS NULL THEN NULL 
ELSE SAFE_CAST(DBQ073C AS STRING) 
 END as type_of_milk_first_fed_1_milk, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ073D,'.0','') AS INT64) AS STRING) = '13' THEN 'fat-free, skim or nonfat milk, or' -- categorize string values 
WHEN DBQ073D IS NULL THEN NULL 
ELSE SAFE_CAST(DBQ073D AS STRING) 
 END as type_of_milk_first_fed_fat_free_milk, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ073E,'.0','') AS INT64) AS STRING) = '14' THEN 'soy milk, or' -- categorize string values 
WHEN DBQ073E IS NULL THEN NULL 
ELSE SAFE_CAST(DBQ073E AS STRING) 
 END as type_of_milk_first_fed_soy_milk, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ073U,'.0','') AS INT64) AS STRING) = '30' THEN 'Another type?' -- categorize string values 
WHEN DBQ073U IS NULL THEN NULL 
ELSE SAFE_CAST(DBQ073U AS STRING) 
 END as type_of_milk_first_fed_other, 

-- DBD085 as DBD085, -- not included in table but included in docs without transformation logic 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ700,'.0','') AS INT64) AS STRING) = '1' THEN 'Excellent' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ700,'.0','') AS INT64) AS STRING) = '2' THEN 'Very good' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ700,'.0','') AS INT64) AS STRING) = '3' THEN 'Good' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ700,'.0','') AS INT64) AS STRING) = '4' THEN 'Fair' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ700,'.0','') AS INT64) AS STRING) = '5' THEN 'Poor' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ700,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ700,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN DBQ700 IS NULL THEN NULL 
ELSE SAFE_CAST(DBQ700 AS STRING) 
 END as how_healthy_is_the_diet, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ197,'.0','') AS INT64) AS STRING) = '0' THEN 'Never' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ197,'.0','') AS INT64) AS STRING) = '1' THEN 'Rarely-less than once a week' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ197,'.0','') AS INT64) AS STRING) = '2' THEN 'Sometimes-once a week or more, but less than once a day, or' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ197,'.0','') AS INT64) AS STRING) = '3' THEN 'Often-once a day or more?' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ197,'.0','') AS INT64) AS STRING) = '4' THEN 'Varied' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ197,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ197,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN DBQ197 IS NULL THEN NULL 
ELSE SAFE_CAST(DBQ197 AS STRING) 
 END as past_30_day_milk_product_consumption, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ223A,'.0','') AS INT64) AS STRING) = '10' THEN 'Whole or regular,' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ223A,'.0','') AS INT64) AS STRING) = '77' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ223A,'.0','') AS INT64) AS STRING) = '99' THEN 'Dont know' -- categorize string values 
WHEN DBQ223A IS NULL THEN NULL 
ELSE SAFE_CAST(DBQ223A AS STRING) 
 END as you_drink_whole_or_regular_milk, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ223B,'.0','') AS INT64) AS STRING) = '11' THEN '2% fat or reduced-fat milk,' -- categorize string values 
WHEN DBQ223B IS NULL THEN NULL 
ELSE SAFE_CAST(DBQ223B AS STRING) 
 END as you_drink_2_fat_milk, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ223C,'.0','') AS INT64) AS STRING) = '12' THEN '1% fat or low-fat milk (includes 0.5% fat milk or low-fat milk not further specified),' -- categorize string values 
WHEN DBQ223C IS NULL THEN NULL 
ELSE SAFE_CAST(DBQ223C AS STRING) 
 END as you_drink_1_fat_milk, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ223D,'.0','') AS INT64) AS STRING) = '13' THEN 'Skim, nonfat, or 0.5% fat milk (includes liquid or reconstituted from dry),' -- categorize string values 
WHEN DBQ223D IS NULL THEN NULL 
ELSE SAFE_CAST(DBQ223D AS STRING) 
 END as you_drink_fat_free_skim_milk, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ223E,'.0','') AS INT64) AS STRING) = '14' THEN 'soy milk, or' -- categorize string values 
WHEN DBQ223E IS NULL THEN NULL 
ELSE SAFE_CAST(DBQ223E AS STRING) 
 END as you_drink_soy_milk, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ223U,'.0','') AS INT64) AS STRING) = '30' THEN 'Another type?' -- categorize string values 
WHEN DBQ223U IS NULL THEN NULL 
ELSE SAFE_CAST(DBQ223U AS STRING) 
 END as you_drink_another_type_of_milk, 

-- DBD225 as DBD225, -- not included in table but included in docs without transformation logic 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ229,'.0','') AS INT64) AS STRING) = '1' THEN '{Ive/Hes/Shes} been a regular milk drinker for most or all of {my/his/her} life, including {my/his/her} childhood' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ229,'.0','') AS INT64) AS STRING) = '2' THEN '{Ive/Hes/Shes} never been a regular milk drinker;' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ229,'.0','') AS INT64) AS STRING) = '3' THEN '{My/His/Her} milk drinking has varied over {my/his/her} life-sometimes {Ive/hes/shes} been a regular milk drinker' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ229,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ229,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN DBQ229 IS NULL THEN NULL 
ELSE SAFE_CAST(DBQ229 AS STRING) 
 END as regular_milk_use_5_times_per_week, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ235A,'.0','') AS INT64) AS STRING) = '0' THEN 'Never' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ235A,'.0','') AS INT64) AS STRING) = '1' THEN 'Rarely-less than once a week' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ235A,'.0','') AS INT64) AS STRING) = '2' THEN 'Sometimes-once a week or more, but less than once a day' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ235A,'.0','') AS INT64) AS STRING) = '3' THEN 'Often-once a day or more' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ235A,'.0','') AS INT64) AS STRING) = '4' THEN 'Varied' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ235A,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ235A,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN DBQ235A IS NULL THEN NULL 
ELSE SAFE_CAST(DBQ235A AS STRING) 
 END as how_often_drank_milk_age_5_12, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ235B,'.0','') AS INT64) AS STRING) = '0' THEN 'Never' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ235B,'.0','') AS INT64) AS STRING) = '1' THEN 'Rarely-less than once a week' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ235B,'.0','') AS INT64) AS STRING) = '2' THEN 'Sometimes-once a week or more, but less than once a day' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ235B,'.0','') AS INT64) AS STRING) = '3' THEN 'Often-once a day or more' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ235B,'.0','') AS INT64) AS STRING) = '4' THEN 'Varied' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ235B,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ235B,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN DBQ235B IS NULL THEN NULL 
ELSE SAFE_CAST(DBQ235B AS STRING) 
 END as how_often_drank_milk_age_13_17, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ235C,'.0','') AS INT64) AS STRING) = '0' THEN 'Never' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ235C,'.0','') AS INT64) AS STRING) = '1' THEN 'Rarely-less than once a week' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ235C,'.0','') AS INT64) AS STRING) = '2' THEN 'Sometimes-once a week or more, but less than once a day' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ235C,'.0','') AS INT64) AS STRING) = '3' THEN 'Often-once a day or more' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ235C,'.0','') AS INT64) AS STRING) = '4' THEN 'Varied' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ235C,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ235C,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN DBQ235C IS NULL THEN NULL 
ELSE SAFE_CAST(DBQ235C AS STRING) 
 END as how_often_drank_milk_age_18_35, 

-- DBD265A as DBD265A, -- not included in table but included in docs without transformation logic 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ301,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ301,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ301,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ301,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN DBQ301 IS NULL THEN NULL 
ELSE SAFE_CAST(DBQ301 AS STRING) 
 END as community_government_meals_delivered, 

CASE
            WHEN SAFE_CAST(DBQ330 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DBQ330 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(DBQ330 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DBQ330 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DBQ330 IS NULL THEN NULL 
ELSE SAFE_CAST(DBQ330 AS STRING) 
 END as eat_meals_at_community_senior_center, 

-- DBD355 as DBD355, -- not included in table but included in docs without transformation logic 

CASE
            WHEN SAFE_CAST(DBQ360 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DBQ360 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(DBQ360 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DBQ360 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DBQ360 IS NULL THEN NULL 
ELSE SAFE_CAST(DBQ360 AS STRING) 
 END as attend_kindergarten_thru_high_school, 

CASE
            WHEN SAFE_CAST(DBQ370 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DBQ370 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(DBQ370 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DBQ370 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DBQ370 IS NULL THEN NULL 
ELSE SAFE_CAST(DBQ370 AS STRING) 
 END as school_serves_school_lunches, 

CASE
            WHEN DBD381 IS NULL THEN NULL 
ELSE SAFE_CAST(DBD381 AS STRING) 
 END as of_times_week_get_school_lunch, 

CASE
            WHEN SAFE_CAST(DBQ390 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Free' -- categorize numeric values
WHEN SAFE_CAST(DBQ390 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Reduced price' -- categorize numeric values
WHEN SAFE_CAST(DBQ390 AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Full price' -- categorize numeric values
WHEN SAFE_CAST(DBQ390 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DBQ390 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DBQ390 IS NULL THEN NULL 
ELSE SAFE_CAST(DBQ390 AS STRING) 
 END as school_lunch_free_reduced_or_full_price, 

CASE
            WHEN SAFE_CAST(DBQ400 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DBQ400 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(DBQ400 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DBQ400 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DBQ400 IS NULL THEN NULL 
ELSE SAFE_CAST(DBQ400 AS STRING) 
 END as school_serve_complete_breakfast_each_day, 

CASE
            WHEN DBD411 IS NULL THEN NULL 
ELSE SAFE_CAST(DBD411 AS STRING) 
 END as of_times_week_get_school_breakfast, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ421,'.0','') AS INT64) AS STRING) = '1' THEN 'Free' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ421,'.0','') AS INT64) AS STRING) = '2' THEN 'Reduced price' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ421,'.0','') AS INT64) AS STRING) = '3' THEN 'Full price' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ421,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ421,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN DBQ421 IS NULL THEN NULL 
ELSE SAFE_CAST(DBQ421 AS STRING) 
 END as school_breakfast_free_reduced_full_price, 

-- DBQ422 as DBQ422, -- not included in table but included in docs without transformation logic 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ424,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ424,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ424,'.0','') AS INT64) AS STRING) = '3' THEN 'Did not attend summer program' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ424,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ424,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN DBQ424 IS NULL THEN NULL 
ELSE SAFE_CAST(DBQ424 AS STRING) 
 END as summer_program_meal_free_reduced_price, 

CASE
            WHEN SAFE_CAST(DBD895 AS FLOAT64) > 23.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DBD895 IS NULL THEN NULL 
ELSE SAFE_CAST(DBD895 AS FLOAT64) 
 END as of_meals_not_home_prepared, 

CASE
            WHEN SAFE_CAST(DBD900 AS FLOAT64) > 23.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DBD900 IS NULL THEN NULL 
ELSE SAFE_CAST(DBD900 AS FLOAT64) 
 END as of_meals_from_fast_food_or_pizza_place, 

CASE
            WHEN SAFE_CAST(DBD905 AS FLOAT64) > 92.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DBD905 IS NULL THEN NULL 
ELSE SAFE_CAST(DBD905 AS FLOAT64) 
 END as of_ready_to_eat_foods_in_past_30_days, 

CASE
            WHEN SAFE_CAST(DBD910 AS FLOAT64) > 92.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DBD910 IS NULL THEN NULL 
ELSE SAFE_CAST(DBD910 AS FLOAT64) 
 END as of_frozen_meals_pizza_in_past_30_days, 

-- DBQ715A as DBQ715A, -- not included in table but included in docs without transformation logic 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ596,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ596,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ596,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ596,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ596 IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ596 AS STRING) 
 END as heard_of_my_plate, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ606,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ606,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ606,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ606,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ606 IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ606 AS STRING) 
 END as looked_up_my_plate_on_internet, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ611,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ611,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ611,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ611,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ611 IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ611 AS STRING) 
 END as tried_my_plate_plan, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ930,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ930,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ930,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ930,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN DBQ930 IS NULL THEN NULL 
ELSE SAFE_CAST(DBQ930 AS STRING) 
 END as main_meal_planner_preparer, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ935,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ935,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ935,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ935,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN DBQ935 IS NULL THEN NULL 
ELSE SAFE_CAST(DBQ935 AS STRING) 
 END as shared_meal_planning_preparing_duty, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ940,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ940,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ940,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ940,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN DBQ940 IS NULL THEN NULL 
ELSE SAFE_CAST(DBQ940 AS STRING) 
 END as main_food_shopper, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ945,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ945,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ945,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DBQ945,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN DBQ945 IS NULL THEN NULL 
ELSE SAFE_CAST(DBQ945 AS STRING) 
 END as shared_food_shopping_duty, 

 FROM {{ ref('stg_diet_behavior_nutrition_questionnaire') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/DBQ_J.htm
        