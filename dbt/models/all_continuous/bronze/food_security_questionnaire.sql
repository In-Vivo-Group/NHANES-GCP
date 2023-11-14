SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD032A,'.0','') AS INT64) AS STRING) = '1' THEN 'Often true' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD032A,'.0','') AS INT64) AS STRING) = '2' THEN 'Sometimes true' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD032A,'.0','') AS INT64) AS STRING) = '3' THEN 'Never true' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD032A,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD032A,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN FSD032A IS NULL THEN NULL 
ELSE SAFE_CAST(FSD032A AS STRING) 
 END as hh_worried_run_out_of_food, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD032B,'.0','') AS INT64) AS STRING) = '1' THEN 'Often true' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD032B,'.0','') AS INT64) AS STRING) = '2' THEN 'Sometimes true' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD032B,'.0','') AS INT64) AS STRING) = '3' THEN 'Never true' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD032B,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD032B,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN FSD032B IS NULL THEN NULL 
ELSE SAFE_CAST(FSD032B AS STRING) 
 END as hh_food_didn_t_last, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD032C,'.0','') AS INT64) AS STRING) = '1' THEN 'Often true' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD032C,'.0','') AS INT64) AS STRING) = '2' THEN 'Sometimes true' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD032C,'.0','') AS INT64) AS STRING) = '3' THEN 'Never true' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD032C,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD032C,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN FSD032C IS NULL THEN NULL 
ELSE SAFE_CAST(FSD032C AS STRING) 
 END as hh_couldn_t_afford_balanced_meals, 

-- FSQBOX1 as FSQBOX1, -- not included in table but included in docs without transformation logic 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD041,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD041,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD041,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD041,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN FSD041 IS NULL THEN NULL 
ELSE SAFE_CAST(FSD041 AS STRING) 
 END as hh_adults_cut_size_or_skip_meals, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD052,'.0','') AS INT64) AS STRING) = '1' THEN 'Almost every month,' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD052,'.0','') AS INT64) AS STRING) = '2' THEN 'Some months but not every month, or' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD052,'.0','') AS INT64) AS STRING) = '3' THEN 'Only 1 or 2 months?' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD052,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD052,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN FSD052 IS NULL THEN NULL 
ELSE SAFE_CAST(FSD052 AS STRING) 
 END as hh_how_often_adults_cut_size_skip_meals, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD061,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD061,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD061,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD061,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN FSD061 IS NULL THEN NULL 
ELSE SAFE_CAST(FSD061 AS STRING) 
 END as hh_eat_less_than_should, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD071,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD071,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD071,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD071,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN FSD071 IS NULL THEN NULL 
ELSE SAFE_CAST(FSD071 AS STRING) 
 END as hh_hungry_but_didn_t_eat, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD081,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD081,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD081,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD081,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN FSD081 IS NULL THEN NULL 
ELSE SAFE_CAST(FSD081 AS STRING) 
 END as hh_lost_weight_no_money_for_food, 

-- FSQBOX2 as FSQBOX2, -- not included in table but included in docs without transformation logic 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD092,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD092,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD092,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD092,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN FSD092 IS NULL THEN NULL 
ELSE SAFE_CAST(FSD092 AS STRING) 
 END as hh_adults_not_eat_whole_day, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD102,'.0','') AS INT64) AS STRING) = '1' THEN 'Almost every month,' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD102,'.0','') AS INT64) AS STRING) = '2' THEN 'Some months but not every month, or' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD102,'.0','') AS INT64) AS STRING) = '3' THEN 'Only 1 or 2 months?' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD102,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD102,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN FSD102 IS NULL THEN NULL 
ELSE SAFE_CAST(FSD102 AS STRING) 
 END as hh_how_often_adults_not_eat_for_day, 

