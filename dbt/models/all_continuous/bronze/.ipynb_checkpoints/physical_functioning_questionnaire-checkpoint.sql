SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN PFQ020 = 1 THEN 'Yes' -- categorize numeric values
WHEN PFQ020 = 2 THEN 'No' -- categorize numeric values
WHEN PFQ020 = 7 THEN 'Refused' -- categorize numeric values
WHEN PFQ020 = 9 THEN 'Dont know' -- categorize numeric values
WHEN PFQ020 IS NULL THEN NULL 
ELSE PFQ020 
 END as crawl_walk_run_play_limitations, 

CASE
    WHEN PFQ030 = 1 THEN 'Yes' -- categorize numeric values
WHEN PFQ030 = 2 THEN 'No' -- categorize numeric values
WHEN PFQ030 = 7 THEN 'Refused' -- categorize numeric values
WHEN PFQ030 = 9 THEN 'Dont know' -- categorize numeric values
WHEN PFQ030 IS NULL THEN NULL 
ELSE PFQ030 
 END as long_term_impairment_health_problem, 

PFQ032 as PFQ032, -- could not automatically decode name of variable or transformation logic 

CASE
    WHEN PFQ033 = '1' THEN 'Yes' -- categorize string values 
WHEN PFQ033 = '2' THEN 'No' -- categorize string values 
WHEN PFQ033 = '7' THEN 'Refused' -- categorize string values 
WHEN PFQ033 = '9' THEN 'Dont know' -- categorize string values 
WHEN PFQ033 IS NULL THEN NULL 
ELSE PFQ033 
 END as impairment_requiring_special_equipment, 

PFQ035A as PFQ035A, -- could not automatically decode name of variable or transformation logic 

CASE
    WHEN PFQ041 = '1' THEN 'Yes' -- categorize string values 
WHEN PFQ041 = '2' THEN 'No' -- categorize string values 
WHEN PFQ041 = '7' THEN 'Refused' -- categorize string values 
WHEN PFQ041 = '9' THEN 'Dont know' -- categorize string values 
WHEN PFQ041 IS NULL THEN NULL 
ELSE PFQ041 
 END as receive_special_ed_or_early_intervention, 

CASE
    WHEN PFQ049 = '1' THEN 'Yes' -- categorize string values 
WHEN PFQ049 = '2' THEN 'No' -- categorize string values 
WHEN PFQ049 = '7' THEN 'Refused' -- categorize string values 
WHEN PFQ049 = '9' THEN 'Dont know' -- categorize string values 
WHEN PFQ049 IS NULL THEN NULL 
ELSE PFQ049 
 END as limitations_keeping_you_from_working, 

CASE
    WHEN PFQ051 = '1' THEN 'Yes' -- categorize string values 
WHEN PFQ051 = '2' THEN 'No' -- categorize string values 
WHEN PFQ051 = '7' THEN 'Refused' -- categorize string values 
WHEN PFQ051 = '9' THEN 'Dont know' -- categorize string values 
WHEN PFQ051 IS NULL THEN NULL 
ELSE PFQ051 
 END as limited_in_amount_of_work_you_can_do, 

CASE
    WHEN PFQ054 = '1' THEN 'Yes' -- categorize string values 
WHEN PFQ054 = '2' THEN 'No' -- categorize string values 
WHEN PFQ054 = '7' THEN 'Refused' -- categorize string values 
WHEN PFQ054 = '9' THEN 'Dont know' -- categorize string values 
WHEN PFQ054 IS NULL THEN NULL 
ELSE PFQ054 
 END as need_special_equipment_to_walk, 

CASE
    WHEN PFQ057 = '1' THEN 'Yes' -- categorize string values 
WHEN PFQ057 = '2' THEN 'No' -- categorize string values 
WHEN PFQ057 = '7' THEN 'Refused' -- categorize string values 
WHEN PFQ057 = '9' THEN 'Dont know' -- categorize string values 
WHEN PFQ057 IS NULL THEN NULL 
ELSE PFQ057 
 END as experience_confusion_memory_problems, 

PFQ058 as PFQ058, -- could not automatically decode name of variable or transformation logic 

CASE
    WHEN PFQ059 = 1 THEN 'Yes' -- categorize numeric values
