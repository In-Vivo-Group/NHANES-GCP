SELECT
SEQN as respondent_sequence_number, 

CASE
        WHEN LBXGH IS NOT NULL THEN LBXGH 
WHEN LBXGH IS NULL THEN NULL 
ELSE NULL 
 END as glycohemoglobin, 

 FROM {{ ref('stg_glycohemoglobin_laboratory') }}