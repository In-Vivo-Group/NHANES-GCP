SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN SDDSRVYR = 10 THEN 'NHANES 2017-2018 public release' -- categorize numeric values
WHEN SDDSRVYR IS NULL THEN NULL 
ELSE SDDSRVYR 
 END as data_release_cycle, 

CASE
            WHEN RIDSTATR = 1 THEN 'Interviewed only' -- categorize numeric values
WHEN RIDSTATR = 2 THEN 'Both interviewed and MEC examined' -- categorize numeric values
WHEN RIDSTATR IS NULL THEN NULL 
ELSE RIDSTATR 
 END as interview_examination_status, 

CASE
            WHEN RIAGENDR = 1 THEN 'Male' -- categorize numeric values
WHEN RIAGENDR = 2 THEN 'Female' -- categorize numeric values
WHEN RIAGENDR IS NULL THEN NULL 
ELSE RIAGENDR 
 END as gender, 

CASE
            WHEN RIDAGEYR IS NULL THEN NULL 
ELSE RIDAGEYR 
 END as age_in_years_at_screening, 

CASE
            WHEN RIDAGEMN IS NULL THEN NULL 
ELSE RIDAGEMN 
 END as age_in_months_at_screening_0_to_24_mos, 

CASE
            WHEN RIDRETH1 = 1 THEN 'Mexican American' -- categorize numeric values
WHEN RIDRETH1 = 2 THEN 'Other Hispanic' -- categorize numeric values
WHEN RIDRETH1 = 3 THEN 'Non-Hispanic White' -- categorize numeric values
WHEN RIDRETH1 = 4 THEN 'Non-Hispanic Black' -- categorize numeric values
WHEN RIDRETH1 = 5 THEN 'Other Race - Including Multi-Racial' -- categorize numeric values
WHEN RIDRETH1 IS NULL THEN NULL 
ELSE RIDRETH1 
 END as race_hispanic_origin, 

CASE
            WHEN RIDRETH3 = 1 THEN 'Mexican American' -- categorize numeric values
WHEN RIDRETH3 = 2 THEN 'Other Hispanic' -- categorize numeric values
WHEN RIDRETH3 = 3 THEN 'Non-Hispanic White' -- categorize numeric values
WHEN RIDRETH3 = 4 THEN 'Non-Hispanic Black' -- categorize numeric values
WHEN RIDRETH3 = 6 THEN 'Non-Hispanic Asian' -- categorize numeric values
WHEN RIDRETH3 = 7 THEN 'Other Race - Including Multi-Racial' -- categorize numeric values
WHEN RIDRETH3 IS NULL THEN NULL 
ELSE RIDRETH3 
 END as race_hispanic_origin_w_nh_asian, 

CASE
            WHEN RIDEXMON = 1 THEN 'November 1 through April 30' -- categorize numeric values
WHEN RIDEXMON = 2 THEN 'May 1 through October 31' -- categorize numeric values
WHEN RIDEXMON IS NULL THEN NULL 
ELSE RIDEXMON 
 END as six_month_time_period, 

CASE
            WHEN RIDEXAGM IS NULL THEN NULL 
ELSE RIDEXAGM 
 END as age_in_months_at_exam_0_to_19_years, 

CASE
            WHEN DMQMILIZ = 1 THEN 'Yes' -- categorize numeric values
WHEN DMQMILIZ = 2 THEN 'No' -- categorize numeric values
WHEN DMQMILIZ = 7 THEN 'Refused' -- categorize numeric values
WHEN DMQMILIZ = 9 THEN 'Dont Know' -- categorize numeric values
WHEN DMQMILIZ IS NULL THEN NULL 
ELSE DMQMILIZ 
 END as served_active_duty_in_us_armed_forces, 

CASE
            WHEN DMQADFC = 1 THEN 'Yes' -- categorize numeric values
WHEN DMQADFC = 2 THEN 'No' -- categorize numeric values
WHEN DMQADFC = 7 THEN 'Refused' -- categorize numeric values
WHEN DMQADFC = 9 THEN 'Dont Know' -- categorize numeric values
WHEN DMQADFC IS NULL THEN NULL 
ELSE DMQADFC 
 END as served_in_a_foreign_country, 

