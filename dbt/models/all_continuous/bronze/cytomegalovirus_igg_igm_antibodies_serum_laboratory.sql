SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN LBXIGG = 1 THEN 'positive' -- categorize numeric values
WHEN LBXIGG = 2 THEN 'negative' -- categorize numeric values
WHEN LBXIGG = 3 THEN 'indeterminate' -- categorize numeric values
WHEN LBXIGG IS NULL THEN NULL 
ELSE LBXIGG 
 END as cytomegalovirus_cmv_igg, 

CASE
            WHEN LBXIGM = 1 THEN 'positive' -- categorize numeric values
WHEN LBXIGM = 2 THEN 'negative' -- categorize numeric values
WHEN LBXIGM = 3 THEN 'indeterminate' -- categorize numeric values
WHEN LBXIGM IS NULL THEN NULL 
ELSE LBXIGM 
 END as cytomegalovirus_cmv_igm, 

CASE
            WHEN LBXIGGA = 1 THEN 'low' -- categorize numeric values
WHEN LBXIGGA = 2 THEN 'high' -- categorize numeric values
WHEN LBXIGGA = 3 THEN 'indeterminate' -- categorize numeric values
WHEN LBXIGGA IS NULL THEN NULL 
ELSE LBXIGGA 
 END as cytomegalovirus_cmv_igg_avidity, 

 FROM {{ ref('stg_cytomegalovirus_igg_igm_antibodies_serum_laboratory') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/CMV_J.htm
        