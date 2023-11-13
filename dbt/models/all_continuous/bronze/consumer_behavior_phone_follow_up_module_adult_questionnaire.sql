SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN CBQ502 = 1 THEN 'Yes' -- categorize numeric values
WHEN CBQ502 = 2 THEN 'No' -- categorize numeric values
WHEN CBQ502 = 7 THEN 'Refused' -- categorize numeric values
WHEN CBQ502 = 9 THEN 'Dont know' -- categorize numeric values
WHEN CBQ502 IS NULL THEN NULL 
ELSE CBQ502 
 END as hand_card_booklet_available, 

CASE
            WHEN CBQ503 = 1 THEN 'Yes' -- categorize numeric values
WHEN CBQ503 = 2 THEN 'No' -- categorize numeric values
WHEN CBQ503 = 7 THEN 'Refused' -- categorize numeric values
WHEN CBQ503 = 9 THEN 'Dont know' -- categorize numeric values
WHEN CBQ503 IS NULL THEN NULL 
ELSE CBQ503 
 END as a_package_with_food_label_available, 

CASE
            WHEN CBQ506 = '1' THEN 'Yes' -- categorize string values 
WHEN CBQ506 = '2' THEN 'No' -- categorize string values 
WHEN CBQ506 = '7' THEN 'Refused' -- categorize string values 
WHEN CBQ506 = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ506 IS NULL THEN NULL 
ELSE CBQ506 
 END as buy_food_from_fast_food_pizza_places, 

CASE
            WHEN CBQ536 = '1' THEN 'Yes' -- categorize string values 
WHEN CBQ536 = '2' THEN 'No' -- categorize string values 
WHEN CBQ536 = '7' THEN 'Refused' -- categorize string values 
WHEN CBQ536 = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ536 IS NULL THEN NULL 
ELSE CBQ536 
 END as notice_calories_at_fast_food_pizza_place, 

CASE
            WHEN CBQ541 = '1' THEN 'Yes' -- categorize string values 
WHEN CBQ541 = '2' THEN 'No' -- categorize string values 
WHEN CBQ541 = '7' THEN 'Refused' -- categorize string values 
WHEN CBQ541 = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ541 IS NULL THEN NULL 
ELSE CBQ541 
 END as use_calorie_info_at_fast_food_pizza, 

CASE
            WHEN CBQ551 = '1' THEN 'Yes' -- categorize string values 
WHEN CBQ551 = '2' THEN 'No' -- categorize string values 
WHEN CBQ551 = '7' THEN 'Refused' -- categorize string values 
WHEN CBQ551 = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ551 IS NULL THEN NULL 
ELSE CBQ551 
 END as eat_from_restaurant_w_waiter, 

CASE
            WHEN CBQ581 = '1' THEN 'Yes' -- categorize string values 
WHEN CBQ581 = '2' THEN 'No' -- categorize string values 
WHEN CBQ581 = '7' THEN 'Refused' -- categorize string values 
WHEN CBQ581 = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ581 IS NULL THEN NULL 
ELSE CBQ581 
 END as notice_calories_at_restaurant_w_waiter, 

CASE
            WHEN CBQ586 = '1' THEN 'Yes' -- categorize string values 
WHEN CBQ586 = '2' THEN 'No' -- categorize string values 
WHEN CBQ586 = '7' THEN 'Refused' -- categorize string values 
WHEN CBQ586 = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ586 IS NULL THEN NULL 
ELSE CBQ586 
 END as use_calorie_info_at_restaurant_w_waiter, 

CASE
            WHEN CBQ830 = '1' THEN 'Yes' -- categorize string values 
WHEN CBQ830 = '2' THEN 'No' -- categorize string values 
WHEN CBQ830 = '7' THEN 'Refused' -- categorize string values 
WHEN CBQ830 = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ830 IS NULL THEN NULL 
ELSE CBQ830 
 END as eat_at_all_you_can_eat_buffet, 

CASE
            WHEN CBQ835 = '1' THEN 'Yes' -- categorize string values 
WHEN CBQ835 = '2' THEN 'No' -- categorize string values 
WHEN CBQ835 = '7' THEN 'Refused' -- categorize string values 
WHEN CBQ835 = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ835 IS NULL THEN NULL 
ELSE CBQ835 
 END as notice_calorie_info_at_buffet, 