WHEN PFQ059 = 2 THEN 'No' -- categorize numeric values
WHEN PFQ059 = 7 THEN 'Refused' -- categorize numeric values
WHEN PFQ059 = 9 THEN 'Dont know' -- categorize numeric values
WHEN PFQ059 IS NULL THEN NULL 
ELSE PFQ059 
 END as physical_mental_emotional_limitations, 

PFQ059A as PFQ059A, -- could not automatically decode name of variable or transformation logic 

CASE
    WHEN PFQ061A = '1' THEN 'No difficulty' -- categorize string values 
WHEN PFQ061A = '2' THEN 'Some difficulty' -- categorize string values 
WHEN PFQ061A = '3' THEN 'Much difficulty' -- categorize string values 
WHEN PFQ061A = '4' THEN 'Unable to do' -- categorize string values 
WHEN PFQ061A = '5' THEN 'Do not do this activity' -- categorize string values 
WHEN PFQ061A = '7' THEN 'Refused' -- categorize string values 
WHEN PFQ061A = '9' THEN 'Dont know' -- categorize string values 
WHEN PFQ061A IS NULL THEN NULL 
ELSE PFQ061A 
 END as difficulty_managing_money, 

CASE
    WHEN PFQ061B = '1' THEN 'No difficulty' -- categorize string values 
WHEN PFQ061B = '2' THEN 'Some difficulty' -- categorize string values 
WHEN PFQ061B = '3' THEN 'Much difficulty' -- categorize string values 
WHEN PFQ061B = '4' THEN 'Unable to do' -- categorize string values 
WHEN PFQ061B = '5' THEN 'Do not do this activity' -- categorize string values 
WHEN PFQ061B = '7' THEN 'Refused' -- categorize string values 
WHEN PFQ061B = '9' THEN 'Dont know' -- categorize string values 
WHEN PFQ061B IS NULL THEN NULL 
ELSE PFQ061B 
 END as difficulty_walking_for_a_quarter_mile, 

CASE
    WHEN PFQ061C = '1' THEN 'No difficulty' -- categorize string values 
WHEN PFQ061C = '2' THEN 'Some difficulty' -- categorize string values 
WHEN PFQ061C = '3' THEN 'Much difficulty' -- categorize string values 
WHEN PFQ061C = '4' THEN 'Unable to do' -- categorize string values 
WHEN PFQ061C = '5' THEN 'Do not do this activity' -- categorize string values 
WHEN PFQ061C = '7' THEN 'Refused' -- categorize string values 
WHEN PFQ061C = '9' THEN 'Dont know' -- categorize string values 
WHEN PFQ061C IS NULL THEN NULL 
ELSE PFQ061C 
 END as difficulty_walking_up_ten_stairs, 

CASE
    WHEN PFQ061D = '1' THEN 'No difficulty' -- categorize string values 
WHEN PFQ061D = '2' THEN 'Some difficulty' -- categorize string values 
WHEN PFQ061D = '3' THEN 'Much difficulty' -- categorize string values 
WHEN PFQ061D = '4' THEN 'Unable to do' -- categorize string values 
WHEN PFQ061D = '5' THEN 'Do not do this activity' -- categorize string values 
WHEN PFQ061D = '7' THEN 'Refused' -- categorize string values 
WHEN PFQ061D = '9' THEN 'Dont know' -- categorize string values 
WHEN PFQ061D IS NULL THEN NULL 
ELSE PFQ061D 
 END as difficulty_stooping_crouching_kneeling, 

CASE
    WHEN PFQ061E = '1' THEN 'No difficulty' -- categorize string values 
WHEN PFQ061E = '2' THEN 'Some difficulty' -- categorize string values 
WHEN PFQ061E = '3' THEN 'Much difficulty' -- categorize string values 
WHEN PFQ061E = '4' THEN 'Unable to do' -- categorize string values 
WHEN PFQ061E = '5' THEN 'Do not do this activity' -- categorize string values 
WHEN PFQ061E = '7' THEN 'Refused' -- categorize string values 
WHEN PFQ061E = '9' THEN 'Dont know' -- categorize string values 
WHEN PFQ061E IS NULL THEN NULL 
ELSE PFQ061E 
 END as difficulty_lifting_or_carrying, 

CASE
    WHEN PFQ061F = '1' THEN 'No difficulty' -- categorize string values 
