SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN WTVOC2PP IS NULL THEN NULL 
ELSE WTVOC2PP 
 END as uvoc2_subsample_weights_pre_pandemic, 

CASE
            WHEN URXMUCA IS NULL THEN NULL 
ELSE URXMUCA 
 END as trans_trans_muconic_acid_ng_ml, 

CASE
            WHEN URDMUCLC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN URDMUCLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDMUCLC IS NULL THEN NULL 
ELSE URDMUCLC 
 END as trans_trans_muconic_acid_comment_code, 

CASE
            WHEN URXPHMA IS NULL THEN NULL 
ELSE URXPHMA 
 END as phenylmercapturic_acid_ng_ml, 

CASE
            WHEN URDPMALC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN URDPMALC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDPMALC IS NULL THEN NULL 
ELSE URDPMALC 
 END as phenylmercapturic_acid_comment_code, 

 FROM {{ ref('stg_volatile_organic_compound_voc_metabolites_ii_urine_laboratory') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_UVOC2.htm
        