CASE
            WHEN DMDBORN4 = 1 THEN 'Born in 50 US states or Washington, DC' -- categorize numeric values
WHEN DMDBORN4 = 2 THEN 'Others' -- categorize numeric values
WHEN DMDBORN4 = 77 THEN 'Refused' -- categorize numeric values
WHEN DMDBORN4 = 99 THEN 'Dont Know' -- categorize numeric values
WHEN DMDBORN4 IS NULL THEN NULL 
ELSE DMDBORN4 
 END as country_of_birth, 

CASE
            WHEN DMDCITZN = 1 THEN 'Citizen by birth or naturalization' -- categorize numeric values
WHEN DMDCITZN = 2 THEN 'Not a citizen of the US' -- categorize numeric values
WHEN DMDCITZN = 7 THEN 'Refused' -- categorize numeric values
WHEN DMDCITZN = 9 THEN 'Dont Know' -- categorize numeric values
WHEN DMDCITZN IS NULL THEN NULL 
ELSE DMDCITZN 
 END as citizenship_status, 

CASE
            WHEN DMDYRSUS = 1 THEN 'Less than 1 year' -- categorize numeric values
WHEN DMDYRSUS = 2 THEN '1 year or more, but less than 5 years' -- categorize numeric values
WHEN DMDYRSUS = 3 THEN '5 year or more, but less than 10 years' -- categorize numeric values
WHEN DMDYRSUS = 4 THEN '10 year or more, but less than 15 years' -- categorize numeric values
WHEN DMDYRSUS = 5 THEN '15 year or more, but less than 20 years' -- categorize numeric values
WHEN DMDYRSUS = 6 THEN '20 year or more, but less than 30 years' -- categorize numeric values
WHEN DMDYRSUS = 7 THEN '30 year or more, but less than 40 years' -- categorize numeric values
WHEN DMDYRSUS = 8 THEN '40 year or more, but less than 50 years' -- categorize numeric values
WHEN DMDYRSUS = 9 THEN '50 years or more' -- categorize numeric values
WHEN DMDYRSUS = 77 THEN 'Refused' -- categorize numeric values
WHEN DMDYRSUS = 99 THEN 'Dont Know' -- categorize numeric values
WHEN DMDYRSUS IS NULL THEN NULL 
ELSE DMDYRSUS 
 END as length_of_time_in_us, 

CASE
            WHEN DMDEDUC3 = 0 THEN 'Never attended / kindergarten only' -- categorize numeric values
WHEN DMDEDUC3 = 1 THEN '1st grade' -- categorize numeric values
WHEN DMDEDUC3 = 2 THEN '2nd grade' -- categorize numeric values
WHEN DMDEDUC3 = 3 THEN '3rd grade' -- categorize numeric values
WHEN DMDEDUC3 = 4 THEN '4th grade' -- categorize numeric values
WHEN DMDEDUC3 = 5 THEN '5th grade' -- categorize numeric values
WHEN DMDEDUC3 = 6 THEN '6th grade' -- categorize numeric values
WHEN DMDEDUC3 = 7 THEN '7th grade' -- categorize numeric values
WHEN DMDEDUC3 = 8 THEN '8th grade' -- categorize numeric values
WHEN DMDEDUC3 = 9 THEN '9th grade' -- categorize numeric values
WHEN DMDEDUC3 = 10 THEN '10th grade' -- categorize numeric values
WHEN DMDEDUC3 = 11 THEN '11th grade' -- categorize numeric values
WHEN DMDEDUC3 = 12 THEN '12th grade, no diploma' -- categorize numeric values
WHEN DMDEDUC3 = 13 THEN 'High school graduate' -- categorize numeric values
WHEN DMDEDUC3 = 14 THEN 'GED or equivalent' -- categorize numeric values
WHEN DMDEDUC3 = 15 THEN 'More than high school' -- categorize numeric values
WHEN DMDEDUC3 = 55 THEN 'Less than 5th grade' -- categorize numeric values
WHEN DMDEDUC3 = 66 THEN 'Less than 9th grade' -- categorize numeric values
WHEN DMDEDUC3 = 77 THEN 'Refused' -- categorize numeric values
WHEN DMDEDUC3 = 99 THEN 'Dont Know' -- categorize numeric values
WHEN DMDEDUC3 IS NULL THEN NULL 
ELSE DMDEDUC3 
 END as education_level_children_youth_6_19, 

