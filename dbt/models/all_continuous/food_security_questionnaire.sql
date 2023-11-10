SELECT
SEQN as respondent_sequence_number, 

CASE
        WHEN FSD032A = '1' THEN 'Often true' 
WHEN FSD032A = '2' THEN 'Sometimes true' 
WHEN FSD032A = '3' THEN 'Never true' 
WHEN FSD032A = '7' THEN 'Refused' 
WHEN FSD032A = '9' THEN 'Dont know' 
WHEN FSD032A IS NULL THEN NULL 
ELSE NULL 
 END as hh_worried_run_out_of_food, 

CASE
        WHEN FSD032B = '1' THEN 'Often true' 
WHEN FSD032B = '2' THEN 'Sometimes true' 
WHEN FSD032B = '3' THEN 'Never true' 
WHEN FSD032B = '7' THEN 'Refused' 
WHEN FSD032B = '9' THEN 'Dont know' 
WHEN FSD032B IS NULL THEN NULL 
ELSE NULL 
 END as hh_food_didn_t_last, 

CASE
        WHEN FSD032C = '1' THEN 'Often true' 
WHEN FSD032C = '2' THEN 'Sometimes true' 
WHEN FSD032C = '3' THEN 'Never true' 
WHEN FSD032C = '7' THEN 'Refused' 
WHEN FSD032C = '9' THEN 'Dont know' 
WHEN FSD032C IS NULL THEN NULL 
ELSE NULL 
 END as hh_couldn_t_afford_balanced_meals, 

CASE
        WHEN FSD041 = '1' THEN 'Yes' 
WHEN FSD041 = '2' THEN 'No' 
WHEN FSD041 = '7' THEN 'Refused' 
WHEN FSD041 = '9' THEN 'Dont know' 
WHEN FSD041 IS NULL THEN NULL 
ELSE NULL 
 END as hh_adults_cut_size_or_skip_meals, 

CASE
        WHEN FSD052 = '1' THEN 'Almost every month,' 
WHEN FSD052 = '2' THEN 'Some months but not every month, or' 
WHEN FSD052 = '3' THEN 'Only 1 or 2 months?' 
WHEN FSD052 = '7' THEN 'Refused' 
WHEN FSD052 = '9' THEN 'Dont know' 
WHEN FSD052 IS NULL THEN NULL 
ELSE NULL 
 END as hh_how_often_adults_cut_size_skip_meals, 

CASE
        WHEN FSD061 = '1' THEN 'Yes' 
WHEN FSD061 = '2' THEN 'No' 
WHEN FSD061 = '7' THEN 'Refused' 
WHEN FSD061 = '9' THEN 'Dont know' 
WHEN FSD061 IS NULL THEN NULL 
ELSE NULL 
 END as hh_eat_less_than_should, 

CASE
        WHEN FSD071 = '1' THEN 'Yes' 
WHEN FSD071 = '2' THEN 'No' 
WHEN FSD071 = '7' THEN 'Refused' 
WHEN FSD071 = '9' THEN 'Dont know' 
WHEN FSD071 IS NULL THEN NULL 
ELSE NULL 
 END as hh_hungry_but_didn_t_eat, 

CASE
        WHEN FSD081 = '1' THEN 'Yes' 
WHEN FSD081 = '2' THEN 'No' 
WHEN FSD081 = '7' THEN 'Refused' 
WHEN FSD081 = '9' THEN 'Dont know' 
WHEN FSD081 IS NULL THEN NULL 
ELSE NULL 
 END as hh_lost_weight_no_money_for_food, 

CASE
        WHEN FSD092 = '1' THEN 'Yes' 
WHEN FSD092 = '2' THEN 'No' 
WHEN FSD092 = '7' THEN 'Refused' 
WHEN FSD092 = '9' THEN 'Dont know' 
WHEN FSD092 IS NULL THEN NULL 
ELSE NULL 
 END as hh_adults_not_eat_whole_day, 

CASE
        WHEN FSD102 = '1' THEN 'Almost every month,' 
WHEN FSD102 = '2' THEN 'Some months but not every month, or' 
WHEN FSD102 = '3' THEN 'Only 1 or 2 months?' 
WHEN FSD102 = '7' THEN 'Refused' 
WHEN FSD102 = '9' THEN 'Dont know' 
WHEN FSD102 IS NULL THEN NULL 
ELSE NULL 
 END as hh_how_often_adults_not_eat_for_day, 

