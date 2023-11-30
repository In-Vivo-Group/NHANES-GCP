CREATE OR REPLACE MODEL `nhanes.instrumental_activity_limitation_food_security_logistic_regression`
OPTIONS(model_type='LOGISTIC_REG', 
input_label_cols=['instrumental_activity_limitation'], 
calculate_p_values = true,
CATEGORY_ENCODING_METHOD='DUMMY_ENCODING') AS
WITH initial_data AS
(SELECT 
a.respondent_sequence_number,
a.start_year,
COALESCE(a.household_food_security_category,a.household_food_security_category_HHFDSEC) as household_food_security_category,
-- PHYSICAL LIMITATIONS
CASE
WHEN b.walking_for_a_quarter_mile_difficulty LIKE '%No difficulty%' THEN 0
WHEN b.walking_for_a_quarter_mile_difficulty IS NULL THEN NULL
ELSE 1 
END as walking_for_a_quarter_mile_is_difficult,
CASE
WHEN b.walking_up_ten_steps_difficulty LIKE '%No difficulty%' THEN 0
WHEN b.walking_up_ten_steps_difficulty IS NULL THEN NULL
ELSE 1 
END as walking_up_ten_steps_is_difficult,
CASE
WHEN b.stooping_crouching_kneeling_difficulty LIKE '%No difficulty%' THEN 0
WHEN b.stooping_crouching_kneeling_difficulty IS NULL THEN NULL
ELSE 1 
END as stooping_crouching_kneeling_is_difficult,
CASE
WHEN b.lifting_or_carrying_difficulty LIKE '%No difficulty%' THEN 0
WHEN b.lifting_or_carrying_difficulty IS NULL THEN NULL
ELSE 1 
END as lifting_or_carrying_is_difficult,
CASE
WHEN b.walking_between_rooms_on_same_floor LIKE '%No difficulty%' THEN 0
WHEN b.walking_between_rooms_on_same_floor IS NULL THEN NULL
ELSE 1 
END as walking_between_rooms_on_same_floor_is_difficult,
CASE
WHEN b.standingup_from_armless_chair_difficulty LIKE '%No difficulty%' THEN 0
WHEN b.standingup_from_armless_chair_difficulty IS NULL THEN NULL
ELSE 1 
END as standingup_from_armless_chair_is_difficult,
-- BASIC ACTIVITIES
CASE
WHEN b.getting_in_and_out_of_bed_difficulty LIKE '%No difficulty%' THEN 0
WHEN b.getting_in_and_out_of_bed_difficulty IS NULL THEN NULL
ELSE 1 
END as getting_in_and_out_of_bed_is_difficult,
CASE
WHEN b.using_fork_knife_drinking_from_cup LIKE '%No difficulty%' THEN 0
WHEN b.using_fork_knife_drinking_from_cup IS NULL THEN NULL
ELSE 1 
END as using_fork_knife_drinking_from_cup_is_difficult,
CASE
WHEN b.dressing_yourself_difficulty LIKE '%No difficulty%' THEN 0
WHEN b.dressing_yourself_difficulty IS NULL THEN NULL
ELSE 1 
END as dressing_yourself_is_difficult,
CASE
WHEN b.standing_for_long_periods_difficulty LIKE '%No difficulty%' THEN 0
WHEN b.standing_for_long_periods_difficulty IS NULL THEN NULL
ELSE 1 
END as standing_for_long_periods_is_difficult,
-- INSTRUMENTAL ACTIVITIES
CASE
WHEN b.managing_money_difficulty LIKE '%No difficulty%' THEN 0
WHEN b.managing_money_difficulty IS NULL THEN NULL
ELSE 1 
END as managing_money_is_difficult,
CASE
WHEN b.house_chore_difficulty LIKE '%No difficulty%' THEN 0
WHEN b.house_chore_difficulty IS NULL THEN NULL
ELSE 1 
END as house_chore_is_difficult,
CASE
WHEN b.preparing_meals_difficulty LIKE '%No difficulty%' THEN 0
WHEN b.preparing_meals_difficulty IS NULL THEN NULL
ELSE 1 
END as preparing_meals_is_difficult,
FROM `nhanes-genai.dbt.food_security_questionnaire` as a 
INNER JOIN `nhanes-genai.dbt.physical_functioning_questionnaire` as b ON a.respondent_sequence_number = b.respondent_sequence_number AND a.start_year = b.start_year
WHERE COALESCE(a.household_food_security_category,a.household_food_security_category_HHFDSEC) IS NOT NULL
AND b.preparing_meals_difficulty IS NOT NULL
-- AND a.start_year >= 2005 AND a.start_year <= 2014
)

SELECT
CASE
WHEN household_food_security_category LIKE '%HH full%' THEN 'Secure'
WHEN household_food_security_category LIKE '%HH marginal%' THEN 'Marginally Secure'
WHEN household_food_security_category LIKE '%insecure without hunger%' OR  household_food_security_category LIKE '%low food security%' THEN 'Insecure w/o Hunger'
WHEN household_food_security_category LIKE '%insecure with hunger%' OR  household_food_security_category LIKE '%very low food security%' THEN 'Insecure w/ Hunger'
ELSE household_food_security_category
END as household_food_security_category,
CASE
WHEN IFNULL(preparing_meals_is_difficult,0) + IFNULL(managing_money_is_difficult,0) + 
IFNULL(house_chore_is_difficult,0) > 1 THEN 1
ELSE 0 END as instrumental_activity_limitation,
FROM initial_data;