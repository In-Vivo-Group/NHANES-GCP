SELECT
SEQN as respondent_sequence_number,
CASE
    WHEN CBQ502 = 1 THEN 'Yes' 
WHEN CBQ502 = 2 THEN 'No' 
WHEN CBQ502 = 7 THEN 'Refused' 
WHEN CBQ502 = 9 THEN 'Don't know' 
WHEN CBQ502 IS NULL THEN NULL 
ELSE NULL 
 END as hand_card_booklet_available,
CASE
    WHEN CBQ503 = 1 THEN 'Yes' 
WHEN CBQ503 = 2 THEN 'No' 
WHEN CBQ503 = 7 THEN 'Refused' 
WHEN CBQ503 = 9 THEN 'Don't know' 
WHEN CBQ503 IS NULL THEN NULL 
ELSE NULL 
 END as a_package_with_food_label_available,
CASE
    WHEN CBQ506 = 1 THEN 'Yes' 
WHEN CBQ506 = 2 THEN 'No' 
WHEN CBQ506 = 7 THEN 'Refused' 
WHEN CBQ506 = 9 THEN 'Don't know' 
WHEN CBQ506 IS NULL THEN NULL 
ELSE NULL 
 END as buy_food_from_fast_food_pizza_places,
CASE
    WHEN CBQ536 = 1 THEN 'Yes' 
WHEN CBQ536 = 2 THEN 'No' 
WHEN CBQ536 = 7 THEN 'Refused' 
WHEN CBQ536 = 9 THEN 'Don't know' 
WHEN CBQ536 IS NULL THEN NULL 
ELSE NULL 
 END as notice_calories_at_fast_food_pizza_place,
CASE
    WHEN CBQ541 = 1 THEN 'Yes' 
WHEN CBQ541 = 2 THEN 'No' 
WHEN CBQ541 = 7 THEN 'Refused' 
WHEN CBQ541 = 9 THEN 'Don't know' 
WHEN CBQ541 IS NULL THEN NULL 
ELSE NULL 
 END as use_calorie_info_at_fast_food_pizza,
CASE
    WHEN CBQ551 = 1 THEN 'Yes' 
WHEN CBQ551 = 2 THEN 'No' 
WHEN CBQ551 = 7 THEN 'Refused' 
WHEN CBQ551 = 9 THEN 'Don't know' 
WHEN CBQ551 IS NULL THEN NULL 
ELSE NULL 
 END as eat_from_restaurant_w_waiter,
CASE
    WHEN CBQ581 = 1 THEN 'Yes' 
WHEN CBQ581 = 2 THEN 'No' 
WHEN CBQ581 = 7 THEN 'Refused' 
WHEN CBQ581 = 9 THEN 'Don't know' 
WHEN CBQ581 IS NULL THEN NULL 
ELSE NULL 
 END as notice_calories_at_restaurant_w_waiter,
CASE
    WHEN CBQ586 = 1 THEN 'Yes' 
WHEN CBQ586 = 2 THEN 'No' 
WHEN CBQ586 = 7 THEN 'Refused' 
WHEN CBQ586 = 9 THEN 'Don't know' 
WHEN CBQ586 IS NULL THEN NULL 
ELSE NULL 
 END as use_calorie_info_at_restaurant_w_waiter,
CASE
    WHEN CBQ830 = 1 THEN 'Yes' 
WHEN CBQ830 = 2 THEN 'No' 
WHEN CBQ830 = 7 THEN 'Refused' 
WHEN CBQ830 = 9 THEN 'Don't know' 
WHEN CBQ830 IS NULL THEN NULL 
ELSE NULL 
 END as eat_at_all_you_can_eat_buffet,
CASE
    WHEN CBQ835 = 1 THEN 'Yes' 
WHEN CBQ835 = 2 THEN 'No' 
WHEN CBQ835 = 7 THEN 'Refused' 
WHEN CBQ835 = 9 THEN 'Don't know' 
WHEN CBQ835 IS NULL THEN NULL 
ELSE NULL 
 END as notice_calorie_info_at_buffet,