WHEN PFQ061F = '2' THEN 'Some difficulty' -- categorize string values 
WHEN PFQ061F = '3' THEN 'Much difficulty' -- categorize string values 
WHEN PFQ061F = '4' THEN 'Unable to do' -- categorize string values 
WHEN PFQ061F = '5' THEN 'Do not do this activity' -- categorize string values 
WHEN PFQ061F = '7' THEN 'Refused' -- categorize string values 
WHEN PFQ061F = '9' THEN 'Dont know' -- categorize string values 
WHEN PFQ061F IS NULL THEN NULL 
ELSE PFQ061F 
 END as difficulty_doing_house_chores, 

CASE
    WHEN PFQ061G = '1' THEN 'No difficulty' -- categorize string values 
WHEN PFQ061G = '2' THEN 'Some difficulty' -- categorize string values 
WHEN PFQ061G = '3' THEN 'Much difficulty' -- categorize string values 
WHEN PFQ061G = '4' THEN 'Unable to do' -- categorize string values 
WHEN PFQ061G = '5' THEN 'Do not do this activity' -- categorize string values 
WHEN PFQ061G = '7' THEN 'Refused' -- categorize string values 
WHEN PFQ061G = '9' THEN 'Dont know' -- categorize string values 
WHEN PFQ061G IS NULL THEN NULL 
ELSE PFQ061G 
 END as difficulty_preparing_meals, 

CASE
    WHEN PFQ061H = '1' THEN 'No difficulty' -- categorize string values 
WHEN PFQ061H = '2' THEN 'Some difficulty' -- categorize string values 
WHEN PFQ061H = '3' THEN 'Much difficulty' -- categorize string values 
WHEN PFQ061H = '4' THEN 'Unable to do' -- categorize string values 
WHEN PFQ061H = '5' THEN 'Do not do this activity' -- categorize string values 
WHEN PFQ061H = '7' THEN 'Refused' -- categorize string values 
WHEN PFQ061H = '9' THEN 'Dont know' -- categorize string values 
WHEN PFQ061H IS NULL THEN NULL 
ELSE PFQ061H 
 END as difficulty_walking_between_rooms, 

CASE
    WHEN PFQ061I = '1' THEN 'No difficulty' -- categorize string values 
WHEN PFQ061I = '2' THEN 'Some difficulty' -- categorize string values 
WHEN PFQ061I = '3' THEN 'Much difficulty' -- categorize string values 
WHEN PFQ061I = '4' THEN 'Unable to do' -- categorize string values 
WHEN PFQ061I = '5' THEN 'Do not do this activity' -- categorize string values 
WHEN PFQ061I = '7' THEN 'Refused' -- categorize string values 
WHEN PFQ061I = '9' THEN 'Dont know' -- categorize string values 
WHEN PFQ061I IS NULL THEN NULL 
ELSE PFQ061I 
 END as difficulty_standingup_from_armless_chair, 

CASE
    WHEN PFQ061J = '1' THEN 'No difficulty' -- categorize string values 
WHEN PFQ061J = '2' THEN 'Some difficulty' -- categorize string values 
WHEN PFQ061J = '3' THEN 'Much difficulty' -- categorize string values 
WHEN PFQ061J = '4' THEN 'Unable to do' -- categorize string values 
WHEN PFQ061J = '5' THEN 'Do not do this activity' -- categorize string values 
WHEN PFQ061J = '7' THEN 'Refused' -- categorize string values 
WHEN PFQ061J = '9' THEN 'Dont know' -- categorize string values 
WHEN PFQ061J IS NULL THEN NULL 
ELSE PFQ061J 
 END as difficulty_getting_in_and_out_of_bed, 

CASE
    WHEN PFQ061K = '1' THEN 'No difficulty' -- categorize string values 
WHEN PFQ061K = '2' THEN 'Some difficulty' -- categorize string values 
WHEN PFQ061K = '3' THEN 'Much difficulty' -- categorize string values 
WHEN PFQ061K = '4' THEN 'Unable to do' -- categorize string values 
WHEN PFQ061K = '5' THEN 'Do not do this activity' -- categorize string values 
WHEN PFQ061K = '7' THEN 'Refused' -- categorize string values 
WHEN PFQ061K = '9' THEN 'Dont know' -- categorize string values 
WHEN PFQ061K IS NULL THEN NULL 
ELSE PFQ061K 
 END as difficulty_using_fork_knife_cup, 

CASE
    WHEN PFQ061L = '1' THEN 'No difficulty' -- categorize string values 