CASE
        WHEN FSD032D = '1' THEN 'Often true' 
WHEN FSD032D = '2' THEN 'Sometimes true' 
WHEN FSD032D = '3' THEN 'Never true' 
WHEN FSD032D = '7' THEN 'Refused' 
WHEN FSD032D = '9' THEN 'Dont know' 
WHEN FSD032D IS NULL THEN NULL 
ELSE NULL 
 END as hh_relied_on_low_cost_food_for_child, 

CASE
        WHEN FSD032E = '1' THEN 'Often true' 
WHEN FSD032E = '2' THEN 'Sometimes true' 
WHEN FSD032E = '3' THEN 'Never true' 
WHEN FSD032E = '7' THEN 'Refused' 
WHEN FSD032E = '9' THEN 'Dont know' 
WHEN FSD032E IS NULL THEN NULL 
ELSE NULL 
 END as hh_couldn_t_feed_child_balanced_meal, 

CASE
        WHEN FSD032F = '1' THEN 'Often true' 
WHEN FSD032F = '2' THEN 'Sometimes true' 
WHEN FSD032F = '3' THEN 'Never true' 
WHEN FSD032F = '7' THEN 'Refused' 
WHEN FSD032F = '9' THEN 'Dont know' 
WHEN FSD032F IS NULL THEN NULL 
ELSE NULL 
 END as hh_child_not_eating_enough, 

CASE
        WHEN FSD111 = '1' THEN 'Yes' 
WHEN FSD111 = '2' THEN 'No' 
WHEN FSD111 = '7' THEN 'Refused' 
WHEN FSD111 = '9' THEN 'Dont know' 
WHEN FSD111 IS NULL THEN NULL 
ELSE NULL 
 END as hh_cut_size_of_child_meals, 

CASE
        WHEN FSD122 = '1' THEN 'Yes' 
WHEN FSD122 = '2' THEN 'No' 
WHEN FSD122 = '7' THEN 'Refused' 
WHEN FSD122 = '9' THEN 'Dont know' 
WHEN FSD122 IS NULL THEN NULL 
ELSE NULL 
 END as hh_child_skip_meals, 

CASE
        WHEN FSD132 = '1' THEN 'Almost every month,' 
WHEN FSD132 = '2' THEN 'Some months but not every month, or' 
WHEN FSD132 = '3' THEN 'Only 1 or 2 months?' 
WHEN FSD132 = '7' THEN 'Refused' 
WHEN FSD132 = '9' THEN 'Dont know' 
WHEN FSD132 IS NULL THEN NULL 
ELSE NULL 
 END as hh_how_often_child_skip_meals, 

CASE
        WHEN FSD141 = '1' THEN 'Yes' 
WHEN FSD141 = '2' THEN 'No' 
WHEN FSD141 = '7' THEN 'Refused' 
WHEN FSD141 = '9' THEN 'Dont know' 
WHEN FSD141 IS NULL THEN NULL 
ELSE NULL 
 END as hh_child_hungry_in_last_12_months, 

CASE
        WHEN FSD146 = '1' THEN 'Yes' 
WHEN FSD146 = '2' THEN 'No' 
WHEN FSD146 = '7' THEN 'Refused' 
WHEN FSD146 = '9' THEN 'Dont know' 
WHEN FSD146 IS NULL THEN NULL 
ELSE NULL 
 END as hh_child_not_eat_whole_day, 

CASE
        WHEN FSDHH = '1' THEN 'HH full food security: 0' 
WHEN FSDHH = '2' THEN 'HH marginal food security: 1-2' 
WHEN FSDHH = '3' THEN 'HH low food security: 3-5 (HH w/o child) / 3-7 (HH w/ child)' 
WHEN FSDHH = '4' THEN 'HH very low food security: 6-10 (HH w/o child) / 8-18 (HH w/ child)' 
WHEN FSDHH IS NULL THEN NULL 
ELSE NULL 
 END as household_food_security_category, 

CASE
        WHEN FSDAD = '1' THEN 'AD full food security: 0' 
WHEN FSDAD = '2' THEN 'AD marginal food security: 1-2' 
WHEN FSDAD = '3' THEN 'AD low food security: 3-5' 
WHEN FSDAD = '4' THEN 'AD very low food security: 6-10' 
WHEN FSDAD IS NULL THEN NULL 
ELSE NULL 
 END as adult_food_security_category, 