CASE
    WHEN CBQ840 = 1 THEN 'Yes' 
WHEN CBQ840 = 2 THEN 'No' 
WHEN CBQ840 = 7 THEN 'Refused' 
WHEN CBQ840 = 9 THEN 'Don't know' 
WHEN CBQ840 IS NULL THEN NULL 
ELSE NULL 
 END as use_calorie_information_at_buffet,
CASE
    WHEN CBQ845 = 1 THEN 'Yes' 
WHEN CBQ845 = 2 THEN 'No' 
WHEN CBQ845 = 7 THEN 'Refused' 
WHEN CBQ845 = 9 THEN 'Don't know' 
WHEN CBQ845 IS NULL THEN NULL 
ELSE NULL 
 END as buy_from_coffee_shop_juice_bar,
CASE
    WHEN CBQ850 = 1 THEN 'Yes' 
WHEN CBQ850 = 2 THEN 'No' 
WHEN CBQ850 = 7 THEN 'Refused' 
WHEN CBQ850 = 9 THEN 'Don't know' 
WHEN CBQ850 IS NULL THEN NULL 
ELSE NULL 
 END as notice_calorie_info_at_coffee_shop,
CASE
    WHEN CBQ855 = 1 THEN 'Yes' 
WHEN CBQ855 = 2 THEN 'No' 
WHEN CBQ855 = 7 THEN 'Refused' 
WHEN CBQ855 = 9 THEN 'Don't know' 
WHEN CBQ855 IS NULL THEN NULL 
ELSE NULL 
 END as use_calorie_info_at_coffee_shop,
CASE
    WHEN CBQ860 = 1 THEN 'Yes' 
WHEN CBQ860 = 2 THEN 'No' 
WHEN CBQ860 = 7 THEN 'Refused' 
WHEN CBQ860 = 9 THEN 'Don't know' 
WHEN CBQ860 IS NULL THEN NULL 
ELSE NULL 
 END as buy_at_recreational_places,
CASE
    WHEN CBQ865 = 1 THEN 'Yes' 
WHEN CBQ865 = 2 THEN 'No' 
WHEN CBQ865 = 7 THEN 'Refused' 
WHEN CBQ865 = 9 THEN 'Don't know' 
WHEN CBQ865 IS NULL THEN NULL 
ELSE NULL 
 END as notice_calories_at_recreational_places,
CASE
    WHEN CBQ870 = 1 THEN 'Yes' 
WHEN CBQ870 = 2 THEN 'No' 
WHEN CBQ870 = 7 THEN 'Refused' 
WHEN CBQ870 = 9 THEN 'Don't know' 
WHEN CBQ870 IS NULL THEN NULL 
ELSE NULL 
 END as use_calorie_info_at_recreational_places,
CASE
    WHEN CBQ875 = 1 THEN 'Yes' 
WHEN CBQ875 = 2 THEN 'No' 
WHEN CBQ875 = 7 THEN 'Refused' 
WHEN CBQ875 = 9 THEN 'Don't know' 
WHEN CBQ875 IS NULL THEN NULL 
ELSE NULL 
 END as buy_prepared_foods_from_grocery_store,
CASE
    WHEN CBQ880 = 1 THEN 'Yes' 
WHEN CBQ880 = 2 THEN 'No' 
WHEN CBQ880 = 7 THEN 'Refused' 
WHEN CBQ880 = 9 THEN 'Don't know' 
WHEN CBQ880 IS NULL THEN NULL 
ELSE NULL 
 END as notice_calorie_info_at_grocery_store,
CASE
    WHEN CBQ885 = 1 THEN 'Yes' 
WHEN CBQ885 = 2 THEN 'No' 
WHEN CBQ885 = 7 THEN 'Refused' 
WHEN CBQ885 = 9 THEN 'Don't know' 
WHEN CBQ885 IS NULL THEN NULL 
ELSE NULL 
 END as use_calorie_info_at_grocery_store,
CASE
    WHEN CBQ890 = 1 THEN 'Yes' 
