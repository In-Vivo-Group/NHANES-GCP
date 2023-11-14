SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN SAFE_CAST(CBQ502 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(CBQ502 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(CBQ502 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(CBQ502 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN CBQ502 IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ502 AS STRING) 
 END as hand_card_booklet_available, 

CASE
            WHEN SAFE_CAST(CBQ503 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(CBQ503 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(CBQ503 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(CBQ503 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN CBQ503 IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ503 AS STRING) 
 END as a_package_with_food_label_available, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ506,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ506,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ506,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ506,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ506 IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ506 AS STRING) 
 END as buy_food_from_fast_food_pizza_places, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ536,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ536,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ536,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ536,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ536 IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ536 AS STRING) 
 END as notice_calories_at_fast_food_pizza_place, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ541,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ541,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ541,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ541,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ541 IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ541 AS STRING) 
 END as use_calorie_info_at_fast_food_pizza, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ551,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ551,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ551,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ551,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ551 IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ551 AS STRING) 
 END as eat_from_restaurant_w_waiter, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ581,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ581,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ581,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ581,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ581 IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ581 AS STRING) 
 END as notice_calories_at_restaurant_w_waiter, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ586,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ586,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ586,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ586,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ586 IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ586 AS STRING) 
 END as use_calorie_info_at_restaurant_w_waiter, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ830,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ830,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ830,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ830,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ830 IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ830 AS STRING) 
 END as eat_at_all_you_can_eat_buffet, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ835,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ835,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ835,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ835,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ835 IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ835 AS STRING) 
 END as notice_calorie_info_at_buffet, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ840,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ840,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ840,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ840,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ840 IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ840 AS STRING) 
 END as use_calorie_information_at_buffet, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ845,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ845,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ845,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ845,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ845 IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ845 AS STRING) 
 END as buy_from_coffee_shop_juice_bar, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ850,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ850,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ850,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ850,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ850 IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ850 AS STRING) 
 END as notice_calorie_info_at_coffee_shop, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ855,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ855,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ855,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ855,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ855 IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ855 AS STRING) 
 END as use_calorie_info_at_coffee_shop, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ860,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ860,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ860,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ860,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ860 IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ860 AS STRING) 
 END as buy_at_recreational_places, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ865,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ865,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ865,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ865,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ865 IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ865 AS STRING) 
 END as notice_calories_at_recreational_places, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ870,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ870,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ870,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ870,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ870 IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ870 AS STRING) 
 END as use_calorie_info_at_recreational_places, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ875,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ875,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ875,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ875,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ875 IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ875 AS STRING) 
 END as buy_prepared_foods_from_grocery_store, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ880,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ880,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ880,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ880,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ880 IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ880 AS STRING) 
 END as notice_calorie_info_at_grocery_store, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ885,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ885,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ885,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ885,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ885 IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ885 AS STRING) 
 END as use_calorie_info_at_grocery_store, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ890,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ890,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ890,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ890,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ890 IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ890 AS STRING) 
 END as buy_prepared_food_at_convenience_store, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ895,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ895,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ895,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ895,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ895 IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ895 AS STRING) 
 END as notice_calorie_info_at_convenience_store, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ900,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ900,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ900,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ900,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ900 IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ900 AS STRING) 
 END as use_calorie_info_at_convenience_store, 

-- CBQ615 as CBQ615, -- not included in table but included in docs without transformation logic 