WHEN PFQ061L = '2' THEN 'Some difficulty' -- categorize string values 
WHEN PFQ061L = '3' THEN 'Much difficulty' -- categorize string values 
WHEN PFQ061L = '4' THEN 'Unable to do' -- categorize string values 
WHEN PFQ061L = '5' THEN 'Do not do this activity' -- categorize string values 
WHEN PFQ061L = '7' THEN 'Refused' -- categorize string values 
WHEN PFQ061L = '9' THEN 'Dont know' -- categorize string values 
WHEN PFQ061L IS NULL THEN NULL 
ELSE PFQ061L 
 END as difficulty_dressing_yourself, 

CASE
    WHEN PFQ061M = '1' THEN 'No difficulty' -- categorize string values 
WHEN PFQ061M = '2' THEN 'Some difficulty' -- categorize string values 
WHEN PFQ061M = '3' THEN 'Much difficulty' -- categorize string values 
WHEN PFQ061M = '4' THEN 'Unable to do' -- categorize string values 
WHEN PFQ061M = '5' THEN 'Do not do this activity' -- categorize string values 
WHEN PFQ061M = '7' THEN 'Refused' -- categorize string values 
WHEN PFQ061M = '9' THEN 'Dont know' -- categorize string values 
WHEN PFQ061M IS NULL THEN NULL 
ELSE PFQ061M 
 END as difficulty_standing_for_long_periods, 

CASE
    WHEN PFQ061N = '1' THEN 'No difficulty' -- categorize string values 
WHEN PFQ061N = '2' THEN 'Some difficulty' -- categorize string values 
WHEN PFQ061N = '3' THEN 'Much difficulty' -- categorize string values 
WHEN PFQ061N = '4' THEN 'Unable to do' -- categorize string values 
WHEN PFQ061N = '5' THEN 'Do not do this activity' -- categorize string values 
WHEN PFQ061N = '7' THEN 'Refused' -- categorize string values 
WHEN PFQ061N = '9' THEN 'Dont know' -- categorize string values 
WHEN PFQ061N IS NULL THEN NULL 
ELSE PFQ061N 
 END as difficulty_sitting_for_long_periods, 

CASE
    WHEN PFQ061O = '1' THEN 'No difficulty' -- categorize string values 
WHEN PFQ061O = '2' THEN 'Some difficulty' -- categorize string values 
WHEN PFQ061O = '3' THEN 'Much difficulty' -- categorize string values 
WHEN PFQ061O = '4' THEN 'Unable to do' -- categorize string values 
WHEN PFQ061O = '5' THEN 'Do not do this activity' -- categorize string values 
WHEN PFQ061O = '7' THEN 'Refused' -- categorize string values 
WHEN PFQ061O = '9' THEN 'Dont know' -- categorize string values 
WHEN PFQ061O IS NULL THEN NULL 
ELSE PFQ061O 
 END as difficulty_reaching_up, 

CASE
    WHEN PFQ061P = '1' THEN 'No difficulty' -- categorize string values 
WHEN PFQ061P = '2' THEN 'Some difficulty' -- categorize string values 
WHEN PFQ061P = '3' THEN 'Much difficulty' -- categorize string values 
WHEN PFQ061P = '4' THEN 'Unable to do' -- categorize string values 
WHEN PFQ061P = '5' THEN 'Do not do this activity' -- categorize string values 
WHEN PFQ061P = '7' THEN 'Refused' -- categorize string values 
WHEN PFQ061P = '9' THEN 'Dont know' -- categorize string values 
WHEN PFQ061P IS NULL THEN NULL 
ELSE PFQ061P 
 END as difficulty_grasp_holding_small_objects, 

CASE
    WHEN PFQ061Q = '1' THEN 'No difficulty' -- categorize string values 
WHEN PFQ061Q = '2' THEN 'Some difficulty' -- categorize string values 
WHEN PFQ061Q = '3' THEN 'Much difficulty' -- categorize string values 
WHEN PFQ061Q = '4' THEN 'Unable to do' -- categorize string values 
WHEN PFQ061Q = '5' THEN 'Do not do this activity' -- categorize string values 
WHEN PFQ061Q = '7' THEN 'Refused' -- categorize string values 
WHEN PFQ061Q = '9' THEN 'Dont know' -- categorize string values 
WHEN PFQ061Q IS NULL THEN NULL 
ELSE PFQ061Q 
 END as difficulty_going_out_to_movies_events, 

CASE
    WHEN PFQ061R = '1' THEN 'No difficulty' -- categorize string values 