WHEN CBQ890 = 2 THEN 'No' 
WHEN CBQ890 = 7 THEN 'Refused' 
WHEN CBQ890 = 9 THEN 'Don't know' 
WHEN CBQ890 IS NULL THEN NULL 
ELSE NULL 
 END as buy_prepared_food_at_convenience_store,
CASE
    WHEN CBQ895 = 1 THEN 'Yes' 
WHEN CBQ895 = 2 THEN 'No' 
WHEN CBQ895 = 7 THEN 'Refused' 
WHEN CBQ895 = 9 THEN 'Don't know' 
WHEN CBQ895 IS NULL THEN NULL 
ELSE NULL 
 END as notice_calorie_info_at_convenience_store,
CASE
    WHEN CBQ900 = 1 THEN 'Yes' 
WHEN CBQ900 = 2 THEN 'No' 
WHEN CBQ900 = 7 THEN 'Refused' 
WHEN CBQ900 = 9 THEN 'Don't know' 
WHEN CBQ900 IS NULL THEN NULL 
ELSE NULL 
 END as use_calorie_info_at_convenience_store,
CASE
    WHEN CBQ700 = 1 THEN 'Always' 
WHEN CBQ700 = 2 THEN 'Most of the time' 
WHEN CBQ700 = 3 THEN 'Sometimes' 
WHEN CBQ700 = 4 THEN 'Rarely' 
WHEN CBQ700 = 5 THEN 'Never' 
WHEN CBQ700 = 6 THEN 'Never seen' 
WHEN CBQ700 = 7 THEN 'Refused' 
WHEN CBQ700 = 9 THEN 'Don't know' 
WHEN CBQ700 IS NULL THEN NULL 
ELSE NULL 
 END as use_expiration_date_on_food_packages,
CASE
    WHEN DBQ780 = 1 THEN 'Always' 
WHEN DBQ780 = 2 THEN 'Most of the time' 
WHEN DBQ780 = 3 THEN 'Sometimes' 
WHEN DBQ780 = 4 THEN 'Rarely' 
WHEN DBQ780 = 5 THEN 'Never' 
WHEN DBQ780 = 6 THEN 'Never seen' 
WHEN DBQ780 = 7 THEN 'Refused' 
WHEN DBQ780 = 9 THEN 'Don't know' 
WHEN DBQ780 IS NULL THEN NULL 
ELSE NULL 
 END as use_health_claims_on_food_packages,
CASE
    WHEN DBQ750 = 1 THEN 'Always' 
WHEN DBQ750 = 2 THEN 'Most of the time' 
WHEN DBQ750 = 3 THEN 'Sometimes' 
WHEN DBQ750 = 4 THEN 'Rarely' 
WHEN DBQ750 = 5 THEN 'Never' 
WHEN DBQ750 = 6 THEN 'Never seen' 
WHEN DBQ750 = 7 THEN 'Refused' 
WHEN DBQ750 = 9 THEN 'Don't know' 
WHEN DBQ750 IS NULL THEN NULL 
ELSE NULL 
 END as use_nutrition_facts_panel_on_food_label,
CASE
    WHEN DBQ760 = 1 THEN 'Always' 
WHEN DBQ760 = 2 THEN 'Most of the time' 
WHEN DBQ760 = 3 THEN 'Sometimes' 
WHEN DBQ760 = 4 THEN 'Rarely' 
WHEN DBQ760 = 5 THEN 'Never' 
WHEN DBQ760 = 6 THEN 'Never seen' 
WHEN DBQ760 = 7 THEN 'Refused' 
WHEN DBQ760 = 9 THEN 'Don't know' 
WHEN DBQ760 IS NULL THEN NULL 
ELSE NULL 
 END as use_ingredients_list_on_food_label,
CASE
    WHEN DBQ770 = 1 THEN 'Always' 
