SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN RHQ010 IS NULL THEN NULL 
ELSE RHQ010 
 END as age_when_first_menstrual_period_occurred, 

CASE
    WHEN SAFE_CAST(RHD018 AS FLOAT64) > 191.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN RHD018 IS NULL THEN NULL 
ELSE RHD018 
 END as estimated_age_in_months_at_menarche, 

CASE
    WHEN RHQ020 = 1 THEN 'Younger than 10' -- categorize numeric values
WHEN RHQ020 = 2 THEN '10 to 12' -- categorize numeric values
WHEN RHQ020 = 3 THEN '13 to 15' -- categorize numeric values
WHEN RHQ020 = 4 THEN '16 or older' -- categorize numeric values
WHEN RHQ020 = 7 THEN 'Refused' -- categorize numeric values
WHEN RHQ020 = 9 THEN 'Dont know' -- categorize numeric values
WHEN RHQ020 IS NULL THEN NULL 
ELSE RHQ020 
 END as age_range_at_first_menstrual_period, 

CASE
    WHEN RHQ031 = 1 THEN 'Yes' -- categorize numeric values
WHEN RHQ031 = 2 THEN 'No' -- categorize numeric values
WHEN RHQ031 = 7 THEN 'Refused' -- categorize numeric values
WHEN RHQ031 = 9 THEN 'Dont know' -- categorize numeric values
WHEN RHQ031 IS NULL THEN NULL 
ELSE RHQ031 
 END as had_regular_periods_in_past_12_months, 

CASE
    WHEN RHD043 = '1' THEN 'Pregnancy' -- categorize string values 
WHEN RHD043 = '2' THEN 'Breast feeding' -- categorize string values 
WHEN RHD043 = '3' THEN 'Hysterectomy' -- categorize string values 
WHEN RHD043 = '7' THEN 'Menopause/Change of life' -- categorize string values 
WHEN RHD043 = '9' THEN 'Other' -- categorize string values 
WHEN RHD043 = '77' THEN 'Refused' -- categorize string values 
WHEN RHD043 = '99' THEN 'Dont know' -- categorize string values 
WHEN RHD043 IS NULL THEN NULL 
ELSE RHD043 
 END as reason_not_having_regular_periods, 

CASE
    WHEN RHQ060 IS NULL THEN NULL 
ELSE RHQ060 
 END as age_at_last_menstrual_period, 

CASE
    WHEN RHQ070 = 1 THEN 'Younger than 30' -- categorize numeric values
WHEN RHQ070 = 2 THEN '30 to 34' -- categorize numeric values
WHEN RHQ070 = 3 THEN '35 to 39' -- categorize numeric values
WHEN RHQ070 = 4 THEN '40 to 44' -- categorize numeric values
WHEN RHQ070 = 5 THEN '45 to 49' -- categorize numeric values
WHEN RHQ070 = 6 THEN '50 to 54' -- categorize numeric values
WHEN RHQ070 = 7 THEN '55 or older' -- categorize numeric values
WHEN RHQ070 = 77 THEN 'Refused' -- categorize numeric values
WHEN RHQ070 = 99 THEN 'Dont know' -- categorize numeric values
WHEN RHQ070 IS NULL THEN NULL 
ELSE RHQ070 
 END as age_range_at_last_menstrual_period, 

CASE
    WHEN RHQ074 = '1' THEN 'Yes' -- categorize string values 
WHEN RHQ074 = '2' THEN 'No' -- categorize string values 
WHEN RHQ074 = '7' THEN 'Refused' -- categorize string values 
WHEN RHQ074 = '9' THEN 'Dont know' -- categorize string values 
WHEN RHQ074 IS NULL THEN NULL 
ELSE RHQ074 
 END as tried_for_a_year_to_become_pregnant, 

CASE
    WHEN RHQ076 = '1' THEN 'Yes' -- categorize string values 
