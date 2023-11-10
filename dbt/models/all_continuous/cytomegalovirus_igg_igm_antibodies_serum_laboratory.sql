SELECT
SEQN as respondent_sequence_number,
CASE
        WHEN LBXIGG = 1 THEN 'positive' 
WHEN LBXIGG = 2 THEN 'negative' 
WHEN LBXIGG = 3 THEN 'indeterminate' 
WHEN LBXIGG IS NULL THEN NULL 
ELSE NULL 
 END as cytomegalovirus_cmv_igg,
CASE
        WHEN LBXIGM = 1 THEN 'positive' 
WHEN LBXIGM = 2 THEN 'negative' 
WHEN LBXIGM = 3 THEN 'indeterminate' 
WHEN LBXIGM IS NULL THEN NULL 
ELSE NULL 
 END as cytomegalovirus_cmv_igm,
CASE
        WHEN LBXIGGA = 1 THEN 'low' 
WHEN LBXIGGA = 2 THEN 'high' 
WHEN LBXIGGA = 3 THEN 'indeterminate' 
WHEN LBXIGGA IS NULL THEN NULL 
ELSE NULL 
 END as cytomegalovirus_cmv_igg_avidity,
 FROM {{ ref('stg_cytomegalovirus_igg_igm_antibodies_serum_laboratory') }}