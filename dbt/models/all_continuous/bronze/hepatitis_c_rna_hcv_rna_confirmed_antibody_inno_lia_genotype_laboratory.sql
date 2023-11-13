SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN LBXHCR = 1 THEN 'Positive' -- categorize numeric values
WHEN LBXHCR = 2 THEN 'Negative' -- categorize numeric values
WHEN LBXHCR = 3 THEN 'Negative Screening HCV Antibody' -- categorize numeric values
WHEN LBXHCR IS NULL THEN NULL 
ELSE LBXHCR 
 END as hepatitis_c_rna, 

CASE
            WHEN LBDHCI = 1 THEN 'Positive' -- categorize numeric values
WHEN LBDHCI = 2 THEN 'Negative' -- categorize numeric values
WHEN LBDHCI = 3 THEN 'Negative Screening HCV Antibody' -- categorize numeric values
WHEN LBDHCI = 4 THEN 'Positive HCV RNA' -- categorize numeric values
WHEN LBDHCI IS NULL THEN NULL 
ELSE LBDHCI 
 END as hepatitis_c_antibody_confirmed, 

CASE
            WHEN LBXHCG = 1 THEN 'Genotype 1a' -- categorize numeric values
WHEN LBXHCG = 2 THEN 'Genotype 1b' -- categorize numeric values
WHEN LBXHCG = 3 THEN 'Gen 1 other than a/b/not determined' -- categorize numeric values
WHEN LBXHCG = 4 THEN 'Genotype 2' -- categorize numeric values
WHEN LBXHCG = 5 THEN 'Genotype 3' -- categorize numeric values
WHEN LBXHCG = 6 THEN 'Genotype 4' -- categorize numeric values
WHEN LBXHCG = 7 THEN 'Genotype 5' -- categorize numeric values
WHEN LBXHCG = 8 THEN 'Genotype 6' -- categorize numeric values
WHEN LBXHCG = 9 THEN 'Genotype undetermined' -- categorize numeric values
WHEN LBXHCG IS NULL THEN NULL 
ELSE LBXHCG 
 END as hepatitis_c_genotype, 

 FROM {{ ref('stg_hepatitis_c_rna_hcv_rna_confirmed_antibody_inno_lia_genotype_laboratory') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/HEPC_J.htm
        