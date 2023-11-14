SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN SAFE_CAST(LBXHA AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(LBXHA AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Negative' -- categorize numeric values
WHEN SAFE_CAST(LBXHA AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Indeterminate' -- categorize numeric values
WHEN LBXHA IS NULL THEN NULL 
ELSE SAFE_CAST(LBXHA AS STRING) 
 END as hepatitis_a_antibody, 

 FROM {{ ref('stg_hepatitis_a_laboratory') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/HEPA_J.htm
        