WHEN DBQ770 = 2 THEN 'Most of the time' 
WHEN DBQ770 = 3 THEN 'Sometimes' 
WHEN DBQ770 = 4 THEN 'Rarely' 
WHEN DBQ770 = 5 THEN 'Never' 
WHEN DBQ770 = 6 THEN 'Never seen' 
WHEN DBQ770 = 7 THEN 'Refused' 
WHEN DBQ770 = 9 THEN 'Don't know' 
WHEN DBQ770 IS NULL THEN NULL 
ELSE NULL 
 END as use_serving_size_info_on_food_label,
CASE
    WHEN CBQ905 = 1 THEN 'Always' 
WHEN CBQ905 = 2 THEN 'Most of the time' 
WHEN CBQ905 = 3 THEN 'Sometimes' 
WHEN CBQ905 = 4 THEN 'Rarely' 
WHEN CBQ905 = 5 THEN 'Never' 
WHEN CBQ905 = 6 THEN 'Never seen' 
WHEN CBQ905 = 7 THEN 'Refused' 
WHEN CBQ905 = 9 THEN 'Don't know' 
WHEN CBQ905 IS NULL THEN NULL 
ELSE NULL 
 END as use_number_of_servings_on_food_label,
CASE
    WHEN CBQ910 = 1 THEN 'Always' 
WHEN CBQ910 = 2 THEN 'Most of the time' 
WHEN CBQ910 = 3 THEN 'Sometimes' 
WHEN CBQ910 = 4 THEN 'Rarely' 
WHEN CBQ910 = 5 THEN 'Never' 
WHEN CBQ910 = 6 THEN 'Never seen' 
WHEN CBQ910 = 7 THEN 'Refused' 
WHEN CBQ910 = 9 THEN 'Don't know' 
WHEN CBQ910 IS NULL THEN NULL 
ELSE NULL 
 END as use_footnote_on_food_label,
CASE
    WHEN CBQ685 = 1 THEN 'Always' 
WHEN CBQ685 = 2 THEN 'Most of the time' 
WHEN CBQ685 = 3 THEN 'Sometimes' 
WHEN CBQ685 = 4 THEN 'Rarely' 
WHEN CBQ685 = 5 THEN 'Never' 
WHEN CBQ685 = 6 THEN 'Never seen' 
WHEN CBQ685 = 7 THEN 'Refused' 
WHEN CBQ685 = 9 THEN 'Don't know' 
WHEN CBQ685 IS NULL THEN NULL 
ELSE NULL 
 END as use_percent_daily_value_on_food_label,
CASE
    WHEN CBQ915 = 1 THEN 'Only percent daily value' 
WHEN CBQ915 = 2 THEN 'Percent daily value more often' 
WHEN CBQ915 = 3 THEN 'Both percent daily value and amount of nutrients about the same' 
WHEN CBQ915 = 4 THEN 'Amount of nutrients more often' 
WHEN CBQ915 = 5 THEN 'Only amount of nutrients' 
WHEN CBQ915 = 6 THEN 'Do not use either' 
WHEN CBQ915 = 7 THEN 'Refused' 
WHEN CBQ915 = 9 THEN 'Don't know' 
WHEN CBQ915 IS NULL THEN NULL 
ELSE NULL 
 END as use_percent_daily_value_or_nutrients,
CBQ920 as CBQ920, -- Could not automatically decode
CASE
    WHEN CBQ925 = 1 THEN '5 % of the calories in one serving come from Vit A' 
WHEN CBQ925 = 2 THEN 'One serving contains 5% Vit A by weight' 
WHEN CBQ925 = 3 THEN 'One serving supplies 5% of the Vit A you should have in a day' 
WHEN CBQ925 = 7 THEN 'Refused' 
WHEN CBQ925 = 9 THEN 'Don't know' 
WHEN CBQ925 IS NULL THEN NULL 
ELSE NULL 
 END as what_does_5_daily_value_mean,
CASE
    WHEN CBQ930 = 1 THEN 'Always' 