-- FSQBOX3 as FSQBOX3, -- not included in table but included in docs without transformation logic 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD032D,'.0','') AS INT64) AS STRING) = '1' THEN 'Often true' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD032D,'.0','') AS INT64) AS STRING) = '2' THEN 'Sometimes true' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD032D,'.0','') AS INT64) AS STRING) = '3' THEN 'Never true' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD032D,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD032D,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN FSD032D IS NULL THEN NULL 
ELSE SAFE_CAST(FSD032D AS STRING) 
 END as hh_relied_on_low_cost_food_for_child, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD032E,'.0','') AS INT64) AS STRING) = '1' THEN 'Often true' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD032E,'.0','') AS INT64) AS STRING) = '2' THEN 'Sometimes true' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD032E,'.0','') AS INT64) AS STRING) = '3' THEN 'Never true' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD032E,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD032E,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN FSD032E IS NULL THEN NULL 
ELSE SAFE_CAST(FSD032E AS STRING) 
 END as hh_couldn_t_feed_child_balanced_meal, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD032F,'.0','') AS INT64) AS STRING) = '1' THEN 'Often true' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD032F,'.0','') AS INT64) AS STRING) = '2' THEN 'Sometimes true' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD032F,'.0','') AS INT64) AS STRING) = '3' THEN 'Never true' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD032F,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD032F,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN FSD032F IS NULL THEN NULL 
ELSE SAFE_CAST(FSD032F AS STRING) 
 END as hh_child_not_eating_enough, 

-- FSQBOX4 as FSQBOX4, -- not included in table but included in docs without transformation logic 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD111,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD111,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD111,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD111,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN FSD111 IS NULL THEN NULL 
ELSE SAFE_CAST(FSD111 AS STRING) 
 END as hh_cut_size_of_child_meals, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD122,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD122,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD122,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD122,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN FSD122 IS NULL THEN NULL 
ELSE SAFE_CAST(FSD122 AS STRING) 
 END as hh_child_skip_meals, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD132,'.0','') AS INT64) AS STRING) = '1' THEN 'Almost every month,' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD132,'.0','') AS INT64) AS STRING) = '2' THEN 'Some months but not every month, or' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD132,'.0','') AS INT64) AS STRING) = '3' THEN 'Only 1 or 2 months?' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD132,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD132,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN FSD132 IS NULL THEN NULL 
ELSE SAFE_CAST(FSD132 AS STRING) 
 END as hh_how_often_child_skip_meals, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD141,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD141,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD141,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD141,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN FSD141 IS NULL THEN NULL 
ELSE SAFE_CAST(FSD141 AS STRING) 
 END as hh_child_hungry_in_last_12_months, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD146,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD146,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD146,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD146,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN FSD146 IS NULL THEN NULL 
ELSE SAFE_CAST(FSD146 AS STRING) 
 END as hh_child_not_eat_whole_day, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSDHH,'.0','') AS INT64) AS STRING) = '1' THEN 'HH full food security: 0' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSDHH,'.0','') AS INT64) AS STRING) = '2' THEN 'HH marginal food security: 1-2' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSDHH,'.0','') AS INT64) AS STRING) = '3' THEN 'HH low food security: 3-5 (HH w/o child) / 3-7 (HH w/ child)' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSDHH,'.0','') AS INT64) AS STRING) = '4' THEN 'HH very low food security: 6-10 (HH w/o child) / 8-18 (HH w/ child)' -- categorize string values 
WHEN FSDHH IS NULL THEN NULL 
ELSE SAFE_CAST(FSDHH AS STRING) 
 END as household_food_security_category, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSDAD,'.0','') AS INT64) AS STRING) = '1' THEN 'AD full food security: 0' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSDAD,'.0','') AS INT64) AS STRING) = '2' THEN 'AD marginal food security: 1-2' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSDAD,'.0','') AS INT64) AS STRING) = '3' THEN 'AD low food security: 3-5' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSDAD,'.0','') AS INT64) AS STRING) = '4' THEN 'AD very low food security: 6-10' -- categorize string values 