CASE
            WHEN SAFE_CAST(CBQ645 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Less than 500 calories' -- categorize numeric values
WHEN SAFE_CAST(CBQ645 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN '500-1000 calories' -- categorize numeric values
WHEN SAFE_CAST(CBQ645 AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN '1001-1500 calories' -- categorize numeric values
WHEN SAFE_CAST(CBQ645 AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN '1501-2000 calories' -- categorize numeric values
WHEN SAFE_CAST(CBQ645 AS FLOAT64) = SAFE_CAST(5 AS FLOAT64) THEN '2001-2500 calories' -- categorize numeric values
WHEN SAFE_CAST(CBQ645 AS FLOAT64) = SAFE_CAST(6 AS FLOAT64) THEN '2501-3000 calories' -- categorize numeric values
WHEN SAFE_CAST(CBQ645 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'More than 3000 calories' -- categorize numeric values
WHEN SAFE_CAST(CBQ645 AS FLOAT64) = SAFE_CAST(77 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(CBQ645 AS FLOAT64) = SAFE_CAST(99 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN CBQ645 IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ645 AS STRING) 
 END as calories_needed_per_day, 

CASE
            WHEN SAFE_CAST(CBQ700 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Always' -- categorize numeric values
WHEN SAFE_CAST(CBQ700 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Most of the time' -- categorize numeric values
WHEN SAFE_CAST(CBQ700 AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Sometimes' -- categorize numeric values
WHEN SAFE_CAST(CBQ700 AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN 'Rarely' -- categorize numeric values
WHEN SAFE_CAST(CBQ700 AS FLOAT64) = SAFE_CAST(5 AS FLOAT64) THEN 'Never' -- categorize numeric values
WHEN SAFE_CAST(CBQ700 AS FLOAT64) = SAFE_CAST(6 AS FLOAT64) THEN 'Never seen' -- categorize numeric values
WHEN SAFE_CAST(CBQ700 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(CBQ700 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN CBQ700 IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ700 AS STRING) 
 END as use_expiration_date_on_food_packages, 

CASE
            WHEN SAFE_CAST(DBQ780 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Always' -- categorize numeric values
WHEN SAFE_CAST(DBQ780 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Most of the time' -- categorize numeric values
WHEN SAFE_CAST(DBQ780 AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Sometimes' -- categorize numeric values
WHEN SAFE_CAST(DBQ780 AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN 'Rarely' -- categorize numeric values
WHEN SAFE_CAST(DBQ780 AS FLOAT64) = SAFE_CAST(5 AS FLOAT64) THEN 'Never' -- categorize numeric values
WHEN SAFE_CAST(DBQ780 AS FLOAT64) = SAFE_CAST(6 AS FLOAT64) THEN 'Never seen' -- categorize numeric values
WHEN SAFE_CAST(DBQ780 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DBQ780 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DBQ780 IS NULL THEN NULL 
ELSE SAFE_CAST(DBQ780 AS STRING) 
 END as use_health_claims_on_food_packages, 

CASE
            WHEN SAFE_CAST(DBQ750 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Always' -- categorize numeric values
WHEN SAFE_CAST(DBQ750 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Most of the time' -- categorize numeric values
WHEN SAFE_CAST(DBQ750 AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Sometimes' -- categorize numeric values
WHEN SAFE_CAST(DBQ750 AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN 'Rarely' -- categorize numeric values
WHEN SAFE_CAST(DBQ750 AS FLOAT64) = SAFE_CAST(5 AS FLOAT64) THEN 'Never' -- categorize numeric values
WHEN SAFE_CAST(DBQ750 AS FLOAT64) = SAFE_CAST(6 AS FLOAT64) THEN 'Never seen' -- categorize numeric values
WHEN SAFE_CAST(DBQ750 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DBQ750 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DBQ750 IS NULL THEN NULL 
ELSE SAFE_CAST(DBQ750 AS STRING) 
 END as use_nutrition_facts_panel_on_food_label, 

CASE
            WHEN SAFE_CAST(DBQ760 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Always' -- categorize numeric values
WHEN SAFE_CAST(DBQ760 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Most of the time' -- categorize numeric values
WHEN SAFE_CAST(DBQ760 AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Sometimes' -- categorize numeric values
WHEN SAFE_CAST(DBQ760 AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN 'Rarely' -- categorize numeric values
WHEN SAFE_CAST(DBQ760 AS FLOAT64) = SAFE_CAST(5 AS FLOAT64) THEN 'Never' -- categorize numeric values
WHEN SAFE_CAST(DBQ760 AS FLOAT64) = SAFE_CAST(6 AS FLOAT64) THEN 'Never seen' -- categorize numeric values
WHEN SAFE_CAST(DBQ760 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DBQ760 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DBQ760 IS NULL THEN NULL 
ELSE SAFE_CAST(DBQ760 AS STRING) 
 END as use_ingredients_list_on_food_label, 

CASE
            WHEN SAFE_CAST(DBQ770 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Always' -- categorize numeric values
WHEN SAFE_CAST(DBQ770 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Most of the time' -- categorize numeric values
WHEN SAFE_CAST(DBQ770 AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Sometimes' -- categorize numeric values
WHEN SAFE_CAST(DBQ770 AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN 'Rarely' -- categorize numeric values
WHEN SAFE_CAST(DBQ770 AS FLOAT64) = SAFE_CAST(5 AS FLOAT64) THEN 'Never' -- categorize numeric values
WHEN SAFE_CAST(DBQ770 AS FLOAT64) = SAFE_CAST(6 AS FLOAT64) THEN 'Never seen' -- categorize numeric values
WHEN SAFE_CAST(DBQ770 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DBQ770 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DBQ770 IS NULL THEN NULL 
ELSE SAFE_CAST(DBQ770 AS STRING) 
 END as use_serving_size_info_on_food_label, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ905,'.0','') AS INT64) AS STRING) = '1' THEN 'Always' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ905,'.0','') AS INT64) AS STRING) = '2' THEN 'Most of the time' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ905,'.0','') AS INT64) AS STRING) = '3' THEN 'Sometimes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ905,'.0','') AS INT64) AS STRING) = '4' THEN 'Rarely' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ905,'.0','') AS INT64) AS STRING) = '5' THEN 'Never' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ905,'.0','') AS INT64) AS STRING) = '6' THEN 'Never seen' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ905,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ905,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ905 IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ905 AS STRING) 
 END as use_number_of_servings_on_food_label, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ910,'.0','') AS INT64) AS STRING) = '1' THEN 'Always' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ910,'.0','') AS INT64) AS STRING) = '2' THEN 'Most of the time' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ910,'.0','') AS INT64) AS STRING) = '3' THEN 'Sometimes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ910,'.0','') AS INT64) AS STRING) = '4' THEN 'Rarely' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ910,'.0','') AS INT64) AS STRING) = '5' THEN 'Never' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ910,'.0','') AS INT64) AS STRING) = '6' THEN 'Never seen' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ910,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ910,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ910 IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ910 AS STRING) 
 END as use_footnote_on_food_label, 

CASE
            WHEN SAFE_CAST(CBQ685 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Always' -- categorize numeric values
WHEN SAFE_CAST(CBQ685 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Most of the time' -- categorize numeric values
WHEN SAFE_CAST(CBQ685 AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Sometimes' -- categorize numeric values
WHEN SAFE_CAST(CBQ685 AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN 'Rarely' -- categorize numeric values
WHEN SAFE_CAST(CBQ685 AS FLOAT64) = SAFE_CAST(5 AS FLOAT64) THEN 'Never' -- categorize numeric values
WHEN SAFE_CAST(CBQ685 AS FLOAT64) = SAFE_CAST(6 AS FLOAT64) THEN 'Never seen' -- categorize numeric values
WHEN SAFE_CAST(CBQ685 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(CBQ685 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN CBQ685 IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ685 AS STRING) 
 END as use_percent_daily_value_on_food_label, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ915,'.0','') AS INT64) AS STRING) = '1' THEN 'Only percent daily value' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ915,'.0','') AS INT64) AS STRING) = '2' THEN 'Percent daily value more often' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ915,'.0','') AS INT64) AS STRING) = '3' THEN 'Both percent daily value and amount of nutrients about the same' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ915,'.0','') AS INT64) AS STRING) = '4' THEN 'Amount of nutrients more often' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ915,'.0','') AS INT64) AS STRING) = '5' THEN 'Only amount of nutrients' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ915,'.0','') AS INT64) AS STRING) = '6' THEN 'Do not use either' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ915,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ915,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ915 IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ915 AS STRING) 
 END as use_percent_daily_value_or_nutrients, 

