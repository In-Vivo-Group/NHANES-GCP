SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN SAFE_CAST(SDDSRVYR AS FLOAT64) = SAFE_CAST(10 AS FLOAT64) THEN 'NHANES 2017-2018 public release' -- categorize numeric values
WHEN SDDSRVYR IS NULL THEN NULL 
ELSE SAFE_CAST(SDDSRVYR AS STRING) 
 END as data_release_cycle, 

CASE
            WHEN SAFE_CAST(RIDSTATR AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Interviewed only' -- categorize numeric values
WHEN SAFE_CAST(RIDSTATR AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Both interviewed and MEC examined' -- categorize numeric values
WHEN RIDSTATR IS NULL THEN NULL 
ELSE SAFE_CAST(RIDSTATR AS STRING) 
 END as interview_examination_status, 

CASE
            WHEN SAFE_CAST(RIAGENDR AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Male' -- categorize numeric values
WHEN SAFE_CAST(RIAGENDR AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Female' -- categorize numeric values
WHEN RIAGENDR IS NULL THEN NULL 
ELSE SAFE_CAST(RIAGENDR AS STRING) 
 END as gender, 

CASE
            WHEN RIDAGEYR IS NULL THEN NULL 
ELSE SAFE_CAST(RIDAGEYR AS STRING) 
 END as age_in_years_at_screening, 

CASE
            WHEN RIDAGEMN IS NULL THEN NULL 
ELSE SAFE_CAST(RIDAGEMN AS STRING) 
 END as age_in_months_at_screening_0_to_24_mos, 

CASE
            WHEN SAFE_CAST(RIDRETH1 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Mexican American' -- categorize numeric values
WHEN SAFE_CAST(RIDRETH1 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Other Hispanic' -- categorize numeric values
WHEN SAFE_CAST(RIDRETH1 AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Non-Hispanic White' -- categorize numeric values
WHEN SAFE_CAST(RIDRETH1 AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN 'Non-Hispanic Black' -- categorize numeric values
WHEN SAFE_CAST(RIDRETH1 AS FLOAT64) = SAFE_CAST(5 AS FLOAT64) THEN 'Other Race - Including Multi-Racial' -- categorize numeric values
WHEN RIDRETH1 IS NULL THEN NULL 
ELSE SAFE_CAST(RIDRETH1 AS STRING) 
 END as race_hispanic_origin, 

CASE
            WHEN SAFE_CAST(RIDRETH3 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Mexican American' -- categorize numeric values
WHEN SAFE_CAST(RIDRETH3 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Other Hispanic' -- categorize numeric values
WHEN SAFE_CAST(RIDRETH3 AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Non-Hispanic White' -- categorize numeric values
WHEN SAFE_CAST(RIDRETH3 AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN 'Non-Hispanic Black' -- categorize numeric values
WHEN SAFE_CAST(RIDRETH3 AS FLOAT64) = SAFE_CAST(6 AS FLOAT64) THEN 'Non-Hispanic Asian' -- categorize numeric values
WHEN SAFE_CAST(RIDRETH3 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Other Race - Including Multi-Racial' -- categorize numeric values
WHEN RIDRETH3 IS NULL THEN NULL 
ELSE SAFE_CAST(RIDRETH3 AS STRING) 
 END as race_hispanic_origin_w_nh_asian, 

CASE
            WHEN SAFE_CAST(RIDEXMON AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'November 1 through April 30' -- categorize numeric values
WHEN SAFE_CAST(RIDEXMON AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'May 1 through October 31' -- categorize numeric values
WHEN RIDEXMON IS NULL THEN NULL 
ELSE SAFE_CAST(RIDEXMON AS STRING) 
 END as six_month_time_period, 

CASE
            WHEN RIDEXAGM IS NULL THEN NULL 
ELSE SAFE_CAST(RIDEXAGM AS STRING) 
 END as age_in_months_at_exam_0_to_19_years, 

CASE
            WHEN SAFE_CAST(DMQMILIZ AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DMQMILIZ AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(DMQMILIZ AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DMQMILIZ AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont Know' -- categorize numeric values
WHEN DMQMILIZ IS NULL THEN NULL 
ELSE SAFE_CAST(DMQMILIZ AS STRING) 
 END as served_active_duty_in_us_armed_forces, 

CASE
            WHEN SAFE_CAST(DMQADFC AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DMQADFC AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(DMQADFC AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DMQADFC AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont Know' -- categorize numeric values
WHEN DMQADFC IS NULL THEN NULL 
ELSE SAFE_CAST(DMQADFC AS STRING) 
 END as served_in_a_foreign_country, 

CASE
            WHEN SAFE_CAST(DMDBORN4 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Born in 50 US states or Washington, DC' -- categorize numeric values
WHEN SAFE_CAST(DMDBORN4 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Others' -- categorize numeric values
WHEN SAFE_CAST(DMDBORN4 AS FLOAT64) = SAFE_CAST(77 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DMDBORN4 AS FLOAT64) = SAFE_CAST(99 AS FLOAT64) THEN 'Dont Know' -- categorize numeric values
WHEN DMDBORN4 IS NULL THEN NULL 
ELSE SAFE_CAST(DMDBORN4 AS STRING) 
 END as country_of_birth, 

CASE
            WHEN SAFE_CAST(DMDCITZN AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Citizen by birth or naturalization' -- categorize numeric values
WHEN SAFE_CAST(DMDCITZN AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Not a citizen of the US' -- categorize numeric values
WHEN SAFE_CAST(DMDCITZN AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DMDCITZN AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont Know' -- categorize numeric values
WHEN DMDCITZN IS NULL THEN NULL 
ELSE SAFE_CAST(DMDCITZN AS STRING) 
 END as citizenship_status, 

CASE
            WHEN SAFE_CAST(DMDYRSUS AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Less than 1 year' -- categorize numeric values
WHEN SAFE_CAST(DMDYRSUS AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN '1 year or more, but less than 5 years' -- categorize numeric values
WHEN SAFE_CAST(DMDYRSUS AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN '5 year or more, but less than 10 years' -- categorize numeric values
WHEN SAFE_CAST(DMDYRSUS AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN '10 year or more, but less than 15 years' -- categorize numeric values
WHEN SAFE_CAST(DMDYRSUS AS FLOAT64) = SAFE_CAST(5 AS FLOAT64) THEN '15 year or more, but less than 20 years' -- categorize numeric values
WHEN SAFE_CAST(DMDYRSUS AS FLOAT64) = SAFE_CAST(6 AS FLOAT64) THEN '20 year or more, but less than 30 years' -- categorize numeric values
WHEN SAFE_CAST(DMDYRSUS AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN '30 year or more, but less than 40 years' -- categorize numeric values
WHEN SAFE_CAST(DMDYRSUS AS FLOAT64) = SAFE_CAST(8 AS FLOAT64) THEN '40 year or more, but less than 50 years' -- categorize numeric values
WHEN SAFE_CAST(DMDYRSUS AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN '50 years or more' -- categorize numeric values
WHEN SAFE_CAST(DMDYRSUS AS FLOAT64) = SAFE_CAST(77 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DMDYRSUS AS FLOAT64) = SAFE_CAST(99 AS FLOAT64) THEN 'Dont Know' -- categorize numeric values
WHEN DMDYRSUS IS NULL THEN NULL 
ELSE SAFE_CAST(DMDYRSUS AS STRING) 
 END as length_of_time_in_us, 

CASE
            WHEN SAFE_CAST(DMDEDUC3 AS FLOAT64) = SAFE_CAST(0 AS FLOAT64) THEN 'Never attended / kindergarten only' -- categorize numeric values
WHEN SAFE_CAST(DMDEDUC3 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN '1st grade' -- categorize numeric values
WHEN SAFE_CAST(DMDEDUC3 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN '2nd grade' -- categorize numeric values
WHEN SAFE_CAST(DMDEDUC3 AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN '3rd grade' -- categorize numeric values
WHEN SAFE_CAST(DMDEDUC3 AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN '4th grade' -- categorize numeric values
WHEN SAFE_CAST(DMDEDUC3 AS FLOAT64) = SAFE_CAST(5 AS FLOAT64) THEN '5th grade' -- categorize numeric values
WHEN SAFE_CAST(DMDEDUC3 AS FLOAT64) = SAFE_CAST(6 AS FLOAT64) THEN '6th grade' -- categorize numeric values
WHEN SAFE_CAST(DMDEDUC3 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN '7th grade' -- categorize numeric values
WHEN SAFE_CAST(DMDEDUC3 AS FLOAT64) = SAFE_CAST(8 AS FLOAT64) THEN '8th grade' -- categorize numeric values
WHEN SAFE_CAST(DMDEDUC3 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN '9th grade' -- categorize numeric values
WHEN SAFE_CAST(DMDEDUC3 AS FLOAT64) = SAFE_CAST(10 AS FLOAT64) THEN '10th grade' -- categorize numeric values
WHEN SAFE_CAST(DMDEDUC3 AS FLOAT64) = SAFE_CAST(11 AS FLOAT64) THEN '11th grade' -- categorize numeric values
WHEN SAFE_CAST(DMDEDUC3 AS FLOAT64) = SAFE_CAST(12 AS FLOAT64) THEN '12th grade, no diploma' -- categorize numeric values
WHEN SAFE_CAST(DMDEDUC3 AS FLOAT64) = SAFE_CAST(13 AS FLOAT64) THEN 'High school graduate' -- categorize numeric values
WHEN SAFE_CAST(DMDEDUC3 AS FLOAT64) = SAFE_CAST(14 AS FLOAT64) THEN 'GED or equivalent' -- categorize numeric values
WHEN SAFE_CAST(DMDEDUC3 AS FLOAT64) = SAFE_CAST(15 AS FLOAT64) THEN 'More than high school' -- categorize numeric values
WHEN SAFE_CAST(DMDEDUC3 AS FLOAT64) = SAFE_CAST(55 AS FLOAT64) THEN 'Less than 5th grade' -- categorize numeric values
WHEN SAFE_CAST(DMDEDUC3 AS FLOAT64) = SAFE_CAST(66 AS FLOAT64) THEN 'Less than 9th grade' -- categorize numeric values
WHEN SAFE_CAST(DMDEDUC3 AS FLOAT64) = SAFE_CAST(77 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DMDEDUC3 AS FLOAT64) = SAFE_CAST(99 AS FLOAT64) THEN 'Dont Know' -- categorize numeric values
WHEN DMDEDUC3 IS NULL THEN NULL 
ELSE SAFE_CAST(DMDEDUC3 AS STRING) 
 END as education_level_children_youth_6_19, 

CASE
            WHEN SAFE_CAST(DMDEDUC2 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Less than 9th grade' -- categorize numeric values
WHEN SAFE_CAST(DMDEDUC2 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN '9-11th grade (Includes 12th grade with no diploma)' -- categorize numeric values
WHEN SAFE_CAST(DMDEDUC2 AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'High school graduate/GED or equivalent' -- categorize numeric values
WHEN SAFE_CAST(DMDEDUC2 AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN 'Some college or AA degree' -- categorize numeric values
WHEN SAFE_CAST(DMDEDUC2 AS FLOAT64) = SAFE_CAST(5 AS FLOAT64) THEN 'College graduate or above' -- categorize numeric values
WHEN SAFE_CAST(DMDEDUC2 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DMDEDUC2 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont Know' -- categorize numeric values
WHEN DMDEDUC2 IS NULL THEN NULL 
ELSE SAFE_CAST(DMDEDUC2 AS STRING) 
 END as education_level_adults_20, 

CASE
            WHEN SAFE_CAST(DMDMARTL AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Married' -- categorize numeric values
WHEN SAFE_CAST(DMDMARTL AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Widowed' -- categorize numeric values
WHEN SAFE_CAST(DMDMARTL AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Divorced' -- categorize numeric values
WHEN SAFE_CAST(DMDMARTL AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN 'Separated' -- categorize numeric values
WHEN SAFE_CAST(DMDMARTL AS FLOAT64) = SAFE_CAST(5 AS FLOAT64) THEN 'Never married' -- categorize numeric values
WHEN SAFE_CAST(DMDMARTL AS FLOAT64) = SAFE_CAST(6 AS FLOAT64) THEN 'Living with partner' -- categorize numeric values
WHEN SAFE_CAST(DMDMARTL AS FLOAT64) = SAFE_CAST(77 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DMDMARTL AS FLOAT64) = SAFE_CAST(99 AS FLOAT64) THEN 'Dont Know' -- categorize numeric values
WHEN DMDMARTL IS NULL THEN NULL 
ELSE SAFE_CAST(DMDMARTL AS STRING) 
 END as marital_status, 

CASE
            WHEN SAFE_CAST(RIDEXPRG AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes, positive lab pregnancy test or self-reported pregnant at exam' -- categorize numeric values
WHEN SAFE_CAST(RIDEXPRG AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'The participant was not pregnant at exam' -- categorize numeric values
WHEN SAFE_CAST(RIDEXPRG AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Cannot ascertain if the participant is pregnant at exam' -- categorize numeric values
WHEN RIDEXPRG IS NULL THEN NULL 
ELSE SAFE_CAST(RIDEXPRG AS STRING) 
 END as pregnancy_status_at_exam, 

CASE
            WHEN SAFE_CAST(SIALANG AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'English' -- categorize numeric values
WHEN SAFE_CAST(SIALANG AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Spanish' -- categorize numeric values
WHEN SIALANG IS NULL THEN NULL 
ELSE SAFE_CAST(SIALANG AS STRING) 
 END as language_of_sp_interview, 

CASE
            WHEN SAFE_CAST(SIAPROXY AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(SIAPROXY AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN SIAPROXY IS NULL THEN NULL 
ELSE SAFE_CAST(SIAPROXY AS STRING) 
 END as proxy_used_in_sp_interview, 

CASE
            WHEN SAFE_CAST(SIAINTRP AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(SIAINTRP AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN SIAINTRP IS NULL THEN NULL 
ELSE SAFE_CAST(SIAINTRP AS STRING) 
 END as interpreter_used_in_sp_interview, 

CASE
            WHEN SAFE_CAST(FIALANG AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'English' -- categorize numeric values
WHEN SAFE_CAST(FIALANG AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Spanish' -- categorize numeric values
WHEN FIALANG IS NULL THEN NULL 
ELSE SAFE_CAST(FIALANG AS STRING) 
 END as language_of_family_interview, 

CASE
            WHEN SAFE_CAST(FIAPROXY AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(FIAPROXY AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN FIAPROXY IS NULL THEN NULL 
ELSE SAFE_CAST(FIAPROXY AS STRING) 
 END as proxy_used_in_family_interview, 

CASE
            WHEN SAFE_CAST(FIAINTRP AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(FIAINTRP AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN FIAINTRP IS NULL THEN NULL 
ELSE SAFE_CAST(FIAINTRP AS STRING) 
 END as interpreter_used_in_family_interview, 

CASE
            WHEN SAFE_CAST(MIALANG AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'English' -- categorize numeric values
WHEN SAFE_CAST(MIALANG AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Spanish' -- categorize numeric values
WHEN MIALANG IS NULL THEN NULL 
ELSE SAFE_CAST(MIALANG AS STRING) 
 END as language_of_mec_interview, 

CASE
            WHEN SAFE_CAST(MIAPROXY AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(MIAPROXY AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN MIAPROXY IS NULL THEN NULL 
ELSE SAFE_CAST(MIAPROXY AS STRING) 
 END as proxy_used_in_mec_interview, 

CASE
            WHEN SAFE_CAST(MIAINTRP AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(MIAINTRP AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN MIAINTRP IS NULL THEN NULL 
ELSE SAFE_CAST(MIAINTRP AS STRING) 
 END as interpreter_used_in_mec_interview, 

CASE
            WHEN SAFE_CAST(AIALANGA AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'English' -- categorize numeric values
WHEN SAFE_CAST(AIALANGA AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Spanish' -- categorize numeric values
WHEN SAFE_CAST(AIALANGA AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Asian languages' -- categorize numeric values
WHEN AIALANGA IS NULL THEN NULL 
ELSE SAFE_CAST(AIALANGA AS STRING) 
 END as language_of_acasi_interview, 

CASE
            WHEN SAFE_CAST(DMDHHSIZ AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN '1' -- categorize numeric values
WHEN SAFE_CAST(DMDHHSIZ AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN '2' -- categorize numeric values
WHEN SAFE_CAST(DMDHHSIZ AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN '3' -- categorize numeric values
WHEN SAFE_CAST(DMDHHSIZ AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN '4' -- categorize numeric values
WHEN SAFE_CAST(DMDHHSIZ AS FLOAT64) = SAFE_CAST(5 AS FLOAT64) THEN '5' -- categorize numeric values
WHEN SAFE_CAST(DMDHHSIZ AS FLOAT64) = SAFE_CAST(6 AS FLOAT64) THEN '6' -- categorize numeric values
WHEN SAFE_CAST(DMDHHSIZ AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN '7 or more people in the Household' -- categorize numeric values
WHEN DMDHHSIZ IS NULL THEN NULL 
ELSE SAFE_CAST(DMDHHSIZ AS STRING) 
 END as total_number_of_people_in_the_household, 

CASE
            WHEN SAFE_CAST(DMDFMSIZ AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN '1' -- categorize numeric values
WHEN SAFE_CAST(DMDFMSIZ AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN '2' -- categorize numeric values
WHEN SAFE_CAST(DMDFMSIZ AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN '3' -- categorize numeric values
WHEN SAFE_CAST(DMDFMSIZ AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN '4' -- categorize numeric values
WHEN SAFE_CAST(DMDFMSIZ AS FLOAT64) = SAFE_CAST(5 AS FLOAT64) THEN '5' -- categorize numeric values
WHEN SAFE_CAST(DMDFMSIZ AS FLOAT64) = SAFE_CAST(6 AS FLOAT64) THEN '6' -- categorize numeric values
WHEN SAFE_CAST(DMDFMSIZ AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN '7 or more people in the Family' -- categorize numeric values
WHEN DMDFMSIZ IS NULL THEN NULL 
ELSE SAFE_CAST(DMDFMSIZ AS STRING) 
 END as total_number_of_people_in_the_family, 

CASE
            WHEN SAFE_CAST(DMDHHSZA AS FLOAT64) = SAFE_CAST(0 AS FLOAT64) THEN '0' -- categorize numeric values
WHEN SAFE_CAST(DMDHHSZA AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN '1' -- categorize numeric values
WHEN SAFE_CAST(DMDHHSZA AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN '2' -- categorize numeric values
WHEN SAFE_CAST(DMDHHSZA AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN '3 or more' -- categorize numeric values
WHEN DMDHHSZA IS NULL THEN NULL 
ELSE SAFE_CAST(DMDHHSZA AS STRING) 
 END as of_children_5_years_or_younger_in_hh, 

CASE
            WHEN SAFE_CAST(DMDHHSZB AS FLOAT64) = SAFE_CAST(0 AS FLOAT64) THEN '0' -- categorize numeric values
WHEN SAFE_CAST(DMDHHSZB AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN '1' -- categorize numeric values
WHEN SAFE_CAST(DMDHHSZB AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN '2' -- categorize numeric values
WHEN SAFE_CAST(DMDHHSZB AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN '3 or more' -- categorize numeric values
WHEN DMDHHSZB IS NULL THEN NULL 
ELSE SAFE_CAST(DMDHHSZB AS STRING) 
 END as of_children_6_17_years_old_in_hh, 

CASE
            WHEN SAFE_CAST(DMDHHSZE AS FLOAT64) = SAFE_CAST(0 AS FLOAT64) THEN '0' -- categorize numeric values
WHEN SAFE_CAST(DMDHHSZE AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN '1' -- categorize numeric values
WHEN SAFE_CAST(DMDHHSZE AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN '2' -- categorize numeric values
WHEN SAFE_CAST(DMDHHSZE AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN '3 or more' -- categorize numeric values
WHEN DMDHHSZE IS NULL THEN NULL 
ELSE SAFE_CAST(DMDHHSZE AS STRING) 
 END as of_adults_60_years_or_older_in_hh, 

CASE
            WHEN SAFE_CAST(DMDHRGND AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Male' -- categorize numeric values
WHEN SAFE_CAST(DMDHRGND AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Female' -- categorize numeric values
WHEN DMDHRGND IS NULL THEN NULL 
ELSE SAFE_CAST(DMDHRGND AS STRING) 
 END as hh_ref_person_s_gender, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DMDHRAGZ,'.0','') AS INT64) AS STRING) = '1' THEN '<20 years' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DMDHRAGZ,'.0','') AS INT64) AS STRING) = '2' THEN '20-39 years' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DMDHRAGZ,'.0','') AS INT64) AS STRING) = '3' THEN '40-59 years' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DMDHRAGZ,'.0','') AS INT64) AS STRING) = '4' THEN '60+ years' -- categorize string values 
WHEN DMDHRAGZ IS NULL THEN NULL 
ELSE SAFE_CAST(DMDHRAGZ AS STRING) 
 END as hh_ref_person_s_age_in_years, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DMDHREDZ,'.0','') AS INT64) AS STRING) = '1' THEN 'Less than high school degree' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DMDHREDZ,'.0','') AS INT64) AS STRING) = '2' THEN 'High school grad/GED or some college/AA degree' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DMDHREDZ,'.0','') AS INT64) AS STRING) = '3' THEN 'College graduate or above' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DMDHREDZ,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DMDHREDZ,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont Know' -- categorize string values 
WHEN DMDHREDZ IS NULL THEN NULL 
ELSE SAFE_CAST(DMDHREDZ AS STRING) 
 END as hh_ref_person_s_education_level, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DMDHRMAZ,'.0','') AS INT64) AS STRING) = '1' THEN 'Married/Living with partner' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DMDHRMAZ,'.0','') AS INT64) AS STRING) = '2' THEN 'Widowed/Divorced/Separated' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DMDHRMAZ,'.0','') AS INT64) AS STRING) = '3' THEN 'Never Married' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DMDHRMAZ,'.0','') AS INT64) AS STRING) = '77' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DMDHRMAZ,'.0','') AS INT64) AS STRING) = '99' THEN 'Dont Know' -- categorize string values 
WHEN DMDHRMAZ IS NULL THEN NULL 
ELSE SAFE_CAST(DMDHRMAZ AS STRING) 
 END as hh_ref_person_s_marital_status, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DMDHSEDZ,'.0','') AS INT64) AS STRING) = '1' THEN 'Less than high school degree' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DMDHSEDZ,'.0','') AS INT64) AS STRING) = '2' THEN 'High school grad/GED or some college/AA degree' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DMDHSEDZ,'.0','') AS INT64) AS STRING) = '3' THEN 'College graduate or above' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DMDHSEDZ,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DMDHSEDZ,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont Know' -- categorize string values 
WHEN DMDHSEDZ IS NULL THEN NULL 
ELSE SAFE_CAST(DMDHSEDZ AS STRING) 
 END as hh_ref_person_s_spouse_s_education_level, 

CASE
            WHEN WTINT2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTINT2YR AS STRING) 
 END as full_sample_2_year_interview_weight, 

CASE
            WHEN WTMEC2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTMEC2YR AS STRING) 
 END as full_sample_2_year_mec_exam_weight, 

CASE
            WHEN SDMVPSU IS NULL THEN NULL 
ELSE SAFE_CAST(SDMVPSU AS STRING) 
 END as masked_variance_pseudo_psu, 

CASE
            WHEN SDMVSTRA IS NULL THEN NULL 
ELSE SAFE_CAST(SDMVSTRA AS STRING) 
 END as masked_variance_pseudo_stratum, 

CASE
            WHEN SAFE_CAST(INDHHIN2 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN '$ 0 to $ 4,999' -- categorize numeric values
WHEN SAFE_CAST(INDHHIN2 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN '$ 5,000 to $ 9,999' -- categorize numeric values
WHEN SAFE_CAST(INDHHIN2 AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN '$10,000 to $14,999' -- categorize numeric values
WHEN SAFE_CAST(INDHHIN2 AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN '$15,000 to $19,999' -- categorize numeric values
WHEN SAFE_CAST(INDHHIN2 AS FLOAT64) = SAFE_CAST(5 AS FLOAT64) THEN '$20,000 to $24,999' -- categorize numeric values
WHEN SAFE_CAST(INDHHIN2 AS FLOAT64) = SAFE_CAST(6 AS FLOAT64) THEN '$25,000 to $34,999' -- categorize numeric values
WHEN SAFE_CAST(INDHHIN2 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN '$35,000 to $44,999' -- categorize numeric values
WHEN SAFE_CAST(INDHHIN2 AS FLOAT64) = SAFE_CAST(8 AS FLOAT64) THEN '$45,000 to $54,999' -- categorize numeric values
WHEN SAFE_CAST(INDHHIN2 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN '$55,000 to $64,999' -- categorize numeric values
WHEN SAFE_CAST(INDHHIN2 AS FLOAT64) = SAFE_CAST(10 AS FLOAT64) THEN '$65,000 to $74,999' -- categorize numeric values
WHEN SAFE_CAST(INDHHIN2 AS FLOAT64) = SAFE_CAST(12 AS FLOAT64) THEN '$20,000 and Over' -- categorize numeric values
WHEN SAFE_CAST(INDHHIN2 AS FLOAT64) = SAFE_CAST(13 AS FLOAT64) THEN 'Under $20,000' -- categorize numeric values
WHEN SAFE_CAST(INDHHIN2 AS FLOAT64) = SAFE_CAST(14 AS FLOAT64) THEN '$75,000 to $99,999' -- categorize numeric values
WHEN SAFE_CAST(INDHHIN2 AS FLOAT64) = SAFE_CAST(15 AS FLOAT64) THEN '$100,000 and Over' -- categorize numeric values
WHEN SAFE_CAST(INDHHIN2 AS FLOAT64) = SAFE_CAST(77 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(INDHHIN2 AS FLOAT64) = SAFE_CAST(99 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN INDHHIN2 IS NULL THEN NULL 
ELSE SAFE_CAST(INDHHIN2 AS STRING) 
 END as annual_household_income, 

CASE
            WHEN SAFE_CAST(INDFMIN2 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN '$ 0 to $ 4,999' -- categorize numeric values
WHEN SAFE_CAST(INDFMIN2 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN '$ 5,000 to $ 9,999' -- categorize numeric values
WHEN SAFE_CAST(INDFMIN2 AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN '$10,000 to $14,999' -- categorize numeric values
WHEN SAFE_CAST(INDFMIN2 AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN '$15,000 to $19,999' -- categorize numeric values
WHEN SAFE_CAST(INDFMIN2 AS FLOAT64) = SAFE_CAST(5 AS FLOAT64) THEN '$20,000 to $24,999' -- categorize numeric values
WHEN SAFE_CAST(INDFMIN2 AS FLOAT64) = SAFE_CAST(6 AS FLOAT64) THEN '$25,000 to $34,999' -- categorize numeric values
WHEN SAFE_CAST(INDFMIN2 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN '$35,000 to $44,999' -- categorize numeric values
WHEN SAFE_CAST(INDFMIN2 AS FLOAT64) = SAFE_CAST(8 AS FLOAT64) THEN '$45,000 to $54,999' -- categorize numeric values
WHEN SAFE_CAST(INDFMIN2 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN '$55,000 to $64,999' -- categorize numeric values
WHEN SAFE_CAST(INDFMIN2 AS FLOAT64) = SAFE_CAST(10 AS FLOAT64) THEN '$65,000 to $74,999' -- categorize numeric values
WHEN SAFE_CAST(INDFMIN2 AS FLOAT64) = SAFE_CAST(12 AS FLOAT64) THEN '$20,000 and Over' -- categorize numeric values
WHEN SAFE_CAST(INDFMIN2 AS FLOAT64) = SAFE_CAST(13 AS FLOAT64) THEN 'Under $20,000' -- categorize numeric values
WHEN SAFE_CAST(INDFMIN2 AS FLOAT64) = SAFE_CAST(14 AS FLOAT64) THEN '$75,000 to $99,999' -- categorize numeric values
WHEN SAFE_CAST(INDFMIN2 AS FLOAT64) = SAFE_CAST(15 AS FLOAT64) THEN '$100,000 and Over' -- categorize numeric values
WHEN SAFE_CAST(INDFMIN2 AS FLOAT64) = SAFE_CAST(77 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(INDFMIN2 AS FLOAT64) = SAFE_CAST(99 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN INDFMIN2 IS NULL THEN NULL 
ELSE SAFE_CAST(INDFMIN2 AS STRING) 
 END as annual_family_income, 

CASE
            WHEN INDFMPIR IS NULL THEN NULL 
ELSE SAFE_CAST(INDFMPIR AS STRING) 
 END as ratio_of_family_income_to_poverty, 

 FROM {{ ref('stg_demographic_variables_and_sample_weights_demographics') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/DEMO_J.htm
        