CASE
            WHEN CBQ840 = '1' THEN 'Yes' -- categorize string values 
WHEN CBQ840 = '2' THEN 'No' -- categorize string values 
WHEN CBQ840 = '7' THEN 'Refused' -- categorize string values 
WHEN CBQ840 = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ840 IS NULL THEN NULL 
ELSE CBQ840 
 END as use_calorie_information_at_buffet, 

CASE
            WHEN CBQ845 = '1' THEN 'Yes' -- categorize string values 
WHEN CBQ845 = '2' THEN 'No' -- categorize string values 
WHEN CBQ845 = '7' THEN 'Refused' -- categorize string values 
WHEN CBQ845 = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ845 IS NULL THEN NULL 
ELSE CBQ845 
 END as buy_from_coffee_shop_juice_bar, 

CASE
            WHEN CBQ850 = '1' THEN 'Yes' -- categorize string values 
WHEN CBQ850 = '2' THEN 'No' -- categorize string values 
WHEN CBQ850 = '7' THEN 'Refused' -- categorize string values 
WHEN CBQ850 = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ850 IS NULL THEN NULL 
ELSE CBQ850 
 END as notice_calorie_info_at_coffee_shop, 

CASE
            WHEN CBQ855 = '1' THEN 'Yes' -- categorize string values 
WHEN CBQ855 = '2' THEN 'No' -- categorize string values 
WHEN CBQ855 = '7' THEN 'Refused' -- categorize string values 
WHEN CBQ855 = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ855 IS NULL THEN NULL 
ELSE CBQ855 
 END as use_calorie_info_at_coffee_shop, 

CASE
            WHEN CBQ860 = '1' THEN 'Yes' -- categorize string values 
WHEN CBQ860 = '2' THEN 'No' -- categorize string values 
WHEN CBQ860 = '7' THEN 'Refused' -- categorize string values 
WHEN CBQ860 = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ860 IS NULL THEN NULL 
ELSE CBQ860 
 END as buy_at_recreational_places, 

CASE
            WHEN CBQ865 = '1' THEN 'Yes' -- categorize string values 
WHEN CBQ865 = '2' THEN 'No' -- categorize string values 
WHEN CBQ865 = '7' THEN 'Refused' -- categorize string values 
WHEN CBQ865 = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ865 IS NULL THEN NULL 
ELSE CBQ865 
 END as notice_calories_at_recreational_places, 

CASE
            WHEN CBQ870 = '1' THEN 'Yes' -- categorize string values 
WHEN CBQ870 = '2' THEN 'No' -- categorize string values 
WHEN CBQ870 = '7' THEN 'Refused' -- categorize string values 
WHEN CBQ870 = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ870 IS NULL THEN NULL 
ELSE CBQ870 
 END as use_calorie_info_at_recreational_places, 

CASE
            WHEN CBQ875 = '1' THEN 'Yes' -- categorize string values 
WHEN CBQ875 = '2' THEN 'No' -- categorize string values 
WHEN CBQ875 = '7' THEN 'Refused' -- categorize string values 
WHEN CBQ875 = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ875 IS NULL THEN NULL 
ELSE CBQ875 
 END as buy_prepared_foods_from_grocery_store, 

CASE
            WHEN CBQ880 = '1' THEN 'Yes' -- categorize string values 
WHEN CBQ880 = '2' THEN 'No' -- categorize string values 
WHEN CBQ880 = '7' THEN 'Refused' -- categorize string values 
WHEN CBQ880 = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ880 IS NULL THEN NULL 
ELSE CBQ880 
 END as notice_calorie_info_at_grocery_store, 

CASE
            WHEN CBQ885 = '1' THEN 'Yes' -- categorize string values 
WHEN CBQ885 = '2' THEN 'No' -- categorize string values 
WHEN CBQ885 = '7' THEN 'Refused' -- categorize string values 
WHEN CBQ885 = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ885 IS NULL THEN NULL 
ELSE CBQ885 
 END as use_calorie_info_at_grocery_store, 

CASE
            WHEN CBQ890 = '1' THEN 'Yes' -- categorize string values 