WHEN RHQ076 = '2' THEN 'No' -- categorize string values 
WHEN RHQ076 = '7' THEN 'Refused' -- categorize string values 
WHEN RHQ076 = '9' THEN 'Dont know' -- categorize string values 
WHEN RHQ076 IS NULL THEN NULL 
ELSE RHQ076 
 END as seen_a_dr_b_c_unable_to_become_pregnant, 

CASE
    WHEN RHQ078 = '1' THEN 'Yes' -- categorize string values 
WHEN RHQ078 = '2' THEN 'No' -- categorize string values 
WHEN RHQ078 = '7' THEN 'Refused' -- categorize string values 
WHEN RHQ078 = '9' THEN 'Dont know' -- categorize string values 
WHEN RHQ078 IS NULL THEN NULL 
ELSE RHQ078 
 END as ever_treated_for_a_pelvic_infection_pid, 

CASE
    WHEN RHQ131 = 1 THEN 'Yes' -- categorize numeric values
WHEN RHQ131 = 2 THEN 'No' -- categorize numeric values
WHEN RHQ131 = 7 THEN 'Refused' -- categorize numeric values
WHEN RHQ131 = 9 THEN 'Dont know' -- categorize numeric values
WHEN RHQ131 IS NULL THEN NULL 
ELSE RHQ131 
 END as ever_been_pregnant, 

CASE
    WHEN RHD143 = 1 THEN 'Yes' -- categorize numeric values
WHEN RHD143 = 2 THEN 'No' -- categorize numeric values
WHEN RHD143 = 7 THEN 'Refused' -- categorize numeric values
WHEN RHD143 = 9 THEN 'Dont know' -- categorize numeric values
WHEN RHD143 IS NULL THEN NULL 
ELSE RHD143 
 END as are_you_pregnant_now, 

CASE
    WHEN RHQ160 IS NULL THEN NULL 
ELSE RHQ160 
 END as how_many_times_have_been_pregnant, 

CASE
    WHEN RHQ162 = '1' THEN 'Yes' -- categorize string values 
WHEN RHQ162 = '2' THEN 'No' -- categorize string values 
WHEN RHQ162 = '3' THEN 'Borderline' -- categorize string values 
WHEN RHQ162 = '7' THEN 'Refused' -- categorize string values 
WHEN RHQ162 = '9' THEN 'Dont know' -- categorize string values 
WHEN RHQ162 IS NULL THEN NULL 
ELSE RHQ162 
 END as during_pregnancy_told_you_have_diabetes, 

CASE
    WHEN SAFE_CAST(RHD167 AS FLOAT64) > 4.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN RHD167 IS NULL THEN NULL 
ELSE RHD167 
 END as total_number_of_deliveries, 

CASE
    WHEN SAFE_CAST(RHQ171 AS FLOAT64) > 4.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN RHQ171 IS NULL THEN NULL 
ELSE RHQ171 
 END as how_many_deliveries_live_birth_result, 

CASE
    WHEN RHQ172 = '1' THEN 'Yes' -- categorize string values 
WHEN RHQ172 = '2' THEN 'No' -- categorize string values 
WHEN RHQ172 = '7' THEN 'Refused' -- categorize string values 
WHEN RHQ172 = '9' THEN 'Dont know' -- categorize string values 
WHEN RHQ172 IS NULL THEN NULL 
ELSE RHQ172 
 END as any_babies_weigh_9_lbs_or_more, 

CASE
    WHEN SAFE_CAST(RHD180 AS FLOAT64) > 43.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN RHD180 IS NULL THEN NULL 
ELSE RHD180 
 END as age_at_first_live_birth, 

CASE
    WHEN SAFE_CAST(RHD190 AS FLOAT64) > 44.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN RHD190 IS NULL THEN NULL 
ELSE RHD190 
 END as age_at_last_live_birth, 

CASE
    WHEN SAFE_CAST(RHQ197 AS FLOAT64) > 24.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN RHQ197 IS NULL THEN NULL 
ELSE RHQ197 
 END as how_many_months_ago_have_baby, 

CASE
    WHEN RHQ200 = 1 THEN 'Yes' -- categorize numeric values
