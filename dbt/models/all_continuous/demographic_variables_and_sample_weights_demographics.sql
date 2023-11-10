SELECT
SEQN as respondent_sequence_number,
CASE
        WHEN SDDSRVYR = 10 THEN 'NHANES 2017-2018 public release' 
WHEN SDDSRVYR IS NULL THEN NULL 
ELSE NULL 
 END as data_release_cycle,
CASE
        WHEN RIDSTATR = 1 THEN 'Interviewed only' 
WHEN RIDSTATR = 2 THEN 'Both interviewed and MEC examined' 
WHEN RIDSTATR IS NULL THEN NULL 
ELSE NULL 
 END as interview_examination_status,
CASE
        WHEN RIAGENDR = 1 THEN 'Male' 
WHEN RIAGENDR = 2 THEN 'Female' 
WHEN RIAGENDR IS NULL THEN NULL 
ELSE NULL 
 END as gender,
WHEN RIDAGEYR IS NOT NULL THEN RIDAGEYRWHEN RIDAGEYR IS NULL THEN NULL 
ELSE NULL 
 END as age_in_years_at_screening,
WHEN RIDAGEMN IS NOT NULL THEN RIDAGEMNWHEN RIDAGEMN IS NULL THEN NULL 
ELSE NULL 
 END as age_in_months_at_screening_0_to_24_mos,
CASE
        WHEN RIDRETH1 = 1 THEN 'Mexican American' 
WHEN RIDRETH1 = 2 THEN 'Other Hispanic' 
WHEN RIDRETH1 = 3 THEN 'Non-Hispanic White' 
WHEN RIDRETH1 = 4 THEN 'Non-Hispanic Black' 
WHEN RIDRETH1 = 5 THEN 'Other Race - Including Multi-Racial' 
WHEN RIDRETH1 IS NULL THEN NULL 
ELSE NULL 
 END as race_hispanic_origin,
CASE
        WHEN RIDRETH3 = 1 THEN 'Mexican American' 
WHEN RIDRETH3 = 2 THEN 'Other Hispanic' 
WHEN RIDRETH3 = 3 THEN 'Non-Hispanic White' 
WHEN RIDRETH3 = 4 THEN 'Non-Hispanic Black' 
WHEN RIDRETH3 = 6 THEN 'Non-Hispanic Asian' 
WHEN RIDRETH3 = 7 THEN 'Other Race - Including Multi-Racial' 
WHEN RIDRETH3 IS NULL THEN NULL 
ELSE NULL 
 END as race_hispanic_origin_w_nh_asian,
CASE
        WHEN RIDEXMON = 1 THEN 'November 1 through April 30' 
WHEN RIDEXMON = 2 THEN 'May 1 through October 31' 
WHEN RIDEXMON IS NULL THEN NULL 
ELSE NULL 
 END as six_month_time_period,
WHEN RIDEXAGM IS NOT NULL THEN RIDEXAGMWHEN RIDEXAGM IS NULL THEN NULL 
ELSE NULL 
 END as age_in_months_at_exam_0_to_19_years,
CASE
        WHEN DMQMILIZ = 1 THEN 'Yes' 
WHEN DMQMILIZ = 2 THEN 'No' 
WHEN DMQMILIZ = 7 THEN 'Refused' 
WHEN DMQMILIZ = 9 THEN 'Don\'t Know' 
WHEN DMQMILIZ IS NULL THEN NULL 
ELSE NULL 
 END as served_active_duty_in_us_armed_forces,
CASE
        WHEN DMQADFC = 1 THEN 'Yes' 
WHEN DMQADFC = 2 THEN 'No' 
WHEN DMQADFC = 7 THEN 'Refused' 
WHEN DMQADFC = 9 THEN 'Don\'t Know' 
WHEN DMQADFC IS NULL THEN NULL 
ELSE NULL 
 END as served_in_a_foreign_country,
CASE
        WHEN DMDBORN4 = 1 THEN 'Born in 50 US states or Washington, DC' 
WHEN DMDBORN4 = 2 THEN 'Others' 
WHEN DMDBORN4 = 77 THEN 'Refused' 
WHEN DMDBORN4 = 99 THEN 'Don\'t Know' 
WHEN DMDBORN4 IS NULL THEN NULL 
ELSE NULL 
 END as country_of_birth,