CASE
            WHEN DMDEDUC2 = 1 THEN 'Less than 9th grade' -- categorize numeric values
WHEN DMDEDUC2 = 2 THEN '9-11th grade (Includes 12th grade with no diploma)' -- categorize numeric values
WHEN DMDEDUC2 = 3 THEN 'High school graduate/GED or equivalent' -- categorize numeric values
WHEN DMDEDUC2 = 4 THEN 'Some college or AA degree' -- categorize numeric values
WHEN DMDEDUC2 = 5 THEN 'College graduate or above' -- categorize numeric values
WHEN DMDEDUC2 = 7 THEN 'Refused' -- categorize numeric values
WHEN DMDEDUC2 = 9 THEN 'Dont Know' -- categorize numeric values
WHEN DMDEDUC2 IS NULL THEN NULL 
ELSE DMDEDUC2 
 END as education_level_adults_20, 

CASE
            WHEN DMDMARTL = 1 THEN 'Married' -- categorize numeric values
WHEN DMDMARTL = 2 THEN 'Widowed' -- categorize numeric values
WHEN DMDMARTL = 3 THEN 'Divorced' -- categorize numeric values
WHEN DMDMARTL = 4 THEN 'Separated' -- categorize numeric values
WHEN DMDMARTL = 5 THEN 'Never married' -- categorize numeric values
WHEN DMDMARTL = 6 THEN 'Living with partner' -- categorize numeric values
WHEN DMDMARTL = 77 THEN 'Refused' -- categorize numeric values
WHEN DMDMARTL = 99 THEN 'Dont Know' -- categorize numeric values
WHEN DMDMARTL IS NULL THEN NULL 
ELSE DMDMARTL 
 END as marital_status, 

CASE
            WHEN RIDEXPRG = 1 THEN 'Yes, positive lab pregnancy test or self-reported pregnant at exam' -- categorize numeric values
WHEN RIDEXPRG = 2 THEN 'The participant was not pregnant at exam' -- categorize numeric values
WHEN RIDEXPRG = 3 THEN 'Cannot ascertain if the participant is pregnant at exam' -- categorize numeric values
WHEN RIDEXPRG IS NULL THEN NULL 
ELSE RIDEXPRG 
 END as pregnancy_status_at_exam, 

CASE
            WHEN SIALANG = 1 THEN 'English' -- categorize numeric values
WHEN SIALANG = 2 THEN 'Spanish' -- categorize numeric values
WHEN SIALANG IS NULL THEN NULL 
ELSE SIALANG 
 END as language_of_sp_interview, 

CASE
            WHEN SIAPROXY = 1 THEN 'Yes' -- categorize numeric values
WHEN SIAPROXY = 2 THEN 'No' -- categorize numeric values
WHEN SIAPROXY IS NULL THEN NULL 
ELSE SIAPROXY 
 END as proxy_used_in_sp_interview, 

CASE
            WHEN SIAINTRP = 1 THEN 'Yes' -- categorize numeric values
WHEN SIAINTRP = 2 THEN 'No' -- categorize numeric values
WHEN SIAINTRP IS NULL THEN NULL 
ELSE SIAINTRP 
 END as interpreter_used_in_sp_interview, 

CASE
            WHEN FIALANG = 1 THEN 'English' -- categorize numeric values
WHEN FIALANG = 2 THEN 'Spanish' -- categorize numeric values
WHEN FIALANG IS NULL THEN NULL 
ELSE FIALANG 
 END as language_of_family_interview, 

CASE
            WHEN FIAPROXY = 1 THEN 'Yes' -- categorize numeric values
