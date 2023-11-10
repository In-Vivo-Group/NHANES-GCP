SELECT
SEQN as respondent_sequence_number,
WHEN WTSSGP2Y IS NOT NULL THEN SAFE_CAST(WTSSGP2Y AS FLOAT64)WHEN WTSSGP2Y IS NULL THEN NULL 
ELSE NULL 
 END as surplus_specimen_agp_2_year_weights,
WHEN SSAGP IS NOT NULL THEN SAFE_CAST(SSAGP AS FLOAT64)WHEN SSAGP IS NULL THEN NULL 
ELSE NULL 
 END as alpha_1_acid_glycoprotein_g_l,
 FROM {ref('stg_alpha_1_acid_glycoprotein_serum_surplus_laboratory'})