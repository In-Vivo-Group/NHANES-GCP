SELECT
SEQN as respondent_sequence_number,
CASE
    WHEN WTSA2YR = 3829.845402 to 1502431.3423 THEN 'Range of Values' 
WHEN WTSA2YR = 0 THEN 'No Lab Specimen' 
WHEN WTSA2YR IS NULL THEN NULL 
ELSE NULL 
 END as subsample_a_weights,
CASE
    WHEN URXUAS3 = 0.08 to 4.84 THEN 'Range of Values' 
WHEN URXUAS3 IS NULL THEN NULL 
ELSE NULL 
 END as urinary_arsenous_acid_ug_l,
CASE
    WHEN URDUA3LC = 0 THEN 'At or above the detection limit' 
WHEN URDUA3LC = 1 THEN 'Below lower detection limit' 
WHEN URDUA3LC IS NULL THEN NULL 
ELSE NULL 
 END as urinary_arsenous_acid_comment_code,
CASE
    WHEN URXUAS5 = 0.56 to 6.23 THEN 'Range of Values' 
WHEN URXUAS5 IS NULL THEN NULL 
ELSE NULL 
 END as urinary_arsenic_acid_ug_l,
CASE
    WHEN URDUA5LC = 0 THEN 'At or above the detection limit' 
WHEN URDUA5LC = 1 THEN 'Below lower detection limit' 
WHEN URDUA5LC IS NULL THEN NULL 
ELSE NULL 
 END as urinary_arsenic_acid_comment_code,
CASE
    WHEN URXUAB = 0.82 to 2505.42 THEN 'Range of Values' 
WHEN URXUAB IS NULL THEN NULL 
ELSE NULL 
 END as urinary_arsenobetaine_ug_l,
CASE
    WHEN URDUABLC = 0 THEN 'At or above the detection limit' 
WHEN URDUABLC = 1 THEN 'Below lower detection limit' 
WHEN URDUABLC IS NULL THEN NULL 
ELSE NULL 
 END as urinary_arsenobetaine_comment_code,
CASE
    WHEN URXUAC = 0.08 to 23.18 THEN 'Range of Values' 
WHEN URXUAC IS NULL THEN NULL 
ELSE NULL 
 END as urinary_arsenocholine_ug_l,
CASE
    WHEN URDUACLC = 0 THEN 'At or above the detection limit' 
WHEN URDUACLC = 1 THEN 'Below lower detection limit' 
WHEN URDUACLC IS NULL THEN NULL 
ELSE NULL 
 END as urinary_arsenocholine_comment_code,
CASE
    WHEN URXUDMA = 1.35 to 181.55 THEN 'Range of Values' 
WHEN URXUDMA IS NULL THEN NULL 
ELSE NULL 
 END as urinary_dimethylarsinic_acid_ug_l,
CASE
    WHEN URDUDALC = 0 THEN 'At or above the detection limlt' 
WHEN URDUDALC = 1 THEN 'Below lower detection limit' 
WHEN URDUDALC IS NULL THEN NULL 
ELSE NULL 
 END as urinary_dimethylarsinic_acid_comment,
CASE
    WHEN URXUMMA = 0.14 to 4.43 THEN 'Range of Values' 
WHEN URXUMMA IS NULL THEN NULL 
ELSE NULL 
 END as urinary_monomethylarsonic_acid_ug_l,
CASE
    WHEN URDUMMAL = 0 THEN 'At or above the detection limit' 
WHEN URDUMMAL = 1 THEN 'below lower detection limit' 
WHEN URDUMMAL IS NULL THEN NULL 
ELSE NULL 
 END as urinary_monomethylarsonic_acid_comment,
 FROM { ref('stg_arsenics_speciated_urine_laboratory') }