WHEN PFQ061R = '2' THEN 'Some difficulty' -- categorize string values 
WHEN PFQ061R = '3' THEN 'Much difficulty' -- categorize string values 
WHEN PFQ061R = '4' THEN 'Unable to do' -- categorize string values 
WHEN PFQ061R = '5' THEN 'Do not do this activity' -- categorize string values 
WHEN PFQ061R = '7' THEN 'Refused' -- categorize string values 
WHEN PFQ061R = '9' THEN 'Dont know' -- categorize string values 
WHEN PFQ061R IS NULL THEN NULL 
ELSE PFQ061R 
 END as difficulty_attending_social_event, 

CASE
    WHEN PFQ061S = '1' THEN 'No difficulty' -- categorize string values 
WHEN PFQ061S = '2' THEN 'Some difficulty' -- categorize string values 
WHEN PFQ061S = '3' THEN 'Much difficulty' -- categorize string values 
WHEN PFQ061S = '4' THEN 'Unable to do' -- categorize string values 
WHEN PFQ061S = '5' THEN 'Do not do this activity' -- categorize string values 
WHEN PFQ061S = '7' THEN 'Refused' -- categorize string values 
WHEN PFQ061S = '9' THEN 'Dont know' -- categorize string values 
WHEN PFQ061S IS NULL THEN NULL 
ELSE PFQ061S 
 END as difficulty_with_home_leisure_activities, 

CASE
    WHEN PFQ061T = '1' THEN 'No difficulty' -- categorize string values 
WHEN PFQ061T = '2' THEN 'Some difficulty' -- categorize string values 
WHEN PFQ061T = '3' THEN 'Much difficulty' -- categorize string values 
WHEN PFQ061T = '4' THEN 'Unable to do' -- categorize string values 
WHEN PFQ061T = '5' THEN 'Do not do this activity' -- categorize string values 
WHEN PFQ061T = '7' THEN 'Refused' -- categorize string values 
WHEN PFQ061T = '9' THEN 'Dont know' -- categorize string values 
WHEN PFQ061T IS NULL THEN NULL 
ELSE PFQ061T 
 END as difficulty_moving_large_objects, 

PFQ066A as PFQ066A, -- could not automatically decode name of variable or transformation logic 

CASE
    WHEN PFQ063A = '10' THEN 'Arthritis/rheumatism' -- categorize string values 
WHEN PFQ063A = '11' THEN 'Back or neck problem' -- categorize string values 
WHEN PFQ063A = '12' THEN 'Birth defect' -- categorize string values 
WHEN PFQ063A = '13' THEN 'Cancer' -- categorize string values 
WHEN PFQ063A = '14' THEN 'Depression/anxiety/emotional problem' -- categorize string values 
WHEN PFQ063A = '15' THEN 'Other developmental problem (such as cerebral palsy)' -- categorize string values 
WHEN PFQ063A = '16' THEN 'Diabetes' -- categorize string values 
WHEN PFQ063A = '17' THEN 'Fractures, bone/joint injury' -- categorize string values 
WHEN PFQ063A = '18' THEN 'Hearing problem' -- categorize string values 
WHEN PFQ063A = '19' THEN 'Heart problem' -- categorize string values 
WHEN PFQ063A = '20' THEN 'Hypertension/high blood pressure' -- categorize string values 
WHEN PFQ063A = '21' THEN 'Lung/breathing problem' -- categorize string values 
WHEN PFQ063A = '22' THEN 'Mental retardation' -- categorize string values 
WHEN PFQ063A = '23' THEN 'Other injury' -- categorize string values 
WHEN PFQ063A = '24' THEN 'Senility' -- categorize string values 
WHEN PFQ063A = '25' THEN 'Stroke problem' -- categorize string values 
WHEN PFQ063A = '26' THEN 'Vision/problem seeing' -- categorize string values 
WHEN PFQ063A = '27' THEN 'Weight problem' -- categorize string values 
WHEN PFQ063A = '28' THEN 'Other impairment/problem' -- categorize string values 
WHEN PFQ063A = '77' THEN 'Refused' -- categorize string values 
WHEN PFQ063A = '99' THEN 'Dont know' -- categorize string values 
WHEN PFQ063A IS NULL THEN NULL 
ELSE PFQ063A 
 END as health_problem_causing_difficulty, 

CASE
    WHEN PFQ063B = '10' THEN 'Arthritis/rheumatism' -- categorize string values 