CASE
        WHEN DMDCITZN = 1 THEN 'Citizen by birth or naturalization' 
WHEN DMDCITZN = 2 THEN 'Not a citizen of the US' 
WHEN DMDCITZN = 7 THEN 'Refused' 
WHEN DMDCITZN = 9 THEN 'Don\'t Know' 
WHEN DMDCITZN IS NULL THEN NULL 
ELSE NULL 
 END as citizenship_status,
CASE
        WHEN DMDYRSUS = 1 THEN 'Less than 1 year' 
WHEN DMDYRSUS = 2 THEN '1 year or more, but less than 5 years' 
WHEN DMDYRSUS = 3 THEN '5 year or more, but less than 10 years' 
WHEN DMDYRSUS = 4 THEN '10 year or more, but less than 15 years' 
WHEN DMDYRSUS = 5 THEN '15 year or more, but less than 20 years' 
WHEN DMDYRSUS = 6 THEN '20 year or more, but less than 30 years' 
WHEN DMDYRSUS = 7 THEN '30 year or more, but less than 40 years' 
WHEN DMDYRSUS = 8 THEN '40 year or more, but less than 50 years' 
WHEN DMDYRSUS = 9 THEN '50 years or more' 
WHEN DMDYRSUS = 77 THEN 'Refused' 
WHEN DMDYRSUS = 99 THEN 'Don\'t Know' 
WHEN DMDYRSUS IS NULL THEN NULL 
ELSE NULL 
 END as length_of_time_in_us,
CASE
        WHEN DMDEDUC3 = 0 THEN 'Never attended / kindergarten only' 
WHEN DMDEDUC3 = 1 THEN '1st grade' 
WHEN DMDEDUC3 = 2 THEN '2nd grade' 
WHEN DMDEDUC3 = 3 THEN '3rd grade' 
WHEN DMDEDUC3 = 4 THEN '4th grade' 
WHEN DMDEDUC3 = 5 THEN '5th grade' 
WHEN DMDEDUC3 = 6 THEN '6th grade' 
WHEN DMDEDUC3 = 7 THEN '7th grade' 
WHEN DMDEDUC3 = 8 THEN '8th grade' 
WHEN DMDEDUC3 = 9 THEN '9th grade' 
WHEN DMDEDUC3 = 10 THEN '10th grade' 
WHEN DMDEDUC3 = 11 THEN '11th grade' 
WHEN DMDEDUC3 = 12 THEN '12th grade, no diploma' 
WHEN DMDEDUC3 = 13 THEN 'High school graduate' 
WHEN DMDEDUC3 = 14 THEN 'GED or equivalent' 
WHEN DMDEDUC3 = 15 THEN 'More than high school' 
WHEN DMDEDUC3 = 55 THEN 'Less than 5th grade' 
WHEN DMDEDUC3 = 66 THEN 'Less than 9th grade' 
WHEN DMDEDUC3 = 77 THEN 'Refused' 
WHEN DMDEDUC3 = 99 THEN 'Don\'t Know' 
WHEN DMDEDUC3 IS NULL THEN NULL 
ELSE NULL 
 END as education_level_children_youth_6_19,
CASE
        WHEN DMDEDUC2 = 1 THEN 'Less than 9th grade' 
WHEN DMDEDUC2 = 2 THEN '9-11th grade (Includes 12th grade with no diploma)' 
WHEN DMDEDUC2 = 3 THEN 'High school graduate/GED or equivalent' 
WHEN DMDEDUC2 = 4 THEN 'Some college or AA degree' 
WHEN DMDEDUC2 = 5 THEN 'College graduate or above' 
WHEN DMDEDUC2 = 7 THEN 'Refused' 
WHEN DMDEDUC2 = 9 THEN 'Don\'t Know' 
WHEN DMDEDUC2 IS NULL THEN NULL 
ELSE NULL 
 END as education_level_adults_20,
CASE
        WHEN DMDMARTL = 1 THEN 'Married' 
