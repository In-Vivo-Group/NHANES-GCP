SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN LBDHDD IS NULL THEN NULL 
ELSE SAFE_CAST(LBDHDD AS STRING) 
 END as direct_hdl_cholesterol_mg_dl, 

CASE
            WHEN LBDHDDSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDHDDSI AS STRING) 
 END as direct_hdl_cholesterol_mmol_l, 

 FROM {{ ref('stg_cholesterol_high_density_lipoprotein_hdl_laboratory') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/HDL_J.htm
        