WHEN CBQ930 = 2 THEN 'Most of the time' 
WHEN CBQ930 = 3 THEN 'Sometimes' 
WHEN CBQ930 = 4 THEN 'Rarely' 
WHEN CBQ930 = 5 THEN 'Never' 
WHEN CBQ930 = 6 THEN 'Never seen' 
WHEN CBQ930 = 7 THEN 'Refused' 
WHEN CBQ930 = 9 THEN 'Don't know' 
WHEN CBQ930 IS NULL THEN NULL 
ELSE NULL 
 END as use_calorie_information_on_food_label,
CASE
    WHEN CBQ935 = 1 THEN 'Always' 
WHEN CBQ935 = 2 THEN 'Most of the time' 
WHEN CBQ935 = 3 THEN 'Sometimes' 
WHEN CBQ935 = 4 THEN 'Rarely' 
WHEN CBQ935 = 5 THEN 'Never' 
WHEN CBQ935 = 6 THEN 'Never seen' 
WHEN CBQ935 = 7 THEN 'Refused' 
WHEN CBQ935 = 9 THEN 'Don't know' 
WHEN CBQ935 IS NULL THEN NULL 
ELSE NULL 
 END as use_sugars_info_on_food_label,
CASE
    WHEN CBQ945 = 1 THEN 'Always' 
WHEN CBQ945 = 2 THEN 'Most of the time' 
WHEN CBQ945 = 3 THEN 'Sometimes' 
WHEN CBQ945 = 4 THEN 'Rarely' 
WHEN CBQ945 = 5 THEN 'Never' 
WHEN CBQ945 = 6 THEN 'Never seen' 
WHEN CBQ945 = 7 THEN 'Refused' 
WHEN CBQ945 = 9 THEN 'Don't know' 
WHEN CBQ945 IS NULL THEN NULL 
ELSE NULL 
 END as use_sodium_info_on_food_label,
CASE
    WHEN CBQ950 = 1 THEN 'Always' 
WHEN CBQ950 = 2 THEN 'Most of the time' 
WHEN CBQ950 = 3 THEN 'Sometimes' 
WHEN CBQ950 = 4 THEN 'Rarely' 
WHEN CBQ950 = 5 THEN 'Never' 
WHEN CBQ950 = 6 THEN 'Never seen' 
WHEN CBQ950 = 7 THEN 'Refused' 
WHEN CBQ950 = 9 THEN 'Don't know' 
WHEN CBQ950 IS NULL THEN NULL 
ELSE NULL 
 END as use_second_column_on_food_label,
CBQ708 as CBQ708, -- Could not automatically decode
CASE
    WHEN CBQ738a = 1 THEN 'To watch my weight and/or lose weight' 
WHEN CBQ738a = 77 THEN 'Refused' 
WHEN CBQ738a = 99 THEN 'Don't know' 
WHEN CBQ738a IS NULL THEN NULL 
ELSE NULL 
 END as check_label_to_watch_my_weight,
CASE
    WHEN CBQ738b = 2 THEN 'A family member is trying to watch weight and/or lose weight' 
WHEN CBQ738b IS NULL THEN NULL 
ELSE NULL 
 END as check_label_for_family_member_s_weight,
CASE
    WHEN CBQ738c = 3 THEN 'To watch for diabetes, high triglycerides, high cholesterol, high blood pressure or other health conditions' 
WHEN CBQ738c IS NULL THEN NULL 
ELSE NULL 
 END as check_label_for_my_health_conditions,
CASE
    WHEN CBQ738d = 4 THEN 'A family member has a health condition (for example, diabetes, high triglycerides, high cholesterol, high blood pressure, etc)' 
WHEN CBQ738d IS NULL THEN NULL 
ELSE NULL 
 END as check_label_for_other_s_health_condition,
CASE
    WHEN CBQ738e = 5 THEN 'I am allergic to certain food(s)' 
WHEN CBQ738e IS NULL THEN NULL 
ELSE NULL 
 END as check_label_for_my_food_allergies,
CASE
    WHEN CBQ738f = 6 THEN 'My family member(s) has food allergies' 
WHEN CBQ738f IS NULL THEN NULL 
ELSE NULL 
 END as check_label_for_other_s_food_allergies,
