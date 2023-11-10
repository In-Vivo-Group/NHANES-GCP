SELECT
SEQN as respondent_sequence_number, 

CASE
        WHEN LBDHDD IS NOT NULL THEN LBDHDD 
WHEN LBDHDD IS NULL THEN NULL 
ELSE NULL 
 END as direct_hdl_cholesterol_mg_dl, 

CASE
        WHEN LBDHDDSI IS NOT NULL THEN LBDHDDSI 
WHEN LBDHDDSI IS NULL THEN NULL 
ELSE NULL 
 END as direct_hdl_cholesterol_mmol_l, 

 FROM {{ ref('stg_cholesterol_high_density_lipoprotein_hdl_laboratory') }}