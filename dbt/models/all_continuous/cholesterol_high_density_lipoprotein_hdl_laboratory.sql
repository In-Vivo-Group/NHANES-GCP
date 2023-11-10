SELECT
SEQN as respondent_sequence_number,
WHEN LBDHDD IS NOT NULL THEN LBDHDDWHEN LBDHDD IS NULL THEN NULL 
ELSE NULL 
 END as direct_hdl_cholesterol_mg_dl,
WHEN LBDHDDSI IS NOT NULL THEN LBDHDDSIWHEN LBDHDDSI IS NULL THEN NULL 
ELSE NULL 
 END as direct_hdl_cholesterol_mmol_l,
 FROM {{ ref('stg_cholesterol_high_density_lipoprotein_hdl_laboratory') }}