WHEN DMDMARTL = 2 THEN 'Widowed' 
WHEN DMDMARTL = 3 THEN 'Divorced' 
WHEN DMDMARTL = 4 THEN 'Separated' 
WHEN DMDMARTL = 5 THEN 'Never married' 
WHEN DMDMARTL = 6 THEN 'Living with partner' 
WHEN DMDMARTL = 77 THEN 'Refused' 
WHEN DMDMARTL = 99 THEN 'Don\'t Know' 
WHEN DMDMARTL IS NULL THEN NULL 
ELSE NULL 
 END as marital_status,
CASE
        WHEN RIDEXPRG = 1 THEN 'Yes, positive lab pregnancy test or self-reported pregnant at exam' 
WHEN RIDEXPRG = 2 THEN 'The participant was not pregnant at exam' 
WHEN RIDEXPRG = 3 THEN 'Cannot ascertain if the participant is pregnant at exam' 
WHEN RIDEXPRG IS NULL THEN NULL 
ELSE NULL 
 END as pregnancy_status_at_exam,
CASE
        WHEN SIALANG = 1 THEN 'English' 
WHEN SIALANG = 2 THEN 'Spanish' 
WHEN SIALANG IS NULL THEN NULL 
ELSE NULL 
 END as language_of_sp_interview,
CASE
        WHEN SIAPROXY = 1 THEN 'Yes' 
WHEN SIAPROXY = 2 THEN 'No' 
WHEN SIAPROXY IS NULL THEN NULL 
ELSE NULL 
 END as proxy_used_in_sp_interview,
CASE
        WHEN SIAINTRP = 1 THEN 'Yes' 
WHEN SIAINTRP = 2 THEN 'No' 
WHEN SIAINTRP IS NULL THEN NULL 
ELSE NULL 
 END as interpreter_used_in_sp_interview,
CASE
        WHEN FIALANG = 1 THEN 'English' 
WHEN FIALANG = 2 THEN 'Spanish' 
WHEN FIALANG IS NULL THEN NULL 
ELSE NULL 
 END as language_of_family_interview,
CASE
        WHEN FIAPROXY = 1 THEN 'Yes' 
WHEN FIAPROXY = 2 THEN 'No' 
WHEN FIAPROXY IS NULL THEN NULL 
ELSE NULL 
 END as proxy_used_in_family_interview,
CASE
        WHEN FIAINTRP = 1 THEN 'Yes' 
WHEN FIAINTRP = 2 THEN 'No' 
WHEN FIAINTRP IS NULL THEN NULL 
ELSE NULL 
 END as interpreter_used_in_family_interview,
CASE
        WHEN MIALANG = 1 THEN 'English' 
WHEN MIALANG = 2 THEN 'Spanish' 
WHEN MIALANG IS NULL THEN NULL 
ELSE NULL 
 END as language_of_mec_interview,
CASE
        WHEN MIAPROXY = 1 THEN 'Yes' 
WHEN MIAPROXY = 2 THEN 'No' 
WHEN MIAPROXY IS NULL THEN NULL 
ELSE NULL 
 END as proxy_used_in_mec_interview,
CASE
        WHEN MIAINTRP = 1 THEN 'Yes' 
WHEN MIAINTRP = 2 THEN 'No' 
WHEN MIAINTRP IS NULL THEN NULL 
ELSE NULL 
 END as interpreter_used_in_mec_interview,
CASE
        WHEN AIALANGA = 1 THEN 'English' 
WHEN AIALANGA = 2 THEN 'Spanish' 
WHEN AIALANGA = 3 THEN 'Asian languages' 
WHEN AIALANGA IS NULL THEN NULL 
ELSE NULL 
 END as language_of_acasi_interview,
CASE
        WHEN DMDHHSIZ = 1 THEN '1' 
WHEN DMDHHSIZ = 2 THEN '2' 
WHEN DMDHHSIZ = 3 THEN '3' 
WHEN DMDHHSIZ = 4 THEN '4' 
WHEN DMDHHSIZ = 5 THEN '5' 
WHEN DMDHHSIZ = 6 THEN '6' 
WHEN DMDHHSIZ = 7 THEN '7 or more people in the Household' 
WHEN DMDHHSIZ IS NULL THEN NULL 
ELSE NULL 
 END as total_number_of_people_in_the_household,