WHEN PFQ063B = '11' THEN 'Back or neck problem' -- categorize string values 
WHEN PFQ063B = '12' THEN 'Birth defect' -- categorize string values 
WHEN PFQ063B = '13' THEN 'Cancer' -- categorize string values 
WHEN PFQ063B = '14' THEN 'Depression/anxiety/emotional problem' -- categorize string values 
WHEN PFQ063B = '15' THEN 'Other developmental problem (such as cerebral palsy)' -- categorize string values 
WHEN PFQ063B = '16' THEN 'Diabetes' -- categorize string values 
WHEN PFQ063B = '17' THEN 'Fractures, bone/joint injury' -- categorize string values 
WHEN PFQ063B = '18' THEN 'Hearing problem' -- categorize string values 
WHEN PFQ063B = '19' THEN 'Heart problem' -- categorize string values 
WHEN PFQ063B = '20' THEN 'Hypertension/high blood pressure' -- categorize string values 
WHEN PFQ063B = '21' THEN 'Lung/breathing problem' -- categorize string values 
WHEN PFQ063B = '22' THEN 'Mental retardation' -- categorize string values 
WHEN PFQ063B = '23' THEN 'Other injury' -- categorize string values 
WHEN PFQ063B = '24' THEN 'Senility' -- categorize string values 
WHEN PFQ063B = '25' THEN 'Stroke problem' -- categorize string values 
WHEN PFQ063B = '26' THEN 'Vision/problem seeing' -- categorize string values 
WHEN PFQ063B = '27' THEN 'Weight problem' -- categorize string values 
WHEN PFQ063B = '28' THEN 'Other impairment/problem' -- categorize string values 
WHEN PFQ063B = '77' THEN 'Refused' -- categorize string values 
WHEN PFQ063B = '99' THEN 'Dont know' -- categorize string values 
WHEN PFQ063B IS NULL THEN NULL 
ELSE PFQ063B 
 END as health_problem_causing_difficulty_PFQ063B, 

CASE
    WHEN PFQ063C = '10' THEN 'Arthritis/rheumatism' -- categorize string values 
WHEN PFQ063C = '11' THEN 'Back or neck problem' -- categorize string values 
WHEN PFQ063C = '12' THEN 'Birth defect' -- categorize string values 
WHEN PFQ063C = '13' THEN 'Cancer' -- categorize string values 
WHEN PFQ063C = '14' THEN 'Depression/anxiety/emotional problem' -- categorize string values 
WHEN PFQ063C = '15' THEN 'Other developmental problem (such as cerebral palsy)' -- categorize string values 
WHEN PFQ063C = '16' THEN 'Diabetes' -- categorize string values 
WHEN PFQ063C = '17' THEN 'Fractures, bone/joint injury' -- categorize string values 
WHEN PFQ063C = '18' THEN 'Hearing problem' -- categorize string values 
WHEN PFQ063C = '19' THEN 'Heart problem' -- categorize string values 
WHEN PFQ063C = '20' THEN 'Hypertension/high blood pressure' -- categorize string values 
WHEN PFQ063C = '21' THEN 'Lung/breathing problem' -- categorize string values 
WHEN PFQ063C = '22' THEN 'Mental retardation' -- categorize string values 
WHEN PFQ063C = '23' THEN 'Other injury' -- categorize string values 
WHEN PFQ063C = '24' THEN 'Senility' -- categorize string values 
WHEN PFQ063C = '25' THEN 'Stroke problem' -- categorize string values 
WHEN PFQ063C = '26' THEN 'Vision/problem seeing' -- categorize string values 
WHEN PFQ063C = '27' THEN 'Weight problem' -- categorize string values 
WHEN PFQ063C = '28' THEN 'Other impairment/problem' -- categorize string values 
WHEN PFQ063C = '77' THEN 'Refused' -- categorize string values 
WHEN PFQ063C = '99' THEN 'Dont know' -- categorize string values 
WHEN PFQ063C IS NULL THEN NULL 
ELSE PFQ063C 
 END as health_problem_causing_difficulty_PFQ063C, 

CASE
    WHEN PFQ063D = '10' THEN 'Arthritis/rheumatism' -- categorize string values 
