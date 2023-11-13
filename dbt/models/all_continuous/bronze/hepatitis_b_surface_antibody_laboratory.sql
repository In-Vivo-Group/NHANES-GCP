SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN LBXHBS = 1 THEN 'Positive' -- categorize numeric values
WHEN LBXHBS = 2 THEN 'Negative' -- categorize numeric values
WHEN LBXHBS = 3 THEN 'Indeterminate' -- categorize numeric values
WHEN LBXHBS IS NULL THEN NULL 
ELSE LBXHBS 
 END as hepatitis_b_surface_antibody, 

 FROM {{ ref('stg_hepatitis_b_surface_antibody_laboratory') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/HEPB_S_J.htm
        