WHEN CBQ890 = '2' THEN 'No' -- categorize string values 
WHEN CBQ890 = '7' THEN 'Refused' -- categorize string values 
WHEN CBQ890 = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ890 IS NULL THEN NULL 
ELSE CBQ890 
 END as buy_prepared_food_at_convenience_store, 

CASE
            WHEN CBQ895 = '1' THEN 'Yes' -- categorize string values 
WHEN CBQ895 = '2' THEN 'No' -- categorize string values 
WHEN CBQ895 = '7' THEN 'Refused' -- categorize string values 
WHEN CBQ895 = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ895 IS NULL THEN NULL 
ELSE CBQ895 
 END as notice_calorie_info_at_convenience_store, 

CASE
            WHEN CBQ900 = '1' THEN 'Yes' -- categorize string values 
WHEN CBQ900 = '2' THEN 'No' -- categorize string values 
WHEN CBQ900 = '7' THEN 'Refused' -- categorize string values 
WHEN CBQ900 = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ900 IS NULL THEN NULL 
ELSE CBQ900 
 END as use_calorie_info_at_convenience_store, 

CBQ615 as CBQ615, -- could not automatically decode name of variable or transformation logic 

CASE
            WHEN CBQ645 = 1 THEN 'Less than 500 calories' -- categorize numeric values
WHEN CBQ645 = 2 THEN '500-1000 calories' -- categorize numeric values
WHEN CBQ645 = 3 THEN '1001-1500 calories' -- categorize numeric values
WHEN CBQ645 = 4 THEN '1501-2000 calories' -- categorize numeric values
WHEN CBQ645 = 5 THEN '2001-2500 calories' -- categorize numeric values
WHEN CBQ645 = 6 THEN '2501-3000 calories' -- categorize numeric values
WHEN CBQ645 = 7 THEN 'More than 3000 calories' -- categorize numeric values
WHEN CBQ645 = 77 THEN 'Refused' -- categorize numeric values
WHEN CBQ645 = 99 THEN 'Dont know' -- categorize numeric values
WHEN CBQ645 IS NULL THEN NULL 
ELSE CBQ645 
 END as calories_needed_per_day, 

CASE
            WHEN CBQ700 = 1 THEN 'Always' -- categorize numeric values
WHEN CBQ700 = 2 THEN 'Most of the time' -- categorize numeric values
WHEN CBQ700 = 3 THEN 'Sometimes' -- categorize numeric values
WHEN CBQ700 = 4 THEN 'Rarely' -- categorize numeric values
WHEN CBQ700 = 5 THEN 'Never' -- categorize numeric values
WHEN CBQ700 = 6 THEN 'Never seen' -- categorize numeric values
WHEN CBQ700 = 7 THEN 'Refused' -- categorize numeric values
WHEN CBQ700 = 9 THEN 'Dont know' -- categorize numeric values
WHEN CBQ700 IS NULL THEN NULL 
ELSE CBQ700 
 END as use_expiration_date_on_food_packages, 

CASE
            WHEN DBQ780 = 1 THEN 'Always' -- categorize numeric values
WHEN DBQ780 = 2 THEN 'Most of the time' -- categorize numeric values
WHEN DBQ780 = 3 THEN 'Sometimes' -- categorize numeric values
WHEN DBQ780 = 4 THEN 'Rarely' -- categorize numeric values
WHEN DBQ780 = 5 THEN 'Never' -- categorize numeric values
WHEN DBQ780 = 6 THEN 'Never seen' -- categorize numeric values
WHEN DBQ780 = 7 THEN 'Refused' -- categorize numeric values
WHEN DBQ780 = 9 THEN 'Dont know' -- categorize numeric values
WHEN DBQ780 IS NULL THEN NULL 
ELSE DBQ780 
 END as use_health_claims_on_food_packages, 

CASE
            WHEN DBQ750 = 1 THEN 'Always' -- categorize numeric values
WHEN DBQ750 = 2 THEN 'Most of the time' -- categorize numeric values
WHEN DBQ750 = 3 THEN 'Sometimes' -- categorize numeric values
WHEN DBQ750 = 4 THEN 'Rarely' -- categorize numeric values
WHEN DBQ750 = 5 THEN 'Never' -- categorize numeric values
WHEN DBQ750 = 6 THEN 'Never seen' -- categorize numeric values
WHEN DBQ750 = 7 THEN 'Refused' -- categorize numeric values
WHEN DBQ750 = 9 THEN 'Dont know' -- categorize numeric values
WHEN DBQ750 IS NULL THEN NULL 
ELSE DBQ750 
 END as use_nutrition_facts_panel_on_food_label, 

