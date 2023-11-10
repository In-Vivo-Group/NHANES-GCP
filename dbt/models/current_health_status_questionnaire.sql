SELECT
SEQN as respondent_sequence_number,
CASE
    WHEN HSD010 = 1 THEN 'Excellent' 
WHEN HSD010 = 2 THEN 'Very good,' 
WHEN HSD010 = 3 THEN 'Good,' 
WHEN HSD010 = 4 THEN 'Fair, or' 
WHEN HSD010 = 5 THEN 'Poor?' 
WHEN HSD010 = 7 THEN 'Refused' 
WHEN HSD010 = 9 THEN 'Don't know' 
WHEN HSD010 IS NULL THEN NULL 
ELSE NULL 
 END as general_health_condition,
CASE
    WHEN HSQ500 = 1 THEN 'Yes' 
WHEN HSQ500 = 2 THEN 'No' 
WHEN HSQ500 = 7 THEN 'Refused' 
WHEN HSQ500 = 9 THEN 'Don't know' 
WHEN HSQ500 IS NULL THEN NULL 
ELSE NULL 
 END as sp_have_head_cold_or_chest_cold,
CASE
    WHEN HSQ510 = 1 THEN 'Yes' 
WHEN HSQ510 = 2 THEN 'No' 
WHEN HSQ510 = 7 THEN 'Refused' 
WHEN HSQ510 = 9 THEN 'Don't know' 
WHEN HSQ510 IS NULL THEN NULL 
ELSE NULL 
 END as sp_have_stomach_or_intestinal_illness,
CASE
    WHEN HSQ520 = 1 THEN 'Yes' 
WHEN HSQ520 = 2 THEN 'No' 
WHEN HSQ520 = 7 THEN 'Refused' 
WHEN HSQ520 = 9 THEN 'Don't know' 
WHEN HSQ520 IS NULL THEN NULL 
ELSE NULL 
 END as sp_have_flu_pneumonia_ear_infection,
CASE
    WHEN HSQ571 = 1 THEN 'Yes' 
WHEN HSQ571 = 2 THEN 'No' 
WHEN HSQ571 = 7 THEN 'Refused' 
WHEN HSQ571 = 9 THEN 'Don't know' 
WHEN HSQ571 IS NULL THEN NULL 
ELSE NULL 
 END as sp_donated_blood_in_past_12_months,
CASE
    WHEN HSQ580 = 1 THEN '1' 
WHEN HSQ580 = 2 THEN '2' 
WHEN HSQ580 = 3 THEN '3' 
WHEN HSQ580 = 4 THEN '4' 
WHEN HSQ580 = 5 THEN '5' 
WHEN HSQ580 = 6 THEN '6' 
WHEN HSQ580 = 7 THEN '7' 
WHEN HSQ580 = 8 THEN '8' 
WHEN HSQ580 = 9 THEN '9' 
WHEN HSQ580 = 10 THEN '10' 
WHEN HSQ580 = 11 THEN '11' 
WHEN HSQ580 = 12 THEN '12' 
WHEN HSQ580 = 77 THEN 'Refused' 
WHEN HSQ580 = 99 THEN 'Don't know' 
WHEN HSQ580 IS NULL THEN NULL 
ELSE NULL 
 END as how_long_ago_was_last_blood_donation,
CASE
    WHEN HSQ590 = 1 THEN 'Yes' 
WHEN HSQ590 = 2 THEN 'No' 
WHEN HSQ590 = 7 THEN 'Refused' 
WHEN HSQ590 = 9 THEN 'Don't know' 
WHEN HSQ590 IS NULL THEN NULL 
ELSE NULL 
 END as blood_ever_tested_for_hiv_virus,
CASE
    WHEN HSAQUEX = 1 THEN 'Dietary Recall Component -- B(1-11)' 
WHEN HSAQUEX = 2 THEN 'MEC CAPI Questionnaire -- B(12-150)' 
WHEN HSAQUEX IS NULL THEN NULL 
ELSE NULL 
 END as source_of_health_status_data,
 FROM {ref('stg_current_health_status_questionnaire'})