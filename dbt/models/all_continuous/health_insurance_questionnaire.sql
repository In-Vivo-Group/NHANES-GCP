SELECT
SEQN as respondent_sequence_number,
CASE
        WHEN HIQ011 = '1' THEN 'Yes' 
WHEN HIQ011 = '2' THEN 'No' 
WHEN HIQ011 = '7' THEN 'Refused' 
WHEN HIQ011 = '9' THEN 'Don\'t know' 
WHEN HIQ011 IS NULL THEN NULL 
ELSE NULL 
 END as covered_by_health_insurance,
CASE
        WHEN HIQ031A = '14' THEN 'Covered by private insurance' 
WHEN HIQ031A = '77' THEN 'Refused' 
WHEN HIQ031A = '99' THEN 'Don\'t know' 
WHEN HIQ031A IS NULL THEN NULL 
ELSE NULL 
 END as covered_by_private_insurance,
CASE
        WHEN HIQ031B = '15' THEN 'Covered by Medicare' 
WHEN HIQ031B IS NULL THEN NULL 
ELSE NULL 
 END as covered_by_medicare,
CASE
        WHEN HIQ031C = '16' THEN 'Covered by Medi-Gap' 
WHEN HIQ031C IS NULL THEN NULL 
ELSE NULL 
 END as covered_by_medi_gap,
CASE
        WHEN HIQ031D = '17' THEN 'Covered by Medicaid' 
WHEN HIQ031D IS NULL THEN NULL 
ELSE NULL 
 END as covered_by_medicaid,
CASE
        WHEN HIQ031E = '18' THEN 'Covered by CHIP' 
WHEN HIQ031E IS NULL THEN NULL 
ELSE NULL 
 END as covered_by_chip,
CASE
        WHEN HIQ031F = '19' THEN 'Covered by military health care' 
WHEN HIQ031F IS NULL THEN NULL 
ELSE NULL 
 END as covered_by_military_health_care,
CASE
        WHEN HIQ031H = '21' THEN 'Covered by state-sponsored health plan' 
WHEN HIQ031H IS NULL THEN NULL 
ELSE NULL 
 END as covered_by_state_sponsored_health_plan,
CASE
        WHEN HIQ031I = '22' THEN 'Covered by other government insurance' 
WHEN HIQ031I IS NULL THEN NULL 
ELSE NULL 
 END as covered_by_other_government_insurance,
CASE
        WHEN HIQ031J = '23' THEN 'Covered by single service plan' 
WHEN HIQ031J IS NULL THEN NULL 
ELSE NULL 
 END as covered_by_single_service_plan,
CASE
        WHEN HIQ031AA = '40' THEN 'No coverage of any type' 
WHEN HIQ031AA IS NULL THEN NULL 
ELSE NULL 
 END as no_coverage_of_any_type,
CASE
        WHEN HIQ260 = '1' THEN 'Yes' 
WHEN HIQ260 = '2' THEN 'No' 
WHEN HIQ260 = '7' THEN 'Refused' 
WHEN HIQ260 = '9' THEN 'Don\'t know' 
WHEN HIQ260 IS NULL THEN NULL 
ELSE NULL 
 END as have_medicare,
CASE
        WHEN HIQ105 = '1' THEN 'Yes' 
WHEN HIQ105 = '2' THEN 'No' 
WHEN HIQ105 IS NULL THEN NULL 
ELSE NULL 
 END as insurance_card_available_or_not,
CASE
        WHEN HIQ270 = '1' THEN 'Yes' 
WHEN HIQ270 = '2' THEN 'No' 
WHEN HIQ270 = '7' THEN 'Refused' 
WHEN HIQ270 = '9' THEN 'Don\'t know' 
WHEN HIQ270 IS NULL THEN NULL 
ELSE NULL 
 END as do_plans_cover_prescriptions,
CASE
        WHEN HIQ210 = 1 THEN 'Yes' 
WHEN HIQ210 = 2 THEN 'No' 
WHEN HIQ210 = 7 THEN 'Refused' 
WHEN HIQ210 = 9 THEN 'Don\'t know' 
WHEN HIQ210 IS NULL THEN NULL 
ELSE NULL 
 END as time_when_no_insurance_in_past_year,
 FROM {{ ref('stg_health_insurance_questionnaire') }}