CASE
        WHEN DMDFMSIZ = 1 THEN '1' 
WHEN DMDFMSIZ = 2 THEN '2' 
WHEN DMDFMSIZ = 3 THEN '3' 
WHEN DMDFMSIZ = 4 THEN '4' 
WHEN DMDFMSIZ = 5 THEN '5' 
WHEN DMDFMSIZ = 6 THEN '6' 
WHEN DMDFMSIZ = 7 THEN '7 or more people in the Family' 
WHEN DMDFMSIZ IS NULL THEN NULL 
ELSE NULL 
 END as total_number_of_people_in_the_family,
CASE
        WHEN DMDHHSZA = 0 THEN '0' 
WHEN DMDHHSZA = 1 THEN '1' 
WHEN DMDHHSZA = 2 THEN '2' 
WHEN DMDHHSZA = 3 THEN '3 or more' 
WHEN DMDHHSZA IS NULL THEN NULL 
ELSE NULL 
 END as of_children_5_years_or_younger_in_hh,
CASE
        WHEN DMDHHSZB = 0 THEN '0' 
WHEN DMDHHSZB = 1 THEN '1' 
WHEN DMDHHSZB = 2 THEN '2' 
WHEN DMDHHSZB = 3 THEN '3 or more' 
WHEN DMDHHSZB IS NULL THEN NULL 
ELSE NULL 
 END as of_children_6_17_years_old_in_hh,
CASE
        WHEN DMDHHSZE = 0 THEN '0' 
WHEN DMDHHSZE = 1 THEN '1' 
WHEN DMDHHSZE = 2 THEN '2' 
WHEN DMDHHSZE = 3 THEN '3 or more' 
WHEN DMDHHSZE IS NULL THEN NULL 
ELSE NULL 
 END as of_adults_60_years_or_older_in_hh,
CASE
        WHEN DMDHRGND = 1 THEN 'Male' 
WHEN DMDHRGND = 2 THEN 'Female' 
WHEN DMDHRGND IS NULL THEN NULL 
ELSE NULL 
 END as hh_ref_person_s_gender,
CASE
        WHEN DMDHRAGZ = '1' THEN '<20 years' 
WHEN DMDHRAGZ = '2' THEN '20-39 years' 
WHEN DMDHRAGZ = '3' THEN '40-59 years' 
WHEN DMDHRAGZ = '4' THEN '60+ years' 
WHEN DMDHRAGZ IS NULL THEN NULL 
ELSE NULL 
 END as hh_ref_person_s_age_in_years,
CASE
        WHEN DMDHREDZ = '1' THEN 'Less than high school degree' 
WHEN DMDHREDZ = '2' THEN 'High school grad/GED or some college/AA degree' 
WHEN DMDHREDZ = '3' THEN 'College graduate or above' 
WHEN DMDHREDZ = '7' THEN 'Refused' 
WHEN DMDHREDZ = '9' THEN 'Don\'t Know' 
WHEN DMDHREDZ IS NULL THEN NULL 
ELSE NULL 
 END as hh_ref_person_s_education_level,
CASE
        WHEN DMDHRMAZ = '1' THEN 'Married/Living with partner' 
WHEN DMDHRMAZ = '2' THEN 'Widowed/Divorced/Separated' 
WHEN DMDHRMAZ = '3' THEN 'Never Married' 
WHEN DMDHRMAZ = '77' THEN 'Refused' 
WHEN DMDHRMAZ = '99' THEN 'Don\'t Know' 
WHEN DMDHRMAZ IS NULL THEN NULL 
ELSE NULL 
 END as hh_ref_person_s_marital_status,
CASE
        WHEN DMDHSEDZ = '1' THEN 'Less than high school degree' 
WHEN DMDHSEDZ = '2' THEN 'High school grad/GED or some college/AA degree' 
WHEN DMDHSEDZ = '3' THEN 'College graduate or above' 
WHEN DMDHSEDZ = '7' THEN 'Refused' 
WHEN DMDHSEDZ = '9' THEN 'Don\'t Know' 
WHEN DMDHSEDZ IS NULL THEN NULL 
ELSE NULL 
 END as hh_ref_person_s_spouse_s_education_level,