CASE
            WHEN DBQ760 = 1 THEN 'Always' -- categorize numeric values
WHEN DBQ760 = 2 THEN 'Most of the time' -- categorize numeric values
WHEN DBQ760 = 3 THEN 'Sometimes' -- categorize numeric values
WHEN DBQ760 = 4 THEN 'Rarely' -- categorize numeric values
WHEN DBQ760 = 5 THEN 'Never' -- categorize numeric values
WHEN DBQ760 = 6 THEN 'Never seen' -- categorize numeric values
WHEN DBQ760 = 7 THEN 'Refused' -- categorize numeric values
WHEN DBQ760 = 9 THEN 'Dont know' -- categorize numeric values
WHEN DBQ760 IS NULL THEN NULL 
ELSE DBQ760 
 END as use_ingredients_list_on_food_label, 

CASE
            WHEN DBQ770 = 1 THEN 'Always' -- categorize numeric values
WHEN DBQ770 = 2 THEN 'Most of the time' -- categorize numeric values
WHEN DBQ770 = 3 THEN 'Sometimes' -- categorize numeric values
WHEN DBQ770 = 4 THEN 'Rarely' -- categorize numeric values
WHEN DBQ770 = 5 THEN 'Never' -- categorize numeric values
WHEN DBQ770 = 6 THEN 'Never seen' -- categorize numeric values
WHEN DBQ770 = 7 THEN 'Refused' -- categorize numeric values
WHEN DBQ770 = 9 THEN 'Dont know' -- categorize numeric values
WHEN DBQ770 IS NULL THEN NULL 
ELSE DBQ770 
 END as use_serving_size_info_on_food_label, 

CASE
            WHEN CBQ905 = '1' THEN 'Always' -- categorize string values 
WHEN CBQ905 = '2' THEN 'Most of the time' -- categorize string values 
WHEN CBQ905 = '3' THEN 'Sometimes' -- categorize string values 
WHEN CBQ905 = '4' THEN 'Rarely' -- categorize string values 
WHEN CBQ905 = '5' THEN 'Never' -- categorize string values 
WHEN CBQ905 = '6' THEN 'Never seen' -- categorize string values 
WHEN CBQ905 = '7' THEN 'Refused' -- categorize string values 
WHEN CBQ905 = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ905 IS NULL THEN NULL 
ELSE CBQ905 
 END as use_number_of_servings_on_food_label, 

CASE
            WHEN CBQ910 = '1' THEN 'Always' -- categorize string values 
WHEN CBQ910 = '2' THEN 'Most of the time' -- categorize string values 
WHEN CBQ910 = '3' THEN 'Sometimes' -- categorize string values 
WHEN CBQ910 = '4' THEN 'Rarely' -- categorize string values 
WHEN CBQ910 = '5' THEN 'Never' -- categorize string values 
WHEN CBQ910 = '6' THEN 'Never seen' -- categorize string values 
WHEN CBQ910 = '7' THEN 'Refused' -- categorize string values 
WHEN CBQ910 = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ910 IS NULL THEN NULL 
ELSE CBQ910 
 END as use_footnote_on_food_label, 

CASE
            WHEN CBQ685 = 1 THEN 'Always' -- categorize numeric values
WHEN CBQ685 = 2 THEN 'Most of the time' -- categorize numeric values
WHEN CBQ685 = 3 THEN 'Sometimes' -- categorize numeric values
WHEN CBQ685 = 4 THEN 'Rarely' -- categorize numeric values
WHEN CBQ685 = 5 THEN 'Never' -- categorize numeric values
WHEN CBQ685 = 6 THEN 'Never seen' -- categorize numeric values
WHEN CBQ685 = 7 THEN 'Refused' -- categorize numeric values
WHEN CBQ685 = 9 THEN 'Dont know' -- categorize numeric values
WHEN CBQ685 IS NULL THEN NULL 
ELSE CBQ685 
 END as use_percent_daily_value_on_food_label, 