WHEN PFQ063D = '11' THEN 'Back or neck problem' -- categorize string values 
WHEN PFQ063D = '12' THEN 'Birth defect' -- categorize string values 
WHEN PFQ063D = '13' THEN 'Cancer' -- categorize string values 
WHEN PFQ063D = '14' THEN 'Depression/anxiety/emotional problem' -- categorize string values 
WHEN PFQ063D = '15' THEN 'Other developmental problem (such as cerebral palsy)' -- categorize string values 
WHEN PFQ063D = '16' THEN 'Diabetes' -- categorize string values 
WHEN PFQ063D = '17' THEN 'Fractures, bone/joint injury' -- categorize string values 
WHEN PFQ063D = '18' THEN 'Hearing problem' -- categorize string values 
WHEN PFQ063D = '19' THEN 'Heart problem' -- categorize string values 
WHEN PFQ063D = '20' THEN 'Hypertension/high blood pressure' -- categorize string values 
WHEN PFQ063D = '21' THEN 'Lung/breathing problem' -- categorize string values 
WHEN PFQ063D = '22' THEN 'Mental retardation' -- categorize string values 
WHEN PFQ063D = '23' THEN 'Other injury' -- categorize string values 
WHEN PFQ063D = '24' THEN 'Senility' -- categorize string values 
WHEN PFQ063D = '25' THEN 'Stroke problem' -- categorize string values 
WHEN PFQ063D = '26' THEN 'Vision/problem seeing' -- categorize string values 
WHEN PFQ063D = '27' THEN 'Weight problem' -- categorize string values 
WHEN PFQ063D = '28' THEN 'Other impairment/problem' -- categorize string values 
WHEN PFQ063D = '77' THEN 'Refused' -- categorize string values 
WHEN PFQ063D = '99' THEN 'Dont know' -- categorize string values 
WHEN PFQ063D IS NULL THEN NULL 
ELSE PFQ063D 
 END as health_problem_causing_difficulty_PFQ063D, 

CASE
    WHEN PFQ063E = '10' THEN 'Arthritis/rheumatism' -- categorize string values 
WHEN PFQ063E = '11' THEN 'Back or neck problem' -- categorize string values 
WHEN PFQ063E = '12' THEN 'Birth defect' -- categorize string values 
WHEN PFQ063E = '13' THEN 'Cancer' -- categorize string values 
WHEN PFQ063E = '14' THEN 'Depression/anxiety/emotional problem' -- categorize string values 
WHEN PFQ063E = '15' THEN 'Other developmental problem (such as cerebral palsy)' -- categorize string values 
WHEN PFQ063E = '16' THEN 'Diabetes' -- categorize string values 
WHEN PFQ063E = '17' THEN 'Fractures, bone/joint injury' -- categorize string values 
WHEN PFQ063E = '18' THEN 'Hearing problem' -- categorize string values 
WHEN PFQ063E = '19' THEN 'Heart problem' -- categorize string values 
WHEN PFQ063E = '20' THEN 'Hypertension/high blood pressure' -- categorize string values 
WHEN PFQ063E = '21' THEN 'Lung/breathing problem' -- categorize string values 
WHEN PFQ063E = '22' THEN 'Mental retardation' -- categorize string values 
WHEN PFQ063E = '23' THEN 'Other injury' -- categorize string values 
WHEN PFQ063E = '24' THEN 'Senility' -- categorize string values 
WHEN PFQ063E = '25' THEN 'Stroke problem' -- categorize string values 
WHEN PFQ063E = '26' THEN 'Vision/problem seeing' -- categorize string values 
WHEN PFQ063E = '27' THEN 'Weight problem' -- categorize string values 
WHEN PFQ063E = '28' THEN 'Other impairment/problem' -- categorize string values 
WHEN PFQ063E = '77' THEN 'Refused' -- categorize string values 
WHEN PFQ063E = '99' THEN 'Dont know' -- categorize string values 
WHEN PFQ063E IS NULL THEN NULL 
ELSE PFQ063E 
 END as health_problem_causing_difficulty_PFQ063E, 

CASE
    WHEN PFQ090 = 1 THEN 'Yes' -- categorize numeric values
WHEN PFQ090 = 2 THEN 'No' -- categorize numeric values
WHEN PFQ090 = 7 THEN 'Refused' -- categorize numeric values
WHEN PFQ090 = 9 THEN 'Dont know' -- categorize numeric values
WHEN PFQ090 IS NULL THEN NULL 
ELSE PFQ090 
 END as require_special_healthcare_equipment, 

 FROM {{ ref('stg_physical_functioning_questionnaire') }}

-- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/PFQ_J.htm
