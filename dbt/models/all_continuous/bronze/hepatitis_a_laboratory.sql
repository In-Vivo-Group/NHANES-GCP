SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN LBXHA = 1 THEN 'Positive' -- categorize numeric values
WHEN LBXHA = 2 THEN 'Negative' -- categorize numeric values
WHEN LBXHA = 3 THEN 'Indeterminate' -- categorize numeric values
WHEN LBXHA IS NULL THEN NULL 
ELSE LBXHA 
 END as hepatitis_a_antibody, 

 FROM {{ ref('stg_hepatitis_a_laboratory') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/HEPA_J.htm
        