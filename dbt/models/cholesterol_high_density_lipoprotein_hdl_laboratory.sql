SELECT
SEQN as respondent_sequence_number,
CASE
    WHEN LBDHDD = 10 to 189 THEN 'Range of Values' 
WHEN LBDHDD IS NULL THEN NULL 
ELSE NULL 
 END as direct_hdl_cholesterol_mg_dl,
CASE
    WHEN LBDHDDSI = 0.26 to 4.89 THEN 'Range of Values' 
WHEN LBDHDDSI IS NULL THEN NULL 
ELSE NULL 
 END as direct_hdl_cholesterol_mmol_l,
 FROM { ref('stg_cholesterol_high_density_lipoprotein_hdl_laboratory') }