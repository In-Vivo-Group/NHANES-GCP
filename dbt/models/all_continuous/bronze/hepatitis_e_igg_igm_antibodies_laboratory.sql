SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN LBDHEG = 1 THEN 'Positive' -- categorize numeric values
WHEN LBDHEG = 2 THEN 'Negative' -- categorize numeric values
WHEN LBDHEG = 3 THEN 'Indeterminate' -- categorize numeric values
WHEN LBDHEG IS NULL THEN NULL 
ELSE LBDHEG 
 END as hepatitis_e_igg_anti_hev, 

CASE
            WHEN LBDHEM = 1 THEN 'Positive' -- categorize numeric values
WHEN LBDHEM = 2 THEN 'Negative' -- categorize numeric values
WHEN LBDHEM = 3 THEN 'Indeterminate' -- categorize numeric values
WHEN LBDHEM IS NULL THEN NULL 
ELSE LBDHEM 
 END as hepatitis_e_igm_anti_hev, 

 FROM {{ ref('stg_hepatitis_e_igg_igm_antibodies_laboratory') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/HEPE_J.htm
        