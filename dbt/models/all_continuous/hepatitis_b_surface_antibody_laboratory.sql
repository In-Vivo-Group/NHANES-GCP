SELECT
SEQN as respondent_sequence_number,
CASE
        WHEN LBXHBS = 1 THEN 'Positive' 
WHEN LBXHBS = 2 THEN 'Negative' 
WHEN LBXHBS = 3 THEN 'Indeterminate' 
WHEN LBXHBS IS NULL THEN NULL 
ELSE NULL 
 END as hepatitis_b_surface_antibody,
 FROM {{ ref('stg_hepatitis_b_surface_antibody_laboratory') }}