-- CBQ920 as CBQ920, -- not included in table but included in docs without transformation logic 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ925,'.0','') AS INT64) AS STRING) = '1' THEN '5 % of the calories in one serving come from Vit A' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ925,'.0','') AS INT64) AS STRING) = '2' THEN 'One serving contains 5% Vit A by weight' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ925,'.0','') AS INT64) AS STRING) = '3' THEN 'One serving supplies 5% of the Vit A you should have in a day' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ925,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ925,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ925 IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ925 AS STRING) 
 END as what_does_5_daily_value_mean, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ930,'.0','') AS INT64) AS STRING) = '1' THEN 'Always' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ930,'.0','') AS INT64) AS STRING) = '2' THEN 'Most of the time' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ930,'.0','') AS INT64) AS STRING) = '3' THEN 'Sometimes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ930,'.0','') AS INT64) AS STRING) = '4' THEN 'Rarely' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ930,'.0','') AS INT64) AS STRING) = '5' THEN 'Never' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ930,'.0','') AS INT64) AS STRING) = '6' THEN 'Never seen' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ930,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ930,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ930 IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ930 AS STRING) 
 END as use_calorie_information_on_food_label, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ935,'.0','') AS INT64) AS STRING) = '1' THEN 'Always' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ935,'.0','') AS INT64) AS STRING) = '2' THEN 'Most of the time' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ935,'.0','') AS INT64) AS STRING) = '3' THEN 'Sometimes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ935,'.0','') AS INT64) AS STRING) = '4' THEN 'Rarely' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ935,'.0','') AS INT64) AS STRING) = '5' THEN 'Never' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ935,'.0','') AS INT64) AS STRING) = '6' THEN 'Never seen' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ935,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ935,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ935 IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ935 AS STRING) 
 END as use_sugars_info_on_food_label, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ945,'.0','') AS INT64) AS STRING) = '1' THEN 'Always' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ945,'.0','') AS INT64) AS STRING) = '2' THEN 'Most of the time' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ945,'.0','') AS INT64) AS STRING) = '3' THEN 'Sometimes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ945,'.0','') AS INT64) AS STRING) = '4' THEN 'Rarely' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ945,'.0','') AS INT64) AS STRING) = '5' THEN 'Never' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ945,'.0','') AS INT64) AS STRING) = '6' THEN 'Never seen' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ945,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ945,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ945 IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ945 AS STRING) 
 END as use_sodium_info_on_food_label, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ950,'.0','') AS INT64) AS STRING) = '1' THEN 'Always' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ950,'.0','') AS INT64) AS STRING) = '2' THEN 'Most of the time' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ950,'.0','') AS INT64) AS STRING) = '3' THEN 'Sometimes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ950,'.0','') AS INT64) AS STRING) = '4' THEN 'Rarely' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ950,'.0','') AS INT64) AS STRING) = '5' THEN 'Never' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ950,'.0','') AS INT64) AS STRING) = '6' THEN 'Never seen' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ950,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(CBQ950,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ950 IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ950 AS STRING) 
 END as use_second_column_on_food_label, 