CASE
            WHEN CBQ915 = '1' THEN 'Only percent daily value' -- categorize string values 
WHEN CBQ915 = '2' THEN 'Percent daily value more often' -- categorize string values 
WHEN CBQ915 = '3' THEN 'Both percent daily value and amount of nutrients about the same' -- categorize string values 
WHEN CBQ915 = '4' THEN 'Amount of nutrients more often' -- categorize string values 
WHEN CBQ915 = '5' THEN 'Only amount of nutrients' -- categorize string values 
WHEN CBQ915 = '6' THEN 'Do not use either' -- categorize string values 
WHEN CBQ915 = '7' THEN 'Refused' -- categorize string values 
WHEN CBQ915 = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ915 IS NULL THEN NULL 
ELSE CBQ915 
 END as use_percent_daily_value_or_nutrients, 

CBQ920 as CBQ920, -- could not automatically decode name of variable or transformation logic 

CASE
            WHEN CBQ925 = '1' THEN '5 % of the calories in one serving come from Vit A' -- categorize string values 
WHEN CBQ925 = '2' THEN 'One serving contains 5% Vit A by weight' -- categorize string values 
WHEN CBQ925 = '3' THEN 'One serving supplies 5% of the Vit A you should have in a day' -- categorize string values 
WHEN CBQ925 = '7' THEN 'Refused' -- categorize string values 
WHEN CBQ925 = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ925 IS NULL THEN NULL 
ELSE CBQ925 
 END as what_does_5_daily_value_mean, 

CASE
            WHEN CBQ930 = '1' THEN 'Always' -- categorize string values 
WHEN CBQ930 = '2' THEN 'Most of the time' -- categorize string values 
WHEN CBQ930 = '3' THEN 'Sometimes' -- categorize string values 
WHEN CBQ930 = '4' THEN 'Rarely' -- categorize string values 
WHEN CBQ930 = '5' THEN 'Never' -- categorize string values 
WHEN CBQ930 = '6' THEN 'Never seen' -- categorize string values 
WHEN CBQ930 = '7' THEN 'Refused' -- categorize string values 
WHEN CBQ930 = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ930 IS NULL THEN NULL 
ELSE CBQ930 
 END as use_calorie_information_on_food_label, 

CASE
            WHEN CBQ935 = '1' THEN 'Always' -- categorize string values 
WHEN CBQ935 = '2' THEN 'Most of the time' -- categorize string values 
WHEN CBQ935 = '3' THEN 'Sometimes' -- categorize string values 
WHEN CBQ935 = '4' THEN 'Rarely' -- categorize string values 
WHEN CBQ935 = '5' THEN 'Never' -- categorize string values 
WHEN CBQ935 = '6' THEN 'Never seen' -- categorize string values 
WHEN CBQ935 = '7' THEN 'Refused' -- categorize string values 
WHEN CBQ935 = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ935 IS NULL THEN NULL 
ELSE CBQ935 
 END as use_sugars_info_on_food_label, 

CASE
            WHEN CBQ945 = '1' THEN 'Always' -- categorize string values 
WHEN CBQ945 = '2' THEN 'Most of the time' -- categorize string values 
WHEN CBQ945 = '3' THEN 'Sometimes' -- categorize string values 
WHEN CBQ945 = '4' THEN 'Rarely' -- categorize string values 
WHEN CBQ945 = '5' THEN 'Never' -- categorize string values 
WHEN CBQ945 = '6' THEN 'Never seen' -- categorize string values 
WHEN CBQ945 = '7' THEN 'Refused' -- categorize string values 
WHEN CBQ945 = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ945 IS NULL THEN NULL 
ELSE CBQ945 
 END as use_sodium_info_on_food_label, 

CASE
            WHEN CBQ950 = '1' THEN 'Always' -- categorize string values 
WHEN CBQ950 = '2' THEN 'Most of the time' -- categorize string values 
WHEN CBQ950 = '3' THEN 'Sometimes' -- categorize string values 
WHEN CBQ950 = '4' THEN 'Rarely' -- categorize string values 
WHEN CBQ950 = '5' THEN 'Never' -- categorize string values 
WHEN CBQ950 = '6' THEN 'Never seen' -- categorize string values 
WHEN CBQ950 = '7' THEN 'Refused' -- categorize string values 
WHEN CBQ950 = '9' THEN 'Dont know' -- categorize string values 
WHEN CBQ950 IS NULL THEN NULL 
ELSE CBQ950 
 END as use_second_column_on_food_label, 

