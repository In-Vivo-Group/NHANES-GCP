SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN WTSSGP2Y IS NULL THEN NULL 
ELSE WTSSGP2Y 
 END as surplus_specimen_agp_2_year_weights, 

CASE
            WHEN SSAGP IS NULL THEN NULL 
ELSE SSAGP 
 END as alpha_1_acid_glycoprotein_g_l, 

 FROM {{ ref('stg_alpha_1_acid_glycoprotein_serum_surplus_laboratory') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/SSAGP_J.htm
        