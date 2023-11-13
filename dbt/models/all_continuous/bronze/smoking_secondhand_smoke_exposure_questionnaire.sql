SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN SMQ856 = 1 THEN 'Yes' -- categorize numeric values
WHEN SMQ856 = 2 THEN 'No' -- categorize numeric values
WHEN SMQ856 = 7 THEN 'Refused' -- categorize numeric values
WHEN SMQ856 = 9 THEN 'Dont know' -- categorize numeric values
WHEN SMQ856 IS NULL THEN NULL 
ELSE SMQ856 
 END as last_7_d_worked_at_job_not_at_home, 

CASE
            WHEN SMQ858 = 1 THEN 'Yes' -- categorize numeric values
WHEN SMQ858 = 2 THEN 'No' -- categorize numeric values
WHEN SMQ858 = 7 THEN 'Refused' -- categorize numeric values
WHEN SMQ858 = 9 THEN 'Dont know' -- categorize numeric values
WHEN SMQ858 IS NULL THEN NULL 
ELSE SMQ858 
 END as last_7_d_at_job_someone_smoked_indoors, 

CASE
            WHEN SMQ860 = 1 THEN 'Yes' -- categorize numeric values
WHEN SMQ860 = 2 THEN 'No' -- categorize numeric values
WHEN SMQ860 = 7 THEN 'Refused' -- categorize numeric values
WHEN SMQ860 = 9 THEN 'Dont know' -- categorize numeric values
WHEN SMQ860 IS NULL THEN NULL 
ELSE SMQ860 
 END as last_7_d_spent_time_in_a_restaurant, 

CASE
            WHEN SMQ862 = 1 THEN 'Yes' -- categorize numeric values
WHEN SMQ862 = 2 THEN 'No' -- categorize numeric values
WHEN SMQ862 = 7 THEN 'Refused' -- categorize numeric values
WHEN SMQ862 = 9 THEN 'Dont know' -- categorize numeric values
WHEN SMQ862 IS NULL THEN NULL 
ELSE SMQ862 
 END as last_7_d_at_rest_someone_smoked_indoors, 

SMQ864 as SMQ864, -- could not automatically decode name of variable or transformation logic 

CASE
            WHEN SMQ866 = 1 THEN 'Yes' -- categorize numeric values
WHEN SMQ866 = 2 THEN 'No' -- categorize numeric values
WHEN SMQ866 = 7 THEN 'Refused' -- categorize numeric values
WHEN SMQ866 = 9 THEN 'Dont know' -- categorize numeric values
WHEN SMQ866 IS NULL THEN NULL 
ELSE SMQ866 
 END as last_7_d_spent_time_in_a_bar, 

CASE
            WHEN SMQ868 = 1 THEN 'Yes' -- categorize numeric values
WHEN SMQ868 = 2 THEN 'No' -- categorize numeric values
WHEN SMQ868 = 7 THEN 'Refused' -- categorize numeric values
WHEN SMQ868 = 9 THEN 'Dont know' -- categorize numeric values
WHEN SMQ868 IS NULL THEN NULL 
ELSE SMQ868 
 END as last_7_d_in_bar_someone_smoked_indoors, 

CASE
            WHEN SMQ870 = 1 THEN 'Yes' -- categorize numeric values
WHEN SMQ870 = 2 THEN 'No' -- categorize numeric values
WHEN SMQ870 = 7 THEN 'Refused' -- categorize numeric values
WHEN SMQ870 = 9 THEN 'Dont know' -- categorize numeric values
WHEN SMQ870 IS NULL THEN NULL 
ELSE SMQ870 
 END as last_7_d_rode_in_a_car, 

CASE
            WHEN SMQ872 = 1 THEN 'Yes' -- categorize numeric values
WHEN SMQ872 = 2 THEN 'No' -- categorize numeric values
WHEN SMQ872 = 7 THEN 'Refused' -- categorize numeric values
WHEN SMQ872 = 9 THEN 'Dont know' -- categorize numeric values
WHEN SMQ872 IS NULL THEN NULL 
ELSE SMQ872 
 END as last_7_d_someone_smoked_in_car, 

CASE
            WHEN SMQ874 = 1 THEN 'Yes' -- categorize numeric values
WHEN SMQ874 = 2 THEN 'No' -- categorize numeric values
WHEN SMQ874 = 7 THEN 'Refused' -- categorize numeric values
WHEN SMQ874 = 9 THEN 'Dont know' -- categorize numeric values
WHEN SMQ874 IS NULL THEN NULL 
ELSE SMQ874 
 END as last_7_d_spent_time_in_another_home, 

CASE
            WHEN SMQ876 = 1 THEN 'Yes' -- categorize numeric values
WHEN SMQ876 = 2 THEN 'No' -- categorize numeric values
WHEN SMQ876 = 7 THEN 'Refused' -- categorize numeric values
WHEN SMQ876 = 9 THEN 'Dont know' -- categorize numeric values
WHEN SMQ876 IS NULL THEN NULL 
ELSE SMQ876 
 END as last_7_d_in_home_someone_smoked_indoors, 

CASE
            WHEN SMQ878 = 1 THEN 'Yes' -- categorize numeric values
WHEN SMQ878 = 2 THEN 'No' -- categorize numeric values
WHEN SMQ878 = 7 THEN 'Refused' -- categorize numeric values
WHEN SMQ878 = 9 THEN 'Dont know' -- categorize numeric values
WHEN SMQ878 IS NULL THEN NULL 
ELSE SMQ878 
 END as last_7_d_in_other_indoor_area, 

CASE
            WHEN SMQ880 = 1 THEN 'Yes' -- categorize numeric values
WHEN SMQ880 = 2 THEN 'No' -- categorize numeric values
WHEN SMQ880 = 7 THEN 'Refused' -- categorize numeric values
WHEN SMQ880 = 9 THEN 'Dont know' -- categorize numeric values
WHEN SMQ880 IS NULL THEN NULL 
ELSE SMQ880 
 END as last_7_d_in_other_indoor_someone_smoked, 

CASE
            WHEN SMQ940 = '1' THEN 'Yes' -- categorize string values 
WHEN SMQ940 = '2' THEN 'No' -- categorize string values 
WHEN SMQ940 = '7' THEN 'Refused' -- categorize string values 
WHEN SMQ940 = '9' THEN 'Dont know' -- categorize string values 
WHEN SMQ940 IS NULL THEN NULL 
ELSE SMQ940 
 END as last_7_d_someone_used_e_cigs_indoors, 

CASE
            WHEN SMAQUEX = 1 THEN 'MEC CAPI Youth (12 - 17 Yrs.)' -- categorize numeric values
WHEN SMAQUEX = 2 THEN 'Household CAPI Adults (18+ Yrs.)' -- categorize numeric values
WHEN SMAQUEX = 3 THEN 'Household CAPI Youth (0 - 11 Yrs.)' -- categorize numeric values
WHEN SMAQUEX IS NULL THEN NULL 
ELSE SMAQUEX 
 END as questionnaire_mode_flag, 

 FROM {{ ref('stg_smoking_secondhand_smoke_exposure_questionnaire') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/SMQSHS_J.htm
        