CASE
        WHEN FSDCH = '1' THEN 'CH full or marginal food security: 0' 
WHEN FSDCH = '2' THEN 'CH marginal food security: 1' 
WHEN FSDCH = '3' THEN 'CH low food security: 2-4' 
WHEN FSDCH = '4' THEN 'CH very low food security: 5-8' 
WHEN FSDCH IS NULL THEN NULL 
ELSE NULL 
 END as child_food_security_category, 

CASE
        WHEN FSD151 = '1' THEN 'Yes' 
WHEN FSD151 = '2' THEN 'No' 
WHEN FSD151 = '7' THEN 'Refused' 
WHEN FSD151 = '9' THEN 'Dont know' 
WHEN FSD151 IS NULL THEN NULL 
ELSE NULL 
 END as hh_emergency_food_received, 

CASE
        WHEN FSQ165 = '1' THEN 'Yes' 
WHEN FSQ165 = '2' THEN 'No' 
WHEN FSQ165 = '7' THEN 'Refused' 
WHEN FSQ165 = '9' THEN 'Dont know' 
WHEN FSQ165 IS NULL THEN NULL 
ELSE NULL 
 END as hh_fs_benefit_ever_received, 

CASE
        WHEN FSD165N IS NOT NULL THEN SAFE_CAST(FSD165N AS FLOAT64) 
WHEN FSD165N IS NOT NULL THEN SAFE_CAST(FSD165N AS FLOAT64) 
WHEN FSD165N IS NOT NULL THEN SAFE_CAST(FSD165N AS FLOAT64) 
WHEN FSD165N IS NOT NULL THEN SAFE_CAST(FSD165N AS FLOAT64) 
WHEN FSD165N IS NULL THEN NULL 
ELSE NULL 
 END as hh_fs_benefit_of_people_ever_received, 

CASE
        WHEN FSQ012 = '1' THEN 'Yes' 
WHEN FSQ012 = '2' THEN 'No' 
WHEN FSQ012 = '7' THEN 'Refused' 
WHEN FSQ012 = '9' THEN 'Dont know' 
WHEN FSQ012 IS NULL THEN NULL 
ELSE NULL 
 END as hh_fs_benefit_receive_in_last_12_months, 

CASE
        WHEN FSD012N IS NOT NULL THEN SAFE_CAST(FSD012N AS FLOAT64) 
WHEN FSD012N IS NOT NULL THEN SAFE_CAST(FSD012N AS FLOAT64) 
WHEN FSD012N IS NOT NULL THEN SAFE_CAST(FSD012N AS FLOAT64) 
WHEN FSD012N IS NOT NULL THEN SAFE_CAST(FSD012N AS FLOAT64) 
WHEN FSD012N IS NULL THEN NULL 
ELSE NULL 
 END as hh_fs_benefit_of_people_received_12m, 

CASE
        WHEN FSD230 = '1' THEN 'Yes' 
WHEN FSD230 = '2' THEN 'No' 
WHEN FSD230 = '7' THEN 'Refused' 
WHEN FSD230 = '9' THEN 'Dont know' 
WHEN FSD230 IS NULL THEN NULL 
ELSE NULL 
 END as hh_fs_benefit_currently_receive, 

CASE
        WHEN FSD230N IS NOT NULL THEN SAFE_CAST(FSD230N AS FLOAT64) 
WHEN FSD230N IS NOT NULL THEN SAFE_CAST(FSD230N AS FLOAT64) 
WHEN FSD230N IS NOT NULL THEN SAFE_CAST(FSD230N AS FLOAT64) 
WHEN FSD230N IS NOT NULL THEN SAFE_CAST(FSD230N AS FLOAT64) 
WHEN FSD230N IS NULL THEN NULL 
ELSE NULL 
 END as hh_fs_benefit_people_currently_receive, 

CASE
        WHEN FSD795 IS NOT NULL THEN SAFE_CAST(FSD795 AS FLOAT64) 
WHEN FSD795 IS NOT NULL THEN SAFE_CAST(FSD795 AS FLOAT64) 
WHEN FSD795 IS NOT NULL THEN SAFE_CAST(FSD795 AS FLOAT64) 
WHEN FSD795 IS NULL THEN NULL 
ELSE NULL 
 END as hh_fs_benefit_of_months_received, 