-- CBQ708 as CBQ708, -- not included in table but included in docs without transformation logic 

CASE
            WHEN SAFE_CAST(CBQ738A AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'To watch my weight and/or lose weight' -- categorize numeric values
WHEN SAFE_CAST(CBQ738A AS FLOAT64) = SAFE_CAST(77 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(CBQ738A AS FLOAT64) = SAFE_CAST(99 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN CBQ738A IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ738A AS STRING) 
 END as check_label_to_watch_my_weight, 

CASE
            WHEN SAFE_CAST(CBQ738B AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'A family member is trying to watch weight and/or lose weight' -- categorize numeric values
WHEN CBQ738B IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ738B AS STRING) 
 END as check_label_for_family_member_s_weight, 

CASE
            WHEN SAFE_CAST(CBQ738C AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'To watch for diabetes, high triglycerides, high cholesterol, high blood pressure or other health conditions' -- categorize numeric values
WHEN CBQ738C IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ738C AS STRING) 
 END as check_label_for_my_health_conditions, 

CASE
            WHEN SAFE_CAST(CBQ738D AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN 'A family member has a health condition (for example, diabetes, high triglycerides, high cholesterol, high blood pressure, etc)' -- categorize numeric values
WHEN CBQ738D IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ738D AS STRING) 
 END as check_label_for_other_s_health_condition, 

CASE
            WHEN SAFE_CAST(CBQ738E AS FLOAT64) = SAFE_CAST(5 AS FLOAT64) THEN 'I am allergic to certain food(s)' -- categorize numeric values
WHEN CBQ738E IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ738E AS STRING) 
 END as check_label_for_my_food_allergies, 

CASE
            WHEN SAFE_CAST(CBQ738F AS FLOAT64) = SAFE_CAST(6 AS FLOAT64) THEN 'My family member(s) has food allergies' -- categorize numeric values
WHEN CBQ738F IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ738F AS STRING) 
 END as check_label_for_other_s_food_allergies, 

