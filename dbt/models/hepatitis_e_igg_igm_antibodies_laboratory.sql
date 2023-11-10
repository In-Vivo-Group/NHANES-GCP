SELECT
SEQN as respondent_sequence_number,
CASE
    WHEN LBDHEG = 1 THEN 'Positive' 
WHEN LBDHEG = 2 THEN 'Negative' 
WHEN LBDHEG = 3 THEN 'Indeterminate' 
WHEN LBDHEG IS NULL THEN NULL 
ELSE NULL 
 END as hepatitis_e_igg_anti_hev,
CASE
    WHEN LBDHEM = 1 THEN 'Positive' 
WHEN LBDHEM = 2 THEN 'Negative' 
WHEN LBDHEM = 3 THEN 'Indeterminate' 
WHEN LBDHEM IS NULL THEN NULL 
ELSE NULL 
 END as hepatitis_e_igm_anti_hev,
 FROM {ref('stg_hepatitis_e_igg_igm_antibodies_laboratory'})