CASE
        WHEN FSD225 IS NOT NULL THEN SAFE_CAST(FSD225 AS FLOAT64) 
WHEN FSD225 IS NOT NULL THEN SAFE_CAST(FSD225 AS FLOAT64) 
WHEN FSD225 IS NOT NULL THEN SAFE_CAST(FSD225 AS FLOAT64) 
WHEN FSD225 IS NOT NULL THEN SAFE_CAST(FSD225 AS FLOAT64) 
WHEN FSD225 IS NULL THEN NULL 
ELSE NULL 
 END as hh_fs_benefit_time_since_last_received, 

CASE
        WHEN FSD235 IS NOT NULL THEN SAFE_CAST(FSD235 AS FLOAT64) 
WHEN FSD235 IS NOT NULL THEN SAFE_CAST(FSD235 AS FLOAT64) 
WHEN FSD235 IS NOT NULL THEN SAFE_CAST(FSD235 AS FLOAT64) 
WHEN FSD235 IS NOT NULL THEN SAFE_CAST(FSD235 AS FLOAT64) 
WHEN FSD235 IS NULL THEN NULL 
ELSE NULL 
 END as hh_fs_benefit_amount_received_last_time, 

CASE
        WHEN FSD855 = '1' THEN 'Yes' 
WHEN FSD855 = '2' THEN 'No' 
WHEN FSD855 = '7' THEN 'Refused' 
WHEN FSD855 = '9' THEN 'Dont know' 
WHEN FSD855 IS NULL THEN NULL 
ELSE NULL 
 END as hh_fs_benefit_anticipate_will_receive, 

CASE
        WHEN FSD860 IS NOT NULL THEN SAFE_CAST(FSD860 AS FLOAT64) 
WHEN FSD860 IS NOT NULL THEN SAFE_CAST(FSD860 AS FLOAT64) 
WHEN FSD860 IS NOT NULL THEN SAFE_CAST(FSD860 AS FLOAT64) 
WHEN FSD860 IS NULL THEN NULL 
ELSE NULL 
 END as hh_fs_benefit_time_will_receive, 

CASE
        WHEN FSQ865 IS NOT NULL THEN SAFE_CAST(FSQ865 AS FLOAT64) 
WHEN FSQ865 IS NOT NULL THEN SAFE_CAST(FSQ865 AS FLOAT64) 
WHEN FSQ865 IS NOT NULL THEN SAFE_CAST(FSQ865 AS FLOAT64) 
WHEN FSQ865 IS NULL THEN NULL 
ELSE NULL 
 END as hh_fs_benefit_amount_will_receive, 

CASE
        WHEN FSQ162 = '1' THEN 'Yes' 
WHEN FSQ162 = '2' THEN 'No' 
WHEN FSQ162 = '7' THEN 'Refused' 
WHEN FSQ162 = '9' THEN 'Dont know' 
WHEN FSQ162 IS NULL THEN NULL 
ELSE NULL 
 END as hh_wic_benefit_receive_in_last_12_month, 

CASE
        WHEN FSQ760 = '1' THEN 'Yes' 
WHEN FSQ760 = '2' THEN 'No' 
WHEN FSQ760 = '7' THEN 'Refused' 
WHEN FSQ760 = '9' THEN 'Dont know' 
WHEN FSQ760 IS NULL THEN NULL 
ELSE NULL 
 END as hh_wic_benefit_received_in_last_30_days, 

CASE
        WHEN FSD760N IS NOT NULL THEN SAFE_CAST(FSD760N AS FLOAT64) 
WHEN FSD760N IS NOT NULL THEN SAFE_CAST(FSD760N AS FLOAT64) 
WHEN FSD760N IS NOT NULL THEN SAFE_CAST(FSD760N AS FLOAT64) 
WHEN FSD760N IS NULL THEN NULL 
ELSE NULL 
 END as hh_wic_benefit_no_people_received, 

CASE
        WHEN FSQ653 = '1' THEN 'Yes' 
WHEN FSQ653 = '2' THEN 'No' 
WHEN FSQ653 = '7' THEN 'Refused' 
WHEN FSQ653 = '9' THEN 'Dont know' 
WHEN FSQ653 IS NULL THEN NULL 
ELSE NULL 
 END as ch_wic_benefit_ever_received, 

CASE
        WHEN FSD660ZC = '1' THEN 'Yes' 
