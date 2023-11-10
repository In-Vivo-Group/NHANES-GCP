SELECT
SEQN as respondent_sequence_number,
CASE
        WHEN LBXHA = 1 THEN 'Positive' 
WHEN LBXHA = 2 THEN 'Negative' 
WHEN LBXHA = 3 THEN 'Indeterminate' 
WHEN LBXHA IS NULL THEN NULL 
ELSE NULL 
 END as hepatitis_a_antibody,
 FROM {{ ref('stg_hepatitis_a_laboratory') }}