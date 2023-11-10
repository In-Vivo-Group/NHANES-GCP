SELECT
SEQN as respondent_sequence_number, 

CASE
        WHEN WTVOC2PP IS NOT NULL THEN WTVOC2PP 
WHEN WTVOC2PP IS NOT NULL THEN WTVOC2PP 
WHEN WTVOC2PP IS NULL THEN NULL 
ELSE NULL 
 END as uvoc2_subsample_weights_pre_pandemic, 

CASE
        WHEN URXMUCA IS NOT NULL THEN URXMUCA 
WHEN URXMUCA IS NULL THEN NULL 
ELSE NULL 
 END as trans_trans_muconic_acid_ng_ml, 

CASE
        WHEN URDMUCLC = 0 THEN 'At or above the detection limit' 
WHEN URDMUCLC = 1 THEN 'Below lower detection limit' 
WHEN URDMUCLC IS NULL THEN NULL 
ELSE NULL 
 END as trans_trans_muconic_acid_comment_code, 

CASE
        WHEN URXPHMA IS NOT NULL THEN URXPHMA 
WHEN URXPHMA IS NULL THEN NULL 
ELSE NULL 
 END as phenylmercapturic_acid_ng_ml, 

CASE
        WHEN URDPMALC = 0 THEN 'At or above the detection limit' 
WHEN URDPMALC = 1 THEN 'Below lower detection limit' 
WHEN URDPMALC IS NULL THEN NULL 
ELSE NULL 
 END as phenylmercapturic_acid_comment_code, 

 FROM {{ ref('stg_volatile_organic_compound_voc_metabolites_ii_urine_laboratory') }}