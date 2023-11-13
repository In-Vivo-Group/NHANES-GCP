SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN WTSB2YR IS NULL THEN NULL 
ELSE WTSB2YR 
 END as subsample_b_weights, 

CASE
            WHEN LBXPFDE IS NULL THEN NULL 
ELSE LBXPFDE 
 END as perfluorodecanoic_acid_ng_ml, 

CASE
            WHEN LBDPFDEL = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN LBDPFDEL = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDPFDEL IS NULL THEN NULL 
ELSE LBDPFDEL 
 END as perfluorodecanoic_acid_comment_code, 

CASE
            WHEN LBXPFHS IS NULL THEN NULL 
ELSE LBXPFHS 
 END as perfluorohexane_sulfonic_acid_ng_ml, 

CASE
            WHEN LBDPFHSL = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN LBDPFHSL = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDPFHSL IS NULL THEN NULL 
ELSE LBDPFHSL 
 END as perfluorohexane_sulfonic_acid_comt_code, 

CASE
            WHEN LBXMPAH IS NULL THEN NULL 
ELSE LBXMPAH 
 END as lab_2_n_methyl_pfosa_acetic_acid_ng_ml, 

CASE
            WHEN LBDMPAHL = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN LBDMPAHL = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDMPAHL IS NULL THEN NULL 
ELSE LBDMPAHL 
 END as lab_2_n_methyl_pfosa_acetic_acid_comt_code, 

CASE
            WHEN LBXPFNA IS NULL THEN NULL 
ELSE LBXPFNA 
 END as perfluorononanoic_acid_ng_ml, 

CASE
            WHEN LBDPFNAL = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN LBDPFNAL = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDPFNAL IS NULL THEN NULL 
ELSE LBDPFNAL 
 END as perfluorononanoic_acid_comment_code, 

CASE
            WHEN LBXPFUA IS NULL THEN NULL 
ELSE LBXPFUA 
 END as perfluoroundecanoic_acid_ng_ml, 

CASE
            WHEN LBDPFUAL = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN LBDPFUAL = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDPFUAL IS NULL THEN NULL 
ELSE LBDPFUAL 
 END as perfluoroundecanoic_acid_comment_code, 

CASE
            WHEN LBXNFOA IS NULL THEN NULL 
ELSE LBXNFOA 
 END as n_perfluorooctanoic_acid_ng_ml, 

CASE
            WHEN LBDNFOAL = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN LBDNFOAL = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDNFOAL IS NULL THEN NULL 
ELSE LBDNFOAL 
 END as n_perfluorooctanoic_acid_comment_code, 

CASE
            WHEN LBXBFOA IS NULL THEN NULL 
ELSE LBXBFOA 
 END as br_perfluorooctanoic_acid_iso_ng_ml, 

CASE
            WHEN LBDBFOAL = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN LBDBFOAL = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDBFOAL IS NULL THEN NULL 
ELSE LBDBFOAL 
 END as br_perfluorooctanoic_acid_iso_comt_code, 

CASE
            WHEN LBXNFOS IS NULL THEN NULL 
ELSE LBXNFOS 
 END as n_perfluorooctane_sulfonic_acid_ng_ml, 

CASE
            WHEN LBDNFOSL = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN LBDNFOSL = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDNFOSL IS NULL THEN NULL 
ELSE LBDNFOSL 
 END as n_perfluorooctane_sulfonic_comt_code, 

CASE
            WHEN LBXMFOS IS NULL THEN NULL 
ELSE LBXMFOS 
 END as sm_pfos_ng_ml, 

CASE
            WHEN LBDMFOSL = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN LBDMFOSL = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDMFOSL IS NULL THEN NULL 
ELSE LBDMFOSL 
 END as sm_pfos_comment_code, 

 FROM {{ ref('stg_perfluoroalkyl_and_polyfluoroalkyl_substances_laboratory') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/PFAS_J.htm
        