SELECT
SEQN as respondent_sequence_number,
WHEN LBXGH IS NOT NULL THEN LBXGHWHEN LBXGH IS NULL THEN NULL 
ELSE NULL 
 END as glycohemoglobin,
 FROM {{ ref('stg_glycohemoglobin_laboratory') }}