CBQ708 as CBQ708, -- could not automatically decode name of variable or transformation logic 

CASE
            WHEN CBQ738A = 1 THEN 'To watch my weight and/or lose weight' -- categorize numeric values
WHEN CBQ738A = 77 THEN 'Refused' -- categorize numeric values
WHEN CBQ738A = 99 THEN 'Dont know' -- categorize numeric values
WHEN CBQ738A IS NULL THEN NULL 
ELSE CBQ738A 
 END as check_label_to_watch_my_weight, 

CASE
            WHEN CBQ738B = 2 THEN 'A family member is trying to watch weight and/or lose weight' -- categorize numeric values
WHEN CBQ738B IS NULL THEN NULL 
ELSE CBQ738B 
 END as check_label_for_family_member_s_weight, 

CASE
            WHEN CBQ738C = 3 THEN 'To watch for diabetes, high triglycerides, high cholesterol, high blood pressure or other health conditions' -- categorize numeric values
WHEN CBQ738C IS NULL THEN NULL 
ELSE CBQ738C 
 END as check_label_for_my_health_conditions, 

CASE
            WHEN CBQ738D = 4 THEN 'A family member has a health condition (for example, diabetes, high triglycerides, high cholesterol, high blood pressure, etc)' -- categorize numeric values
WHEN CBQ738D IS NULL THEN NULL 
ELSE CBQ738D 
 END as check_label_for_other_s_health_condition, 

CASE
            WHEN CBQ738E = 5 THEN 'I am allergic to certain food(s)' -- categorize numeric values
WHEN CBQ738E IS NULL THEN NULL 
ELSE CBQ738E 
 END as check_label_for_my_food_allergies, 

CASE
            WHEN CBQ738F = 6 THEN 'My family member(s) has food allergies' -- categorize numeric values
WHEN CBQ738F IS NULL THEN NULL 
ELSE CBQ738F 
 END as check_label_for_other_s_food_allergies, 

CASE
            WHEN CBQ738G = 7 THEN 'To avoid certain ingredients (such as MSG, high fructose corn syrup, color dyes, artificial preservatives, or hydrogenated oils, etc.)' -- categorize numeric values
WHEN CBQ738G IS NULL THEN NULL 
ELSE CBQ738G 
 END as check_label_to_avoid_certain_ingredients, 

CASE
            WHEN CBQ738H = 8 THEN 'To increase certain nutrients in my/familys diet (such as fiber, calcium, etc)' -- categorize numeric values
WHEN CBQ738H IS NULL THEN NULL 
ELSE CBQ738H 
 END as check_label_to_increase_certain_nutrient, 

CASE
            WHEN CBQ738I = 9 THEN 'To compare which brand/food is better/healthier' -- categorize numeric values
WHEN CBQ738I IS NULL THEN NULL 
ELSE CBQ738I 
 END as check_label_to_compare_b_w_brands_foods, 

CASE
            WHEN CBQ738J = 10 THEN 'To make better/healthier choices for me and my family' -- categorize numeric values
WHEN CBQ738J IS NULL THEN NULL 
ELSE CBQ738J 
 END as check_label_to_make_better_choices, 

CASE
            WHEN CBQ738K = 11 THEN 'To watch for calorie content or certain nutrients (such as sodium, trans fat, sugar, carbohydrates, or protein, etc.)' -- categorize numeric values
WHEN CBQ738K IS NULL THEN NULL 
ELSE CBQ738K 
 END as check_label_to_watch_certain_nutrients, 

CASE
            WHEN CBQ738CD = 91 THEN 'Others' -- categorize numeric values
WHEN CBQ738CD IS NULL THEN NULL 
ELSE CBQ738CD 
 END as check_label_for_other_reasons, 

CBQ751 as CBQ751, -- could not automatically decode name of variable or transformation logic 

CASE
            WHEN CBQ698A = 1 THEN 'I dont have time' -- categorize numeric values
