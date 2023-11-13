SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN HIQ011 = '1' THEN 'Yes' -- categorize string values 
WHEN HIQ011 = '2' THEN 'No' -- categorize string values 
WHEN HIQ011 = '7' THEN 'Refused' -- categorize string values 
WHEN HIQ011 = '9' THEN 'Dont know' -- categorize string values 
WHEN HIQ011 IS NULL THEN NULL 
ELSE HIQ011 
 END as covered_by_health_insurance, 

CASE
            WHEN HIQ031A = '14' THEN 'Covered by private insurance' -- categorize string values 
WHEN HIQ031A = '77' THEN 'Refused' -- categorize string values 
WHEN HIQ031A = '99' THEN 'Dont know' -- categorize string values 
WHEN HIQ031A IS NULL THEN NULL 
ELSE HIQ031A 
 END as covered_by_private_insurance, 

CASE
            WHEN HIQ031B = '15' THEN 'Covered by Medicare' -- categorize string values 
WHEN HIQ031B IS NULL THEN NULL 
ELSE HIQ031B 
 END as covered_by_medicare, 

CASE
            WHEN HIQ031C = '16' THEN 'Covered by Medi-Gap' -- categorize string values 
WHEN HIQ031C IS NULL THEN NULL 
ELSE HIQ031C 
 END as covered_by_medi_gap, 

CASE
            WHEN HIQ031D = '17' THEN 'Covered by Medicaid' -- categorize string values 
WHEN HIQ031D IS NULL THEN NULL 
ELSE HIQ031D 
 END as covered_by_medicaid, 

CASE
            WHEN HIQ031E = '18' THEN 'Covered by CHIP' -- categorize string values 
WHEN HIQ031E IS NULL THEN NULL 
ELSE HIQ031E 
 END as covered_by_chip, 

CASE
            WHEN HIQ031F = '19' THEN 'Covered by military health care' -- categorize string values 
WHEN HIQ031F IS NULL THEN NULL 
ELSE HIQ031F 
 END as covered_by_military_health_care, 

CASE
            WHEN HIQ031H = '21' THEN 'Covered by state-sponsored health plan' -- categorize string values 
WHEN HIQ031H IS NULL THEN NULL 
ELSE HIQ031H 
 END as covered_by_state_sponsored_health_plan, 

CASE
            WHEN HIQ031I = '22' THEN 'Covered by other government insurance' -- categorize string values 
WHEN HIQ031I IS NULL THEN NULL 
ELSE HIQ031I 
 END as covered_by_other_government_insurance, 

CASE
            WHEN HIQ031J = '23' THEN 'Covered by single service plan' -- categorize string values 
WHEN HIQ031J IS NULL THEN NULL 
ELSE HIQ031J 
 END as covered_by_single_service_plan, 

CASE
            WHEN HIQ031AA = '40' THEN 'No coverage of any type' -- categorize string values 
WHEN HIQ031AA IS NULL THEN NULL 
ELSE HIQ031AA 
 END as no_coverage_of_any_type, 

HIQ065 as HIQ065, -- could not automatically decode name of variable or transformation logic 

HIQ259 as HIQ259, -- could not automatically decode name of variable or transformation logic 

CASE
            WHEN HIQ260 = '1' THEN 'Yes' -- categorize string values 
WHEN HIQ260 = '2' THEN 'No' -- categorize string values 
WHEN HIQ260 = '7' THEN 'Refused' -- categorize string values 
WHEN HIQ260 = '9' THEN 'Dont know' -- categorize string values 
WHEN HIQ260 IS NULL THEN NULL 
ELSE HIQ260 
 END as have_medicare, 

CASE
            WHEN HIQ105 = '1' THEN 'Yes' -- categorize string values 
WHEN HIQ105 = '2' THEN 'No' -- categorize string values 
WHEN HIQ105 IS NULL THEN NULL 
ELSE HIQ105 
 END as insurance_card_available_or_not, 

HIQ269 as HIQ269, -- could not automatically decode name of variable or transformation logic 

CASE
            WHEN HIQ270 = '1' THEN 'Yes' -- categorize string values 
WHEN HIQ270 = '2' THEN 'No' -- categorize string values 
WHEN HIQ270 = '7' THEN 'Refused' -- categorize string values 
WHEN HIQ270 = '9' THEN 'Dont know' -- categorize string values 
WHEN HIQ270 IS NULL THEN NULL 
ELSE HIQ270 
 END as do_plans_cover_prescriptions, 

CASE
            WHEN HIQ210 = 1 THEN 'Yes' -- categorize numeric values
WHEN HIQ210 = 2 THEN 'No' -- categorize numeric values
WHEN HIQ210 = 7 THEN 'Refused' -- categorize numeric values
WHEN HIQ210 = 9 THEN 'Dont know' -- categorize numeric values
WHEN HIQ210 IS NULL THEN NULL 
ELSE HIQ210 
 END as time_when_no_insurance_in_past_year, 

 FROM {{ ref('stg_health_insurance_questionnaire') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/HIQ_J.htm
        