CASE
            WHEN SAFE_CAST(CBQ738G AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'To avoid certain ingredients (such as MSG, high fructose corn syrup, color dyes, artificial preservatives, or hydrogenated oils, etc.)' -- categorize numeric values
WHEN CBQ738G IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ738G AS STRING) 
 END as check_label_to_avoid_certain_ingredients, 

CASE
            WHEN SAFE_CAST(CBQ738H AS FLOAT64) = SAFE_CAST(8 AS FLOAT64) THEN 'To increase certain nutrients in my/familys diet (such as fiber, calcium, etc)' -- categorize numeric values
WHEN CBQ738H IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ738H AS STRING) 
 END as check_label_to_increase_certain_nutrient, 

CASE
            WHEN SAFE_CAST(CBQ738I AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'To compare which brand/food is better/healthier' -- categorize numeric values
WHEN CBQ738I IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ738I AS STRING) 
 END as check_label_to_compare_b_w_brands_foods, 

CASE
            WHEN SAFE_CAST(CBQ738J AS FLOAT64) = SAFE_CAST(10 AS FLOAT64) THEN 'To make better/healthier choices for me and my family' -- categorize numeric values
WHEN CBQ738J IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ738J AS STRING) 
 END as check_label_to_make_better_choices, 

CASE
            WHEN SAFE_CAST(CBQ738K AS FLOAT64) = SAFE_CAST(11 AS FLOAT64) THEN 'To watch for calorie content or certain nutrients (such as sodium, trans fat, sugar, carbohydrates, or protein, etc.)' -- categorize numeric values
WHEN CBQ738K IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ738K AS STRING) 
 END as check_label_to_watch_certain_nutrients, 

CASE
            WHEN SAFE_CAST(CBQ738CD AS FLOAT64) = SAFE_CAST(91 AS FLOAT64) THEN 'Others' -- categorize numeric values
WHEN CBQ738CD IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ738CD AS STRING) 
 END as check_label_for_other_reasons, 

-- CBQ751 as CBQ751, -- not included in table but included in docs without transformation logic 