WHEN CBQ698A = 77 THEN 'Refused' -- categorize numeric values
WHEN CBQ698A = 99 THEN 'Dont know' -- categorize numeric values
WHEN CBQ698A IS NULL THEN NULL 
ELSE CBQ698A 
 END as not_check_label_don_t_have_the_time, 

CASE
            WHEN CBQ698B = 2 THEN 'The print is too small for me to read' -- categorize numeric values
WHEN CBQ698B IS NULL THEN NULL 
ELSE CBQ698B 
 END as not_check_label_the_print_is_too_small, 

CASE
            WHEN CBQ698C = 3 THEN 'Im satisfied with my health so there is no need for me to check' -- categorize numeric values
WHEN CBQ698C IS NULL THEN NULL 
ELSE CBQ698C 
 END as not_check_label_satisfied_w_my_health, 

CASE
            WHEN CBQ698D = 4 THEN 'I have a good diet so there is no need to check labels' -- categorize numeric values
WHEN CBQ698D IS NULL THEN NULL 
ELSE CBQ698D 
 END as not_check_label_i_have_a_good_diet, 

CASE
            WHEN CBQ698E = 5 THEN 'I usually buy foods that Im used to, so I dont feel that I need to check labels' -- categorize numeric values
WHEN CBQ698E IS NULL THEN NULL 
ELSE CBQ698E 
 END as not_check_label_mostly_familiar_foods, 

CASE
            WHEN CBQ698F = 6 THEN 'I buy what I or my family like, I dont care about the labels' -- categorize numeric values
WHEN CBQ698F IS NULL THEN NULL 
ELSE CBQ698F 
 END as not_check_label_don_t_care_about_labels, 

CASE
            WHEN CBQ698G = 7 THEN 'I dont think the food labels are important to me' -- categorize numeric values
WHEN CBQ698G IS NULL THEN NULL 
ELSE CBQ698G 
 END as not_check_label_not_important_to_me, 

CASE
            WHEN CBQ698H = 8 THEN 'I wont know what to look for even if I read the labels' -- categorize numeric values
WHEN CBQ698H IS NULL THEN NULL 
ELSE CBQ698H 
 END as not_check_label_what_to_look_for, 

CASE
            WHEN CBQ698I = 9 THEN 'I cant read English that well' -- categorize numeric values
WHEN CBQ698I IS NULL THEN NULL 
ELSE CBQ698I 
 END as not_check_label_can_t_read_english_well, 

CASE
            WHEN CBQ698CD = 91 THEN 'Others' -- categorize numeric values
WHEN CBQ698CD IS NULL THEN NULL 
ELSE CBQ698CD 
 END as not_check_label_for_other_reasons, 

CASE
            WHEN CBQ695A = 1 THEN 'The amount of this food that people should eat' -- categorize numeric values
WHEN CBQ695A = 7 THEN 'Refused' -- categorize numeric values
WHEN CBQ695A = 9 THEN 'Dont know' -- categorize numeric values
WHEN CBQ695A IS NULL THEN NULL 
ELSE CBQ695A 
 END as serving_size_amount_people_should_eat, 

CASE
            WHEN CBQ695B = 2 THEN 'The amount of this food that people usually eat' -- categorize numeric values
WHEN CBQ695B IS NULL THEN NULL 
ELSE CBQ695B 
 END as serving_size_amount_people_usually_eat, 

CASE
            WHEN CBQ695C = 3 THEN 'Something that makes it easier to compare foods' -- categorize numeric values
WHEN CBQ695C IS NULL THEN NULL 
ELSE CBQ695C 
 END as serving_size_help_comparing_among_foods, 

CASE
            WHEN CBQ785 = 1 THEN 'English' -- categorize numeric values
WHEN CBQ785 = 2 THEN 'Spanish' -- categorize numeric values
WHEN CBQ785 = 3 THEN 'English and Spanish' -- categorize numeric values
WHEN CBQ785 IS NULL THEN NULL 
ELSE CBQ785 
 END as language_of_the_interview, 

CASE
            WHEN WTDRD1 IS NULL THEN NULL 
ELSE WTDRD1 
 END as dietary_day_one_sample_weight, 

 FROM {{ ref('stg_consumer_behavior_phone_follow_up_module_adult_questionnaire') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/CBQPFA_J.htm
        