CASE
    WHEN CBQ738g = 7 THEN 'To avoid certain ingredients (such as MSG, high fructose corn syrup, color dyes, artificial preservatives, or hydrogenated oils, etc.)' 
WHEN CBQ738g IS NULL THEN NULL 
ELSE NULL 
 END as check_label_to_avoid_certain_ingredients,
CASE
    WHEN CBQ738h = 8 THEN 'To increase certain nutrients in my/family's diet (such as fiber, calcium, etc)' 
WHEN CBQ738h IS NULL THEN NULL 
ELSE NULL 
 END as check_label_to_increase_certain_nutrient,
CASE
    WHEN CBQ738i = 9 THEN 'To compare which brand/food is better/healthier' 
WHEN CBQ738i IS NULL THEN NULL 
ELSE NULL 
 END as check_label_to_compare_b_w_brands_foods,
CASE
    WHEN CBQ738j = 10 THEN 'To make better/healthier choices for me and my family' 
WHEN CBQ738j IS NULL THEN NULL 
ELSE NULL 
 END as check_label_to_make_better_choices,
CASE
    WHEN CBQ738k = 11 THEN 'To watch for calorie content or certain nutrients (such as sodium, trans fat, sugar, carbohydrates, or protein, etc.)' 
WHEN CBQ738k IS NULL THEN NULL 
ELSE NULL 
 END as check_label_to_watch_certain_nutrients,
CASE
    WHEN CBQ738cd = 91 THEN 'Others' 
WHEN CBQ738cd IS NULL THEN NULL 
ELSE NULL 
 END as check_label_for_other_reasons,
CBQ751 as CBQ751, -- Could not automatically decode
CASE
    WHEN CBQ698a = 1 THEN 'I don't have time' 
WHEN CBQ698a = 77 THEN 'Refused' 
WHEN CBQ698a = 99 THEN 'Don't know' 
WHEN CBQ698a IS NULL THEN NULL 
ELSE NULL 
 END as not_check_label_don_t_have_the_time,
CASE
    WHEN CBQ698b = 2 THEN 'The print is too small for me to read' 
WHEN CBQ698b IS NULL THEN NULL 
ELSE NULL 
 END as not_check_label_the_print_is_too_small,
CASE
    WHEN CBQ698c = 3 THEN 'I'm satisfied with my health so there is no need for me to check' 
WHEN CBQ698c IS NULL THEN NULL 
ELSE NULL 
 END as not_check_label_satisfied_w_my_health,
CASE
    WHEN CBQ698d = 4 THEN 'I have a good diet so there is no need to check labels' 
WHEN CBQ698d IS NULL THEN NULL 
ELSE NULL 
 END as not_check_label_i_have_a_good_diet,
CASE
    WHEN CBQ698e = 5 THEN 'I usually buy foods that I'm used to, so I don't feel that I need to check labels' 
WHEN CBQ698e IS NULL THEN NULL 
ELSE NULL 
 END as not_check_label_mostly_familiar_foods,
CASE
    WHEN CBQ698f = 6 THEN 'I buy what I or my family like, I don't care about the labels' 
WHEN CBQ698f IS NULL THEN NULL 
ELSE NULL 
 END as not_check_label_don_t_care_about_labels,
CASE
    WHEN CBQ698g = 7 THEN 'I don't think the food labels are important to me' 
WHEN CBQ698g IS NULL THEN NULL 
ELSE NULL 
 END as not_check_label_not_important_to_me,
CASE
    WHEN CBQ698h = 8 THEN 'I won't know what to look for even if I read the labels' 
WHEN CBQ698h IS NULL THEN NULL 
ELSE NULL 
 END as not_check_label_what_to_look_for,
CASE
    WHEN CBQ698i = 9 THEN 'I can't read English that well' 
WHEN CBQ698i IS NULL THEN NULL 
ELSE NULL 
 END as not_check_label_can_t_read_english_well,
CASE
    WHEN CBQ698cd = 91 THEN 'Others' 
WHEN CBQ698cd IS NULL THEN NULL 
ELSE NULL 
 END as not_check_label_for_other_reasons,
