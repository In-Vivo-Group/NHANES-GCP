SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(HIQ011,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(HIQ011,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(HIQ011,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(HIQ011,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN HIQ011 IS NULL THEN NULL 
ELSE SAFE_CAST(HIQ011 AS STRING) 
 END as covered_by_health_insurance, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(HIQ031A,'.0','') AS INT64) AS STRING) = '14' THEN 'Covered by private insurance' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(HIQ031A,'.0','') AS INT64) AS STRING) = '77' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(HIQ031A,'.0','') AS INT64) AS STRING) = '99' THEN 'Dont know' -- categorize string values 
WHEN HIQ031A IS NULL THEN NULL 
ELSE SAFE_CAST(HIQ031A AS STRING) 
 END as covered_by_private_insurance, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(HIQ031B,'.0','') AS INT64) AS STRING) = '15' THEN 'Covered by Medicare' -- categorize string values 
WHEN HIQ031B IS NULL THEN NULL 
ELSE SAFE_CAST(HIQ031B AS STRING) 
 END as covered_by_medicare, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(HIQ031C,'.0','') AS INT64) AS STRING) = '16' THEN 'Covered by Medi-Gap' -- categorize string values 
WHEN HIQ031C IS NULL THEN NULL 
ELSE SAFE_CAST(HIQ031C AS STRING) 
 END as covered_by_medi_gap, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(HIQ031D,'.0','') AS INT64) AS STRING) = '17' THEN 'Covered by Medicaid' -- categorize string values 
WHEN HIQ031D IS NULL THEN NULL 
ELSE SAFE_CAST(HIQ031D AS STRING) 
 END as covered_by_medicaid, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(HIQ031E,'.0','') AS INT64) AS STRING) = '18' THEN 'Covered by CHIP' -- categorize string values 
WHEN HIQ031E IS NULL THEN NULL 
ELSE SAFE_CAST(HIQ031E AS STRING) 
 END as covered_by_chip, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(HIQ031F,'.0','') AS INT64) AS STRING) = '19' THEN 'Covered by military health care' -- categorize string values 
WHEN HIQ031F IS NULL THEN NULL 
ELSE SAFE_CAST(HIQ031F AS STRING) 
 END as covered_by_military_health_care, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(HIQ031H,'.0','') AS INT64) AS STRING) = '21' THEN 'Covered by state-sponsored health plan' -- categorize string values 
WHEN HIQ031H IS NULL THEN NULL 
ELSE SAFE_CAST(HIQ031H AS STRING) 
 END as covered_by_state_sponsored_health_plan, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(HIQ031I,'.0','') AS INT64) AS STRING) = '22' THEN 'Covered by other government insurance' -- categorize string values 
WHEN HIQ031I IS NULL THEN NULL 
ELSE SAFE_CAST(HIQ031I AS STRING) 
 END as covered_by_other_government_insurance, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(HIQ031J,'.0','') AS INT64) AS STRING) = '23' THEN 'Covered by single service plan' -- categorize string values 
WHEN HIQ031J IS NULL THEN NULL 
ELSE SAFE_CAST(HIQ031J AS STRING) 
 END as covered_by_single_service_plan, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(HIQ031AA,'.0','') AS INT64) AS STRING) = '40' THEN 'No coverage of any type' -- categorize string values 
WHEN HIQ031AA IS NULL THEN NULL 
ELSE SAFE_CAST(HIQ031AA AS STRING) 
 END as no_coverage_of_any_type, 

-- HIQ065 as HIQ065, -- not included in table but included in docs without transformation logic 

-- HIQ259 as HIQ259, -- not included in table but included in docs without transformation logic 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(HIQ260,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(HIQ260,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(HIQ260,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(HIQ260,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN HIQ260 IS NULL THEN NULL 
ELSE SAFE_CAST(HIQ260 AS STRING) 
 END as have_medicare, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(HIQ105,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(HIQ105,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN HIQ105 IS NULL THEN NULL 
ELSE SAFE_CAST(HIQ105 AS STRING) 
 END as insurance_card_available_or_not, 

-- HIQ269 as HIQ269, -- not included in table but included in docs without transformation logic 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(HIQ270,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(HIQ270,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(HIQ270,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(HIQ270,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN HIQ270 IS NULL THEN NULL 
ELSE SAFE_CAST(HIQ270 AS STRING) 
 END as do_plans_cover_prescriptions, 

CASE
            WHEN SAFE_CAST(HIQ210 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(HIQ210 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(HIQ210 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(HIQ210 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN HIQ210 IS NULL THEN NULL 
ELSE SAFE_CAST(HIQ210 AS STRING) 
 END as time_when_no_insurance_in_past_year, 

 FROM {{ ref('stg_health_insurance_questionnaire') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/HIQ_J.htm
        