WHEN RHQ200 = 2 THEN 'No' -- categorize numeric values
WHEN RHQ200 = 7 THEN 'Refused' -- categorize numeric values
WHEN RHQ200 = 9 THEN 'Dont know' -- categorize numeric values
WHEN RHQ200 IS NULL THEN NULL 
ELSE RHQ200 
 END as now_breastfeeding_a_child, 

CASE
    WHEN RHD280 = 1 THEN 'Yes' -- categorize numeric values
WHEN RHD280 = 2 THEN 'No' -- categorize numeric values
WHEN RHD280 = 7 THEN 'Refused' -- categorize numeric values
WHEN RHD280 = 9 THEN 'Dont know' -- categorize numeric values
WHEN RHD280 IS NULL THEN NULL 
ELSE RHD280 
 END as had_a_hysterectomy, 

CASE
    WHEN RHQ305 = '1' THEN 'Yes' -- categorize string values 
WHEN RHQ305 = '2' THEN 'No' -- categorize string values 
WHEN RHQ305 = '7' THEN 'Refused' -- categorize string values 
WHEN RHQ305 = '9' THEN 'Dont know' -- categorize string values 
WHEN RHQ305 IS NULL THEN NULL 
ELSE RHQ305 
 END as had_both_ovaries_removed, 

CASE
    WHEN SAFE_CAST(RHQ332 AS FLOAT64) > 59.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN RHQ332 IS NULL THEN NULL 
ELSE RHQ332 
 END as age_when_both_ovaries_removed, 

CASE
    WHEN RHQ540 = 1 THEN 'Yes' -- categorize numeric values
WHEN RHQ540 = 2 THEN 'No' -- categorize numeric values
WHEN RHQ540 = 7 THEN 'Refused' -- categorize numeric values
WHEN RHQ540 = 9 THEN 'Dont know' -- categorize numeric values
WHEN RHQ540 IS NULL THEN NULL 
ELSE RHQ540 
 END as ever_use_female_hormones, 

CASE
    WHEN RHQ542A = '10' THEN 'Pills' -- categorize string values 
WHEN RHQ542A = '77' THEN 'Refused' -- categorize string values 
WHEN RHQ542A = '99' THEN 'Dont know' -- categorize string values 
WHEN RHQ542A IS NULL THEN NULL 
ELSE RHQ542A 
 END as hormone_pills_used, 

CASE
    WHEN RHQ542B = '11' THEN 'Patches' -- categorize string values 
WHEN RHQ542B IS NULL THEN NULL 
ELSE RHQ542B 
 END as hormone_patches_used, 

CASE
    WHEN RHQ542C = '12' THEN 'Cream/suppository/injection' -- categorize string values 
WHEN RHQ542C IS NULL THEN NULL 
ELSE RHQ542C 
 END as hormone_cream_suppository_injection_used, 

CASE
    WHEN RHQ542D = '13' THEN 'Other' -- categorize string values 
WHEN RHQ542D IS NULL THEN NULL 
ELSE RHQ542D 
 END as other_form_of_female_hormone_used, 

CASE
    WHEN RHQ554 = 1 THEN 'Yes' -- categorize numeric values
WHEN RHQ554 = 2 THEN 'No' -- categorize numeric values
WHEN RHQ554 = 7 THEN 'Refused' -- categorize numeric values
WHEN RHQ554 = 9 THEN 'Dont know' -- categorize numeric values
WHEN RHQ554 IS NULL THEN NULL 
ELSE RHQ554 
 END as use_hormone_pills_w_estrogen_only, 

CASE
    WHEN RHQ570 = 1 THEN 'Yes' -- categorize numeric values
WHEN RHQ570 = 2 THEN 'No' -- categorize numeric values
WHEN RHQ570 = 7 THEN 'Refused' -- categorize numeric values
WHEN RHQ570 = 9 THEN 'Dont know' -- categorize numeric values
WHEN RHQ570 IS NULL THEN NULL 
ELSE RHQ570 
 END as used_estrogen_progestin_combo_pills, 

 FROM {{ ref('stg_reproductive_health_questionnaire') }}

-- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_RHQ.htm