WHEN FIAPROXY = 2 THEN 'No' -- categorize numeric values
WHEN FIAPROXY IS NULL THEN NULL 
ELSE FIAPROXY 
 END as proxy_used_in_family_interview, 

CASE
            WHEN FIAINTRP = 1 THEN 'Yes' -- categorize numeric values
WHEN FIAINTRP = 2 THEN 'No' -- categorize numeric values
WHEN FIAINTRP IS NULL THEN NULL 
ELSE FIAINTRP 
 END as interpreter_used_in_family_interview, 

CASE
            WHEN MIALANG = 1 THEN 'English' -- categorize numeric values
WHEN MIALANG = 2 THEN 'Spanish' -- categorize numeric values
WHEN MIALANG IS NULL THEN NULL 
ELSE MIALANG 
 END as language_of_mec_interview, 

CASE
            WHEN MIAPROXY = 1 THEN 'Yes' -- categorize numeric values
WHEN MIAPROXY = 2 THEN 'No' -- categorize numeric values
WHEN MIAPROXY IS NULL THEN NULL 
ELSE MIAPROXY 
 END as proxy_used_in_mec_interview, 

CASE
            WHEN MIAINTRP = 1 THEN 'Yes' -- categorize numeric values
WHEN MIAINTRP = 2 THEN 'No' -- categorize numeric values
WHEN MIAINTRP IS NULL THEN NULL 
ELSE MIAINTRP 
 END as interpreter_used_in_mec_interview, 

CASE
            WHEN AIALANGA = 1 THEN 'English' -- categorize numeric values
WHEN AIALANGA = 2 THEN 'Spanish' -- categorize numeric values
WHEN AIALANGA = 3 THEN 'Asian languages' -- categorize numeric values
WHEN AIALANGA IS NULL THEN NULL 
ELSE AIALANGA 
 END as language_of_acasi_interview, 

CASE
            WHEN DMDHHSIZ = 1 THEN '1' -- categorize numeric values
WHEN DMDHHSIZ = 2 THEN '2' -- categorize numeric values
WHEN DMDHHSIZ = 3 THEN '3' -- categorize numeric values
WHEN DMDHHSIZ = 4 THEN '4' -- categorize numeric values
WHEN DMDHHSIZ = 5 THEN '5' -- categorize numeric values
WHEN DMDHHSIZ = 6 THEN '6' -- categorize numeric values
WHEN DMDHHSIZ = 7 THEN '7 or more people in the Household' -- categorize numeric values
WHEN DMDHHSIZ IS NULL THEN NULL 
ELSE DMDHHSIZ 
 END as total_number_of_people_in_the_household, 

CASE
            WHEN DMDFMSIZ = 1 THEN '1' -- categorize numeric values
WHEN DMDFMSIZ = 2 THEN '2' -- categorize numeric values
WHEN DMDFMSIZ = 3 THEN '3' -- categorize numeric values
WHEN DMDFMSIZ = 4 THEN '4' -- categorize numeric values
WHEN DMDFMSIZ = 5 THEN '5' -- categorize numeric values
WHEN DMDFMSIZ = 6 THEN '6' -- categorize numeric values
WHEN DMDFMSIZ = 7 THEN '7 or more people in the Family' -- categorize numeric values
WHEN DMDFMSIZ IS NULL THEN NULL 
ELSE DMDFMSIZ 
 END as total_number_of_people_in_the_family, 

CASE
            WHEN DMDHHSZA = 0 THEN '0' -- categorize numeric values
WHEN DMDHHSZA = 1 THEN '1' -- categorize numeric values
WHEN DMDHHSZA = 2 THEN '2' -- categorize numeric values
WHEN DMDHHSZA = 3 THEN '3 or more' -- categorize numeric values
WHEN DMDHHSZA IS NULL THEN NULL 
ELSE DMDHHSZA 
 END as of_children_5_years_or_younger_in_hh, 

CASE
            WHEN DMDHHSZB = 0 THEN '0' -- categorize numeric values