CASE
    WHEN CBQ695a = 1 THEN 'The amount of this food that people should eat' 
WHEN CBQ695a = 7 THEN 'Refused' 
WHEN CBQ695a = 9 THEN 'Don't know' 
WHEN CBQ695a IS NULL THEN NULL 
ELSE NULL 
 END as serving_size_amount_people_should_eat,
CASE
    WHEN CBQ695b = 2 THEN 'The amount of this food that people usually eat' 
WHEN CBQ695b IS NULL THEN NULL 
ELSE NULL 
 END as serving_size_amount_people_usually_eat,
CASE
    WHEN CBQ695c = 3 THEN 'Something that makes it easier to compare foods' 
WHEN CBQ695c IS NULL THEN NULL 
ELSE NULL 
 END as serving_size_help_comparing_among_foods,
CASE
    WHEN DBD930 = 1 THEN 'Yes' 
WHEN DBD930 = 2 THEN 'No' 
WHEN DBD930 = 7 THEN 'Refused' 
WHEN DBD930 = 9 THEN 'Don't know' 
WHEN DBD930 IS NULL THEN NULL 
ELSE NULL 
 END as respondent_is_main_meal_planner_preparer,
CASE
    WHEN DBD935 = 1 THEN 'Yes' 
WHEN DBD935 = 2 THEN 'No' 
WHEN DBD935 = 7 THEN 'Refused' 
WHEN DBD935 = 9 THEN 'Don't know' 
WHEN DBD935 IS NULL THEN NULL 
ELSE NULL 
 END as respondent_shares_meal_preparation_duty,
CASE
    WHEN DBD940 = 1 THEN 'Yes' 
WHEN DBD940 = 2 THEN 'No' 
WHEN DBD940 = 7 THEN 'Refused' 
WHEN DBD940 = 9 THEN 'Don't know' 
WHEN DBD940 IS NULL THEN NULL 
ELSE NULL 
 END as respondent_is_main_food_shopper,
CASE
    WHEN DBD945 = 1 THEN 'Yes' 
WHEN DBD945 = 2 THEN 'No' 
WHEN DBD945 = 7 THEN 'Refused' 
WHEN DBD945 = 9 THEN 'Don't know' 
WHEN DBD945 IS NULL THEN NULL 
ELSE NULL 
 END as respondent_shares_food_shopping_duty,
WHEN CBD760 IS NOT NULL THEN SAFE_CAST(CBD760 AS FLOAT64)WHEN CBD760 IS NULL THEN NULL 
ELSE NULL 
 END as respondent_s_age,
CASE
    WHEN CBD765 = 1 THEN 'Less than high school' 
WHEN CBD765 = 2 THEN 'High school diploma (including GED)' 
WHEN CBD765 = 3 THEN 'More than high school' 
WHEN CBD765 = 7 THEN 'Refused' 
WHEN CBD765 = 9 THEN 'Don't know' 
WHEN CBD765 IS NULL THEN NULL 
ELSE NULL 
 END as respondent_s_education_level,
CASE
    WHEN CBD770 = 1 THEN 'Male' 
WHEN CBD770 = 2 THEN 'Female' 
WHEN CBD770 IS NULL THEN NULL 
ELSE NULL 
 END as respondent_s_gender,
CASE
    WHEN CBQ785 = 1 THEN 'English' 
WHEN CBQ785 = 2 THEN 'Spanish' 
WHEN CBQ785 = 3 THEN 'English and Spanish' 
WHEN CBQ785 = 4 THEN 'Other' 
WHEN CBQ785 IS NULL THEN NULL 
ELSE NULL 
 END as language_of_the_interview,
WHEN WTDRD1 IS NOT NULL THEN SAFE_CAST(WTDRD1 AS FLOAT64)WHEN WTDRD1 IS NULL THEN NULL 
ELSE NULL 
 END as dietary_day_one_sample_weight,
 FROM {ref('stg_consumer_behavior_phone_follow_up_module_child_questionnaire'})