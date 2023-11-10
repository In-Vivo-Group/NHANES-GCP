SELECT
SEQN as respondent_sequence_number, 

CASE
        WHEN LBXHCR = 1 THEN 'Positive' 
WHEN LBXHCR = 2 THEN 'Negative' 
WHEN LBXHCR = 3 THEN 'Negative Screening HCV Antibody' 
WHEN LBXHCR IS NULL THEN NULL 
ELSE NULL 
 END as hepatitis_c_rna, 

CASE
        WHEN LBDHCI = 1 THEN 'Positive' 
WHEN LBDHCI = 2 THEN 'Negative' 
WHEN LBDHCI = 3 THEN 'Negative Screening HCV Antibody' 
WHEN LBDHCI = 4 THEN 'Positive HCV RNA' 
WHEN LBDHCI IS NULL THEN NULL 
ELSE NULL 
 END as hepatitis_c_antibody_confirmed, 

CASE
        WHEN LBXHCG = 1 THEN 'Genotype 1a' 
WHEN LBXHCG = 2 THEN 'Genotype 1b' 
WHEN LBXHCG = 3 THEN 'Gen 1 other than a/b/not determined' 
WHEN LBXHCG = 4 THEN 'Genotype 2' 
WHEN LBXHCG = 5 THEN 'Genotype 3' 
WHEN LBXHCG = 6 THEN 'Genotype 4' 
WHEN LBXHCG = 7 THEN 'Genotype 5' 
WHEN LBXHCG = 8 THEN 'Genotype 6' 
WHEN LBXHCG = 9 THEN 'Genotype undetermined' 
WHEN LBXHCG IS NULL THEN NULL 
ELSE NULL 
 END as hepatitis_c_genotype, 

 FROM {{ ref('stg_hepatitis_c_rna_hcv_rna_confirmed_antibody_inno_lia_genotype_laboratory') }}