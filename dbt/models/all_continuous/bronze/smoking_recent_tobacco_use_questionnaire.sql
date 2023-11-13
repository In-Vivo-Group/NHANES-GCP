SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN SMQ681 = '1' THEN 'Yes' -- categorize string values 
WHEN SMQ681 = '2' THEN 'No' -- categorize string values 
WHEN SMQ681 = '7' THEN 'Refused' -- categorize string values 
WHEN SMQ681 = '9' THEN 'Dont know' -- categorize string values 
WHEN SMQ681 IS NULL THEN NULL 
ELSE SMQ681 
 END as smoked_tobacco_last_5_days, 

CASE
            WHEN SMQ690A = 1 THEN 'Cigarettes' -- categorize numeric values
WHEN SMQ690A = 77 THEN 'Refused' -- categorize numeric values
WHEN SMQ690A = 99 THEN 'Dont know' -- categorize numeric values
WHEN SMQ690A IS NULL THEN NULL 
ELSE SMQ690A 
 END as used_last_5_days_cigarettes, 

CASE
            WHEN SMQ710 IS NULL THEN NULL 
ELSE SMQ710 
 END as days_smoked_cigarettes_last_5_days, 

CASE
            WHEN SMQ720 IS NULL THEN NULL 
ELSE SMQ720 
 END as cigarettes_smoked_per_day, 

CASE
            WHEN SMQ725 = 1 THEN 'Today' -- categorize numeric values
WHEN SMQ725 = 2 THEN 'Yesterday' -- categorize numeric values
WHEN SMQ725 = 3 THEN '3 to 5 days ago' -- categorize numeric values
WHEN SMQ725 = 7 THEN 'Refused' -- categorize numeric values
WHEN SMQ725 = 9 THEN 'Dont know' -- categorize numeric values
WHEN SMQ725 IS NULL THEN NULL 
ELSE SMQ725 
 END as when_did_resp_smoke_last_cigarette, 

CASE
            WHEN SMQ690B = 2 THEN 'Pipes' -- categorize numeric values
WHEN SMQ690B IS NULL THEN NULL 
ELSE SMQ690B 
 END as used_last_5_days_pipes, 

CASE
            WHEN SMQ740 IS NULL THEN NULL 
ELSE SMQ740 
 END as days_smoked_pipe_over_last_5_days, 

CASE
            WHEN SMQ690C = 3 THEN 'Cigars or little cigars or cigarilllos' -- categorize numeric values
WHEN SMQ690C IS NULL THEN NULL 
ELSE SMQ690C 
 END as used_last_5_days_cigars, 

CASE
            WHEN SMQ770 IS NULL THEN NULL 
ELSE SMQ770 
 END as days_smoked_cigars_over_last_5_days, 

CASE
            WHEN SMQ690G = '7' THEN 'Water pipes or Hookahs' -- categorize string values 
WHEN SMQ690G IS NULL THEN NULL 
ELSE SMQ690G 
 END as used_last_5_days_hookah_water_pipes, 

CASE
            WHEN SAFE_CAST(SMQ845 AS FLOAT64) > 5.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN SMQ845 IS NULL THEN NULL 
ELSE SMQ845 
 END as days_smoked_water_pipe_last_5_days, 

CASE
            WHEN SMQ690H = '8' THEN 'E-cigarettes' -- categorize string values 
WHEN SMQ690H IS NULL THEN NULL 
ELSE SMQ690H 
 END as used_last_5_days_e_cigarettes, 

CASE
            WHEN SAFE_CAST(SMQ849 AS FLOAT64) > 5.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN SMQ849 IS NULL THEN NULL 
ELSE SMQ849 
 END as days_smoked_e_cigarette_last_5_days, 

CASE
            WHEN SMQ851 = '1' THEN 'Yes' -- categorize string values 
