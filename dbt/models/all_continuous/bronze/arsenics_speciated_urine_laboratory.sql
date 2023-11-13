SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN WTSA2YR = 0 THEN NULL --remove no lab specimen samples from data 
WHEN WTSA2YR IS NULL THEN NULL 
ELSE WTSA2YR 
 END as subsample_a_weights, 

CASE
            WHEN URXUAS3 IS NULL THEN NULL 
ELSE URXUAS3 
 END as urinary_arsenous_acid_ug_l, 

CASE
            WHEN URDUA3LC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN URDUA3LC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDUA3LC IS NULL THEN NULL 
ELSE URDUA3LC 
 END as urinary_arsenous_acid_comment_code, 

CASE
            WHEN URXUAS5 IS NULL THEN NULL 
ELSE URXUAS5 
 END as urinary_arsenic_acid_ug_l, 

CASE
            WHEN URDUA5LC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN URDUA5LC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDUA5LC IS NULL THEN NULL 
ELSE URDUA5LC 
 END as urinary_arsenic_acid_comment_code, 

CASE
            WHEN URXUAB IS NULL THEN NULL 
ELSE URXUAB 
 END as urinary_arsenobetaine_ug_l, 

CASE
            WHEN URDUABLC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN URDUABLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDUABLC IS NULL THEN NULL 
ELSE URDUABLC 
 END as urinary_arsenobetaine_comment_code, 

CASE
            WHEN URXUAC IS NULL THEN NULL 
ELSE URXUAC 
 END as urinary_arsenocholine_ug_l, 

CASE
            WHEN URDUACLC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN URDUACLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDUACLC IS NULL THEN NULL 
ELSE URDUACLC 
 END as urinary_arsenocholine_comment_code, 

CASE
            WHEN URXUDMA IS NULL THEN NULL 
ELSE URXUDMA 
 END as urinary_dimethylarsinic_acid_ug_l, 

CASE
            WHEN URDUDALC = 0 THEN 'At or above the detection limlt' -- categorize numeric values
WHEN URDUDALC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDUDALC IS NULL THEN NULL 
ELSE URDUDALC 
 END as urinary_dimethylarsinic_acid_comment, 

CASE
            WHEN URXUMMA IS NULL THEN NULL 
ELSE URXUMMA 
 END as urinary_monomethylarsonic_acid_ug_l, 

CASE
            WHEN URDUMMAL = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN URDUMMAL = 1 THEN 'below lower detection limit' -- categorize numeric values
WHEN URDUMMAL IS NULL THEN NULL 
ELSE URDUMMAL 
 END as urinary_monomethylarsonic_acid_comment, 

 FROM {{ ref('stg_arsenics_speciated_urine_laboratory') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/UAS_J.htm
        