WHEN DMDHHSZB = 1 THEN '1' -- categorize numeric values
WHEN DMDHHSZB = 2 THEN '2' -- categorize numeric values
WHEN DMDHHSZB = 3 THEN '3 or more' -- categorize numeric values
WHEN DMDHHSZB IS NULL THEN NULL 
ELSE DMDHHSZB 
 END as of_children_6_17_years_old_in_hh, 

CASE
            WHEN DMDHHSZE = 0 THEN '0' -- categorize numeric values
WHEN DMDHHSZE = 1 THEN '1' -- categorize numeric values
WHEN DMDHHSZE = 2 THEN '2' -- categorize numeric values
WHEN DMDHHSZE = 3 THEN '3 or more' -- categorize numeric values
WHEN DMDHHSZE IS NULL THEN NULL 
ELSE DMDHHSZE 
 END as of_adults_60_years_or_older_in_hh, 

CASE
            WHEN DMDHRGND = 1 THEN 'Male' -- categorize numeric values
WHEN DMDHRGND = 2 THEN 'Female' -- categorize numeric values
WHEN DMDHRGND IS NULL THEN NULL 
ELSE DMDHRGND 
 END as hh_ref_person_s_gender, 

CASE
            WHEN DMDHRAGZ = '1' THEN '<20 years' -- categorize string values 
WHEN DMDHRAGZ = '2' THEN '20-39 years' -- categorize string values 
WHEN DMDHRAGZ = '3' THEN '40-59 years' -- categorize string values 
WHEN DMDHRAGZ = '4' THEN '60+ years' -- categorize string values 
WHEN DMDHRAGZ IS NULL THEN NULL 
ELSE DMDHRAGZ 
 END as hh_ref_person_s_age_in_years, 

CASE
            WHEN DMDHREDZ = '1' THEN 'Less than high school degree' -- categorize string values 
WHEN DMDHREDZ = '2' THEN 'High school grad/GED or some college/AA degree' -- categorize string values 
WHEN DMDHREDZ = '3' THEN 'College graduate or above' -- categorize string values 
WHEN DMDHREDZ = '7' THEN 'Refused' -- categorize string values 
WHEN DMDHREDZ = '9' THEN 'Dont Know' -- categorize string values 
WHEN DMDHREDZ IS NULL THEN NULL 
ELSE DMDHREDZ 
 END as hh_ref_person_s_education_level, 

CASE
            WHEN DMDHRMAZ = '1' THEN 'Married/Living with partner' -- categorize string values 
WHEN DMDHRMAZ = '2' THEN 'Widowed/Divorced/Separated' -- categorize string values 
WHEN DMDHRMAZ = '3' THEN 'Never Married' -- categorize string values 
WHEN DMDHRMAZ = '77' THEN 'Refused' -- categorize string values 
WHEN DMDHRMAZ = '99' THEN 'Dont Know' -- categorize string values 
WHEN DMDHRMAZ IS NULL THEN NULL 
ELSE DMDHRMAZ 
 END as hh_ref_person_s_marital_status, 

CASE
            WHEN DMDHSEDZ = '1' THEN 'Less than high school degree' -- categorize string values 
WHEN DMDHSEDZ = '2' THEN 'High school grad/GED or some college/AA degree' -- categorize string values 
WHEN DMDHSEDZ = '3' THEN 'College graduate or above' -- categorize string values 
WHEN DMDHSEDZ = '7' THEN 'Refused' -- categorize string values 
WHEN DMDHSEDZ = '9' THEN 'Dont Know' -- categorize string values 
WHEN DMDHSEDZ IS NULL THEN NULL 
ELSE DMDHSEDZ 
 END as hh_ref_person_s_spouse_s_education_level, 

CASE
            WHEN WTINT2YR IS NULL THEN NULL 
ELSE WTINT2YR 
 END as full_sample_2_year_interview_weight, 

CASE
            WHEN WTMEC2YR IS NULL THEN NULL 
ELSE WTMEC2YR 
 END as full_sample_2_year_mec_exam_weight, 

CASE
            WHEN SDMVPSU IS NULL THEN NULL 
