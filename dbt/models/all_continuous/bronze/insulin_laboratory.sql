SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN WTSAF2YR IS NULL THEN NULL 
ELSE WTSAF2YR 
 END as fasting_subsample_2_year_mec_weight, 

CASE
            WHEN LBXIN IS NULL THEN NULL 
ELSE LBXIN 
 END as insulin_uu_ml, 

CASE
            WHEN LBDINSI IS NULL THEN NULL 
ELSE LBDINSI 
 END as insulin_pmol_l, 

CASE
            WHEN LBDINLC = 0 THEN 'Detectable result' -- categorize numeric values
WHEN LBDINLC = 1 THEN 'Below detectable limit' -- categorize numeric values
WHEN LBDINLC IS NULL THEN NULL 
ELSE LBDINLC 
 END as insulin_comment_code, 

 FROM {{ ref('stg_insulin_laboratory') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/INS_J.htm
        