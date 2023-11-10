SELECT
SEQN as respondent_sequence_number, 

CASE
        WHEN WTSSAJ2Y IS NOT NULL THEN WTSSAJ2Y 
WHEN WTSSAJ2Y IS NOT NULL THEN WTSSAJ2Y 
WHEN WTSSAJ2Y IS NULL THEN NULL 
ELSE NULL 
 END as surplus_specimen_a_17_18_2_year_weights, 

CASE
        WHEN SSHMFA IS NOT NULL THEN SSHMFA 
WHEN SSHMFA IS NULL THEN NULL 
ELSE NULL 
 END as 5_hydrxymthl_2_furancrbxylc_acid_ng_ml, 

CASE
        WHEN SSHMFAL = 0 THEN 'At or above the detection limit' 
WHEN SSHMFAL = 1 THEN 'Below lower detection limit' 
WHEN SSHMFAL IS NULL THEN NULL 
ELSE NULL 
 END as 5_hydrxymthl_2_furancrbxylc_acid_comt, 

CASE
        WHEN SSHMFG IS NOT NULL THEN SSHMFG 
WHEN SSHMFG IS NULL THEN NULL 
ELSE NULL 
 END as 5_hydroxymethyl_2_furoylglycine_ng_ml, 

CASE
        WHEN SSHMFGL = 0 THEN 'At or above the detection limit' 
WHEN SSHMFGL = 1 THEN 'Below lower detection limit' 
WHEN SSHMFGL IS NULL THEN NULL 
ELSE NULL 
 END as 5_hydroxymethyl_2_furoylglycine_comt, 

CASE
        WHEN SSMUCA IS NOT NULL THEN SSMUCA 
WHEN SSMUCA IS NULL THEN NULL 
ELSE NULL 
 END as trans_trans_muconic_acid_ng_ml, 

CASE
        WHEN SSMUCAL = 0 THEN 'At or above the detection limit' 
WHEN SSMUCAL = 1 THEN 'Below lower detection limit' 
WHEN SSMUCAL IS NULL THEN NULL 
ELSE NULL 
 END as trans_trans_muconic_acid_comment_code, 

CASE
        WHEN SSN2FG IS NOT NULL THEN SSN2FG 
WHEN SSN2FG IS NULL THEN NULL 
ELSE NULL 
 END as n_2_furoylglycine_ng_ml, 

CASE
        WHEN SSN2FGL = 0 THEN 'At or above the detection limit' 
WHEN SSN2FGL = 1 THEN 'Below lower detection limit' 
WHEN SSN2FGL IS NULL THEN NULL 
ELSE NULL 
 END as n_2_furoylglycine_comment_code, 

CASE
        WHEN SSPHMA IS NOT NULL THEN SSPHMA 
WHEN SSPHMA IS NULL THEN NULL 
ELSE NULL 
 END as phenylmercapturic_acid_ng_ml, 

CASE
        WHEN SSPHMAL = 0 THEN 'At or above the detection limit' 
WHEN SSPHMAL = 1 THEN 'Below lower detection limit' 
WHEN SSPHMAL IS NULL THEN NULL 
ELSE NULL 
 END as phenylmercapturic_acid_comment_code, 

 FROM {{ ref('stg_volatile_organic_compound_voc_metabolites_ii_urine_surplus_laboratory') }}