ELSE SDMVPSU 
 END as masked_variance_pseudo_psu, 

CASE
            WHEN SDMVSTRA IS NULL THEN NULL 
ELSE SDMVSTRA 
 END as masked_variance_pseudo_stratum, 

CASE
            WHEN INDHHIN2 = 1 THEN '$ 0 to $ 4,999' -- categorize numeric values
WHEN INDHHIN2 = 2 THEN '$ 5,000 to $ 9,999' -- categorize numeric values
WHEN INDHHIN2 = 3 THEN '$10,000 to $14,999' -- categorize numeric values
WHEN INDHHIN2 = 4 THEN '$15,000 to $19,999' -- categorize numeric values
WHEN INDHHIN2 = 5 THEN '$20,000 to $24,999' -- categorize numeric values
WHEN INDHHIN2 = 6 THEN '$25,000 to $34,999' -- categorize numeric values
WHEN INDHHIN2 = 7 THEN '$35,000 to $44,999' -- categorize numeric values
WHEN INDHHIN2 = 8 THEN '$45,000 to $54,999' -- categorize numeric values
WHEN INDHHIN2 = 9 THEN '$55,000 to $64,999' -- categorize numeric values
WHEN INDHHIN2 = 10 THEN '$65,000 to $74,999' -- categorize numeric values
WHEN INDHHIN2 = 12 THEN '$20,000 and Over' -- categorize numeric values
WHEN INDHHIN2 = 13 THEN 'Under $20,000' -- categorize numeric values
WHEN INDHHIN2 = 14 THEN '$75,000 to $99,999' -- categorize numeric values
WHEN INDHHIN2 = 15 THEN '$100,000 and Over' -- categorize numeric values
WHEN INDHHIN2 = 77 THEN 'Refused' -- categorize numeric values
WHEN INDHHIN2 = 99 THEN 'Dont know' -- categorize numeric values
WHEN INDHHIN2 IS NULL THEN NULL 
ELSE INDHHIN2 
 END as annual_household_income, 

CASE
            WHEN INDFMIN2 = 1 THEN '$ 0 to $ 4,999' -- categorize numeric values
WHEN INDFMIN2 = 2 THEN '$ 5,000 to $ 9,999' -- categorize numeric values
WHEN INDFMIN2 = 3 THEN '$10,000 to $14,999' -- categorize numeric values
WHEN INDFMIN2 = 4 THEN '$15,000 to $19,999' -- categorize numeric values
WHEN INDFMIN2 = 5 THEN '$20,000 to $24,999' -- categorize numeric values
WHEN INDFMIN2 = 6 THEN '$25,000 to $34,999' -- categorize numeric values
WHEN INDFMIN2 = 7 THEN '$35,000 to $44,999' -- categorize numeric values
WHEN INDFMIN2 = 8 THEN '$45,000 to $54,999' -- categorize numeric values
WHEN INDFMIN2 = 9 THEN '$55,000 to $64,999' -- categorize numeric values
WHEN INDFMIN2 = 10 THEN '$65,000 to $74,999' -- categorize numeric values
WHEN INDFMIN2 = 12 THEN '$20,000 and Over' -- categorize numeric values
WHEN INDFMIN2 = 13 THEN 'Under $20,000' -- categorize numeric values
WHEN INDFMIN2 = 14 THEN '$75,000 to $99,999' -- categorize numeric values
WHEN INDFMIN2 = 15 THEN '$100,000 and Over' -- categorize numeric values
WHEN INDFMIN2 = 77 THEN 'Refused' -- categorize numeric values
WHEN INDFMIN2 = 99 THEN 'Dont know' -- categorize numeric values
WHEN INDFMIN2 IS NULL THEN NULL 
ELSE INDFMIN2 
 END as annual_family_income, 

CASE
            WHEN INDFMPIR IS NULL THEN NULL 
ELSE INDFMPIR 
 END as ratio_of_family_income_to_poverty, 

 FROM {{ ref('stg_demographic_variables_and_sample_weights_demographics') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/DEMO_J.htm
        