WHEN FSDAD IS NULL THEN NULL 
ELSE SAFE_CAST(FSDAD AS STRING) 
 END as adult_food_security_category, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSDCH,'.0','') AS INT64) AS STRING) = '1' THEN 'CH full or marginal food security: 0' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSDCH,'.0','') AS INT64) AS STRING) = '2' THEN 'CH marginal food security: 1' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSDCH,'.0','') AS INT64) AS STRING) = '3' THEN 'CH low food security: 2-4' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSDCH,'.0','') AS INT64) AS STRING) = '4' THEN 'CH very low food security: 5-8' -- categorize string values 
WHEN FSDCH IS NULL THEN NULL 
ELSE SAFE_CAST(FSDCH AS STRING) 
 END as child_food_security_category, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD151,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD151,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD151,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD151,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN FSD151 IS NULL THEN NULL 
ELSE SAFE_CAST(FSD151 AS STRING) 
 END as hh_emergency_food_received, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSQ165,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSQ165,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSQ165,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSQ165,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN FSQ165 IS NULL THEN NULL 
ELSE SAFE_CAST(FSQ165 AS STRING) 
 END as hh_fs_benefit_ever_received, 

CASE
            WHEN SAFE_CAST(FSD165N AS FLOAT64) > 8.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN FSD165N IS NULL THEN NULL 
ELSE SAFE_CAST(FSD165N AS FLOAT64) 
 END as hh_fs_benefit_of_people_ever_received, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSQ012,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSQ012,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSQ012,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSQ012,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN FSQ012 IS NULL THEN NULL 
ELSE SAFE_CAST(FSQ012 AS STRING) 
 END as hh_fs_benefit_receive_in_last_12_months, 

CASE
            WHEN SAFE_CAST(FSD012N AS FLOAT64) > 8.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN FSD012N IS NULL THEN NULL 
ELSE SAFE_CAST(FSD012N AS FLOAT64) 
 END as hh_fs_benefit_of_people_received_12m, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD230,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD230,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD230,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD230,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN FSD230 IS NULL THEN NULL 
ELSE SAFE_CAST(FSD230 AS STRING) 
 END as hh_fs_benefit_currently_receive, 

CASE
            WHEN SAFE_CAST(FSD230N AS FLOAT64) > 8.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN FSD230N IS NULL THEN NULL 
ELSE SAFE_CAST(FSD230N AS FLOAT64) 
 END as hh_fs_benefit_people_currently_receive, 

CASE
            WHEN SAFE_CAST(FSD795 AS FLOAT64) > 14.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN FSD795 IS NULL THEN NULL 
ELSE SAFE_CAST(FSD795 AS FLOAT64) 
 END as hh_fs_benefit_of_months_received, 

CASE
            WHEN SAFE_CAST(FSD225 AS FLOAT64) > 302.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN FSD225 IS NULL THEN NULL 
ELSE SAFE_CAST(FSD225 AS FLOAT64) 
 END as hh_fs_benefit_time_since_last_received, 

CASE
            WHEN SAFE_CAST(FSD235 AS FLOAT64) > 966.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN FSD235 IS NULL THEN NULL 
ELSE SAFE_CAST(FSD235 AS FLOAT64) 
 END as hh_fs_benefit_amount_received_last_time, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD855,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD855,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD855,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD855,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN FSD855 IS NULL THEN NULL 
ELSE SAFE_CAST(FSD855 AS STRING) 
 END as hh_fs_benefit_anticipate_will_receive, 

CASE
            WHEN SAFE_CAST(FSD860 AS FLOAT64) > 37.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN FSD860 IS NULL THEN NULL 
ELSE SAFE_CAST(FSD860 AS FLOAT64) 
 END as hh_fs_benefit_time_will_receive, 

CASE
            WHEN SAFE_CAST(FSQ865 AS FLOAT64) > 702.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN FSQ865 IS NULL THEN NULL 
ELSE SAFE_CAST(FSQ865 AS FLOAT64) 
 END as hh_fs_benefit_amount_will_receive, 