CASE
            WHEN SAFE_CAST(CBQ698A AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'I dont have time' -- categorize numeric values
WHEN SAFE_CAST(CBQ698A AS FLOAT64) = SAFE_CAST(77 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(CBQ698A AS FLOAT64) = SAFE_CAST(99 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN CBQ698A IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ698A AS STRING) 
 END as not_check_label_don_t_have_the_time, 

CASE
            WHEN SAFE_CAST(CBQ698B AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'The print is too small for me to read' -- categorize numeric values
WHEN CBQ698B IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ698B AS STRING) 
 END as not_check_label_the_print_is_too_small, 

CASE
            WHEN SAFE_CAST(CBQ698C AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Im satisfied with my health so there is no need for me to check' -- categorize numeric values
WHEN CBQ698C IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ698C AS STRING) 
 END as not_check_label_satisfied_w_my_health, 

CASE
            WHEN SAFE_CAST(CBQ698D AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN 'I have a good diet so there is no need to check labels' -- categorize numeric values
WHEN CBQ698D IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ698D AS STRING) 
 END as not_check_label_i_have_a_good_diet, 

CASE
            WHEN SAFE_CAST(CBQ698E AS FLOAT64) = SAFE_CAST(5 AS FLOAT64) THEN 'I usually buy foods that Im used to, so I dont feel that I need to check labels' -- categorize numeric values
WHEN CBQ698E IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ698E AS STRING) 
 END as not_check_label_mostly_familiar_foods, 

CASE
            WHEN SAFE_CAST(CBQ698F AS FLOAT64) = SAFE_CAST(6 AS FLOAT64) THEN 'I buy what I or my family like, I dont care about the labels' -- categorize numeric values
WHEN CBQ698F IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ698F AS STRING) 
 END as not_check_label_don_t_care_about_labels, 

CASE
            WHEN SAFE_CAST(CBQ698G AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'I dont think the food labels are important to me' -- categorize numeric values
WHEN CBQ698G IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ698G AS STRING) 
 END as not_check_label_not_important_to_me, 

CASE
            WHEN SAFE_CAST(CBQ698H AS FLOAT64) = SAFE_CAST(8 AS FLOAT64) THEN 'I wont know what to look for even if I read the labels' -- categorize numeric values
WHEN CBQ698H IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ698H AS STRING) 
 END as not_check_label_what_to_look_for, 

CASE
            WHEN SAFE_CAST(CBQ698I AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'I cant read English that well' -- categorize numeric values
WHEN CBQ698I IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ698I AS STRING) 
 END as not_check_label_can_t_read_english_well, 

CASE
            WHEN SAFE_CAST(CBQ698CD AS FLOAT64) = SAFE_CAST(91 AS FLOAT64) THEN 'Others' -- categorize numeric values
WHEN CBQ698CD IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ698CD AS STRING) 
 END as not_check_label_for_other_reasons, 

CASE
            WHEN SAFE_CAST(CBQ695A AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'The amount of this food that people should eat' -- categorize numeric values
WHEN SAFE_CAST(CBQ695A AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(CBQ695A AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN CBQ695A IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ695A AS STRING) 
 END as serving_size_amount_people_should_eat, 

CASE
            WHEN SAFE_CAST(CBQ695B AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'The amount of this food that people usually eat' -- categorize numeric values
WHEN CBQ695B IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ695B AS STRING) 
 END as serving_size_amount_people_usually_eat, 

CASE
            WHEN SAFE_CAST(CBQ695C AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Something that makes it easier to compare foods' -- categorize numeric values
WHEN CBQ695C IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ695C AS STRING) 
 END as serving_size_help_comparing_among_foods, 

CASE
            WHEN SAFE_CAST(CBQ785 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'English' -- categorize numeric values
WHEN SAFE_CAST(CBQ785 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Spanish' -- categorize numeric values
WHEN SAFE_CAST(CBQ785 AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'English and Spanish' -- categorize numeric values
WHEN CBQ785 IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ785 AS STRING) 
 END as language_of_the_interview, 

CASE
            WHEN WTDRD1 IS NULL THEN NULL 
ELSE SAFE_CAST(WTDRD1 AS STRING) 
 END as dietary_day_one_sample_weight, 

 FROM {{ ref('stg_consumer_behavior_phone_follow_up_module_adult_questionnaire') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/CBQPFA_J.htm
        