WHEN WTINT2YR IS NOT NULL THEN WTINT2YRWHEN WTINT2YR IS NULL THEN NULL 
ELSE NULL 
 END as full_sample_2_year_interview_weight,
WHEN WTMEC2YR IS NOT NULL THEN WTMEC2YRWHEN WTMEC2YR IS NULL THEN NULL 
ELSE NULL 
 END as full_sample_2_year_mec_exam_weight,
WHEN SDMVPSU IS NOT NULL THEN SDMVPSUWHEN SDMVPSU IS NULL THEN NULL 
ELSE NULL 
 END as masked_variance_pseudo_psu,
WHEN SDMVSTRA IS NOT NULL THEN SDMVSTRAWHEN SDMVSTRA IS NULL THEN NULL 
ELSE NULL 
 END as masked_variance_pseudo_stratum,
CASE
        WHEN INDHHIN2 = 1 THEN '$ 0 to $ 4,999' 
WHEN INDHHIN2 = 2 THEN '$ 5,000 to $ 9,999' 
WHEN INDHHIN2 = 3 THEN '$10,000 to $14,999' 
WHEN INDHHIN2 = 4 THEN '$15,000 to $19,999' 
WHEN INDHHIN2 = 5 THEN '$20,000 to $24,999' 
WHEN INDHHIN2 = 6 THEN '$25,000 to $34,999' 
WHEN INDHHIN2 = 7 THEN '$35,000 to $44,999' 
WHEN INDHHIN2 = 8 THEN '$45,000 to $54,999' 
WHEN INDHHIN2 = 9 THEN '$55,000 to $64,999' 
WHEN INDHHIN2 = 10 THEN '$65,000 to $74,999' 
WHEN INDHHIN2 = 12 THEN '$20,000 and Over' 
WHEN INDHHIN2 = 13 THEN 'Under $20,000' 
WHEN INDHHIN2 = 14 THEN '$75,000 to $99,999' 
WHEN INDHHIN2 = 15 THEN '$100,000 and Over' 
WHEN INDHHIN2 = 77 THEN 'Refused' 
WHEN INDHHIN2 = 99 THEN 'Don\'t know' 
WHEN INDHHIN2 IS NULL THEN NULL 
ELSE NULL 
 END as annual_household_income,
CASE
        WHEN INDFMIN2 = 1 THEN '$ 0 to $ 4,999' 
WHEN INDFMIN2 = 2 THEN '$ 5,000 to $ 9,999' 
WHEN INDFMIN2 = 3 THEN '$10,000 to $14,999' 
WHEN INDFMIN2 = 4 THEN '$15,000 to $19,999' 
WHEN INDFMIN2 = 5 THEN '$20,000 to $24,999' 
WHEN INDFMIN2 = 6 THEN '$25,000 to $34,999' 
WHEN INDFMIN2 = 7 THEN '$35,000 to $44,999' 
WHEN INDFMIN2 = 8 THEN '$45,000 to $54,999' 
WHEN INDFMIN2 = 9 THEN '$55,000 to $64,999' 
WHEN INDFMIN2 = 10 THEN '$65,000 to $74,999' 
WHEN INDFMIN2 = 12 THEN '$20,000 and Over' 
WHEN INDFMIN2 = 13 THEN 'Under $20,000' 
WHEN INDFMIN2 = 14 THEN '$75,000 to $99,999' 
WHEN INDFMIN2 = 15 THEN '$100,000 and Over' 
WHEN INDFMIN2 = 77 THEN 'Refused' 
WHEN INDFMIN2 = 99 THEN 'Don\'t know' 
WHEN INDFMIN2 IS NULL THEN NULL 
ELSE NULL 
 END as annual_family_income,
WHEN INDFMPIR IS NOT NULL THEN INDFMPIRWHEN INDFMPIR IS NULL THEN NULL 
ELSE NULL 
 END as ratio_of_family_income_to_poverty,
 FROM {{ ref('stg_demographic_variables_and_sample_weights_demographics') }}