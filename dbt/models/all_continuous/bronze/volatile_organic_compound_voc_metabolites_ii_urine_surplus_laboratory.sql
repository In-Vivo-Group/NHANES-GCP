SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN WTSSAJ2Y IS NULL THEN NULL 
ELSE WTSSAJ2Y 
 END as surplus_specimen_a_17_18_2_year_weights, 

CASE
            WHEN SSHMFA IS NULL THEN NULL 
ELSE SSHMFA 
 END as lab_5_hydrxymthl_2_furancrbxylc_acid_ng_ml, 

CASE
            WHEN SSHMFAL = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN SSHMFAL = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSHMFAL IS NULL THEN NULL 
ELSE SSHMFAL 
 END as lab_5_hydrxymthl_2_furancrbxylc_acid_comt, 

CASE
            WHEN SSHMFG IS NULL THEN NULL 
ELSE SSHMFG 
 END as lab_5_hydroxymethyl_2_furoylglycine_ng_ml, 

CASE
            WHEN SSHMFGL = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN SSHMFGL = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSHMFGL IS NULL THEN NULL 
ELSE SSHMFGL 
 END as lab_5_hydroxymethyl_2_furoylglycine_comt, 

CASE
            WHEN SSMUCA IS NULL THEN NULL 
ELSE SSMUCA 
 END as trans_trans_muconic_acid_ng_ml, 

CASE
            WHEN SSMUCAL = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN SSMUCAL = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSMUCAL IS NULL THEN NULL 
ELSE SSMUCAL 
 END as trans_trans_muconic_acid_comment_code, 

CASE
            WHEN SSN2FG IS NULL THEN NULL 
ELSE SSN2FG 
 END as n_2_furoylglycine_ng_ml, 

CASE
            WHEN SSN2FGL = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN SSN2FGL = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSN2FGL IS NULL THEN NULL 
ELSE SSN2FGL 
 END as n_2_furoylglycine_comment_code, 

CASE
            WHEN SSPHMA IS NULL THEN NULL 
ELSE SSPHMA 
 END as phenylmercapturic_acid_ng_ml, 

CASE
            WHEN SSPHMAL = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN SSPHMAL = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSPHMAL IS NULL THEN NULL 
ELSE SSPHMAL 
 END as phenylmercapturic_acid_comment_code, 

 FROM {{ ref('stg_volatile_organic_compound_voc_metabolites_ii_urine_surplus_laboratory') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/SSUVOC_J.htm
        