WHEN FSD660ZC = '2' THEN 'No' 
WHEN FSD660ZC = '7' THEN 'Refused' 
WHEN FSD660ZC = '9' THEN 'Dont know' 
WHEN FSD660ZC IS NULL THEN NULL 
ELSE NULL 
 END as ch_wic_benefit_currently_receive, 

CASE
        WHEN FSD675 = '1' THEN 'Yes' 
WHEN FSD675 = '2' THEN 'No' 
WHEN FSD675 = '7' THEN 'Refused' 
WHEN FSD675 = '9' THEN 'Dont know' 
WHEN FSD675 IS NULL THEN NULL 
ELSE NULL 
 END as ch_wic_benefit_received_in_infancy, 

CASE
        WHEN FSD680 = '1' THEN 'Yes' 
WHEN FSD680 = '2' THEN 'No' 
WHEN FSD680 = '7' THEN 'Refused' 
WHEN FSD680 = '9' THEN 'Dont know' 
WHEN FSD680 IS NULL THEN NULL 
ELSE NULL 
 END as ch_wic_benefit_received_b_w_1_4_yrs_old, 

CASE
        WHEN FSD670ZC IS NOT NULL THEN SAFE_CAST(FSD670ZC AS FLOAT64) 
WHEN FSD670ZC IS NOT NULL THEN SAFE_CAST(FSD670ZC AS FLOAT64) 
WHEN FSD670ZC IS NOT NULL THEN SAFE_CAST(FSD670ZC AS FLOAT64) 
WHEN FSD670ZC IS NULL THEN NULL 
ELSE NULL 
 END as ch_wic_benefit_of_months_received, 

CASE
        WHEN FSQ690 = '1' THEN 'Yes' 
WHEN FSQ690 = '2' THEN 'No' 
WHEN FSQ690 = '7' THEN 'Refused' 
WHEN FSQ690 = '9' THEN 'Dont know' 
WHEN FSQ690 IS NULL THEN NULL 
ELSE NULL 
 END as ch_wic_benefit_mom_received_while_preg, 

CASE
        WHEN FSQ695 IS NOT NULL THEN SAFE_CAST(FSQ695 AS FLOAT64) 
WHEN FSQ695 IS NOT NULL THEN SAFE_CAST(FSQ695 AS FLOAT64) 
WHEN FSQ695 IS NOT NULL THEN SAFE_CAST(FSQ695 AS FLOAT64) 
WHEN FSQ695 IS NULL THEN NULL 
ELSE NULL 
 END as ch_wic_benefit_starting_month_of_preg, 

CASE
        WHEN FSD652ZW = '1' THEN 'Yes' 
WHEN FSD652ZW = '2' THEN 'No' 
WHEN FSD652ZW = '7' THEN 'Refused' 
WHEN FSD652ZW = '9' THEN 'Dont know' 
WHEN FSD652ZW IS NULL THEN NULL 
ELSE NULL 
 END as wm_wic_benefit_receive_in_latest_preg, 

CASE
        WHEN FSD672ZW IS NOT NULL THEN SAFE_CAST(FSD672ZW AS FLOAT64) 
WHEN FSD672ZW IS NOT NULL THEN SAFE_CAST(FSD672ZW AS FLOAT64) 
WHEN FSD672ZW IS NOT NULL THEN SAFE_CAST(FSD672ZW AS FLOAT64) 
WHEN FSD672ZW IS NULL THEN NULL 
ELSE NULL 
 END as wm_wic_benefit_starting_month_of_preg, 

CASE
        WHEN FSD652CW = '1' THEN 'Yes' 
WHEN FSD652CW = '2' THEN 'No' 
WHEN FSD652CW = '3' THEN 'Currently pregnant' 
WHEN FSD652CW = '7' THEN 'Refused' 
WHEN FSD652CW = '9' THEN 'Dont know' 
WHEN FSD652CW IS NULL THEN NULL 
ELSE NULL 
 END as wm_wic_benefit_receive_post_partum, 

CASE
        WHEN FSD660ZW = '1' THEN 'Yes' 
WHEN FSD660ZW = '2' THEN 'No' 
WHEN FSD660ZW = '7' THEN 'Refused' 
WHEN FSD660ZW = '9' THEN 'Dont know' 
WHEN FSD660ZW IS NULL THEN NULL 
ELSE NULL 
 END as wm_wic_benefit_currently_receive, 

 FROM {{ ref('stg_food_security_questionnaire') }}