WHEN SMQ851 = '2' THEN 'No' -- categorize string values 
WHEN SMQ851 = '7' THEN 'Refused' -- categorize string values 
WHEN SMQ851 = '9' THEN 'Dont know' -- categorize string values 
WHEN SMQ851 IS NULL THEN NULL 
ELSE SMQ851 
 END as used_smokeless_tobacco_last_5_days, 

CASE
            WHEN SMQ690D = 4 THEN 'Chewing tobacco' -- categorize numeric values
WHEN SMQ690D IS NULL THEN NULL 
ELSE SMQ690D 
 END as used_last_5_days_chewing_tobacco, 

CASE
            WHEN SMQ800 IS NULL THEN NULL 
ELSE SMQ800 
 END as days_used_chewing_tobacco_last_5_day, 

CASE
            WHEN SMQ690E = 5 THEN 'Snuff' -- categorize numeric values
WHEN SMQ690E IS NULL THEN NULL 
ELSE SMQ690E 
 END as used_last_5_days_snuff, 

CASE
            WHEN SMQ817 IS NULL THEN NULL 
ELSE SMQ817 
 END as days_used_snuff_over_last_5_days, 

CASE
            WHEN SMQ690K = '11' THEN 'Other Smokeless' -- categorize string values 
WHEN SMQ690K IS NULL THEN NULL 
ELSE SMQ690K 
 END as used_last_5_days_other_smokeless, 

CASE
            WHEN SAFE_CAST(SMQ857O AS FLOAT64) > 5.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN SMQ857O IS NULL THEN NULL 
ELSE SMQ857O 
 END as days_used_other_smokeless_last_5_days, 

CASE
            WHEN SMQ863 = '1' THEN 'Yes' -- categorize string values 
WHEN SMQ863 = '2' THEN 'No' -- categorize string values 
WHEN SMQ863 = '7' THEN 'Refused' -- categorize string values 
WHEN SMQ863 = '9' THEN 'Dont know' -- categorize string values 
WHEN SMQ863 IS NULL THEN NULL 
ELSE SMQ863 
 END as used_nicotine_replacement_last_5_days, 

CASE
            WHEN SMQ690F = 6 THEN 'Nicotine patches, gum, or other nicotine replacement therapy product' -- categorize numeric values
WHEN SMQ690F IS NULL THEN NULL 
ELSE SMQ690F 
 END as used_last_5_days_patch_gum_other, 

CASE
            WHEN SMQ830 IS NULL THEN NULL 
ELSE SMQ830 
 END as days_used_nicotine_quit_smoking_aids, 

CASE
            WHEN SMQ840 = 1 THEN 'Today' -- categorize numeric values
WHEN SMQ840 = 2 THEN 'Yesterday' -- categorize numeric values
WHEN SMQ840 = 3 THEN '3 to 5 days ago' -- categorize numeric values
WHEN SMQ840 = 7 THEN 'Refused' -- categorize numeric values
WHEN SMQ840 = 9 THEN 'Dont know' -- categorize numeric values
WHEN SMQ840 IS NULL THEN NULL 
ELSE SMQ840 
 END as when_last_used_nicotine_quit_smoking_aid, 

CASE
            WHEN SMDANY = '1' THEN 'Yes' -- categorize string values 
WHEN SMDANY = '2' THEN 'No' -- categorize string values 
WHEN SMDANY = '7' THEN 'Refused' -- categorize string values 
WHEN SMDANY = '9' THEN 'Dont know' -- categorize string values 
WHEN SMDANY IS NULL THEN NULL 
ELSE SMDANY 
 END as used_any_tobacco_product_last_5_days, 

CASE
            WHEN SMAQUEX = 1 THEN 'ACASI   B(12 - 17 Yrs.)' -- categorize numeric values
WHEN SMAQUEX = 2 THEN 'MEC CAPI   B(18 - 150 Yrs.)' -- categorize numeric values
WHEN SMAQUEX IS NULL THEN NULL 
ELSE SMAQUEX 
 END as questionnaire_mode_flag, 

 FROM {{ ref('stg_smoking_recent_tobacco_use_questionnaire') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/SMQRTU_J.htm
        