-- FSQBOX5 as FSQBOX5, -- not included in table but included in docs without transformation logic 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSQ162,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSQ162,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSQ162,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSQ162,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN FSQ162 IS NULL THEN NULL 
ELSE SAFE_CAST(FSQ162 AS STRING) 
 END as hh_wic_benefit_receive_in_last_12_month, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSQ760,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSQ760,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSQ760,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSQ760,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN FSQ760 IS NULL THEN NULL 
ELSE SAFE_CAST(FSQ760 AS STRING) 
 END as hh_wic_benefit_received_in_last_30_days, 

CASE
            WHEN SAFE_CAST(FSD760N AS FLOAT64) > 8.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN FSD760N IS NULL THEN NULL 
ELSE SAFE_CAST(FSD760N AS FLOAT64) 
 END as hh_wic_benefit_no_people_received, 

-- FSQBOX6 as FSQBOX6, -- not included in table but included in docs without transformation logic 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSQ653,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSQ653,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSQ653,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSQ653,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN FSQ653 IS NULL THEN NULL 
ELSE SAFE_CAST(FSQ653 AS STRING) 
 END as ch_wic_benefit_ever_received, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD660ZC,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD660ZC,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD660ZC,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD660ZC,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN FSD660ZC IS NULL THEN NULL 
ELSE SAFE_CAST(FSD660ZC AS STRING) 
 END as ch_wic_benefit_currently_receive, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD675,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD675,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD675,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD675,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN FSD675 IS NULL THEN NULL 
ELSE SAFE_CAST(FSD675 AS STRING) 
 END as ch_wic_benefit_received_in_infancy, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD680,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD680,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD680,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD680,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN FSD680 IS NULL THEN NULL 
ELSE SAFE_CAST(FSD680 AS STRING) 
 END as ch_wic_benefit_received_b_w_1_4_yrs_old, 

CASE
            WHEN SAFE_CAST(FSD670ZC AS FLOAT64) > 62.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN FSD670ZC IS NULL THEN NULL 
ELSE SAFE_CAST(FSD670ZC AS FLOAT64) 
 END as ch_wic_benefit_of_months_received, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSQ690,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSQ690,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSQ690,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSQ690,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN FSQ690 IS NULL THEN NULL 
ELSE SAFE_CAST(FSQ690 AS STRING) 
 END as ch_wic_benefit_mom_received_while_preg, 

CASE
            WHEN SAFE_CAST(FSQ695 AS FLOAT64) > 11.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN FSQ695 IS NULL THEN NULL 
ELSE SAFE_CAST(FSQ695 AS FLOAT64) 
 END as ch_wic_benefit_starting_month_of_preg, 

-- FSQBOX7 as FSQBOX7, -- not included in table but included in docs without transformation logic 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD652ZW,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD652ZW,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD652ZW,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD652ZW,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN FSD652ZW IS NULL THEN NULL 
ELSE SAFE_CAST(FSD652ZW AS STRING) 
 END as wm_wic_benefit_receive_in_latest_preg, 

CASE
            WHEN SAFE_CAST(FSD672ZW AS FLOAT64) > 11.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN FSD672ZW IS NULL THEN NULL 
ELSE SAFE_CAST(FSD672ZW AS FLOAT64) 
 END as wm_wic_benefit_starting_month_of_preg, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD652CW,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD652CW,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD652CW,'.0','') AS INT64) AS STRING) = '3' THEN 'Currently pregnant' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD652CW,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD652CW,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN FSD652CW IS NULL THEN NULL 
ELSE SAFE_CAST(FSD652CW AS STRING) 
 END as wm_wic_benefit_receive_post_partum, 

-- FSQBOX8 as FSQBOX8, -- not included in table but included in docs without transformation logic 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD660ZW,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD660ZW,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD660ZW,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(FSD660ZW,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN FSD660ZW IS NULL THEN NULL 
ELSE SAFE_CAST(FSD660ZW AS STRING) 
 END as wm_wic_benefit_currently_receive, 

 FROM {{ ref('stg_food_security_questionnaire') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/FSQ_J.htm
        