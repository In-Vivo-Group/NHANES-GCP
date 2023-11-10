SELECT
SEQN as respondent_sequence_number,
CASE
    WHEN WTSSGP2Y = 0 to 352907.89666 THEN 'Range of Values' 
WHEN WTSSGP2Y IS NULL THEN NULL 
ELSE NULL 
 END as surplus_specimen_agp_2_year_weights,
CASE
    WHEN SSAGP = 0.23 to 2.07 THEN 'Range of Values' 
WHEN SSAGP IS NULL THEN NULL 
ELSE NULL 
 END as alpha_1_acid_glycoprotein_g_l,
 FROM { ref('stg_alpha_1_acid_glycoprotein_serum_surplus_laboratory') }