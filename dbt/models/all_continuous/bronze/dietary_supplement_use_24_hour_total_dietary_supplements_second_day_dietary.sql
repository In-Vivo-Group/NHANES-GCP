SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN WTDRD1 IS NULL THEN NULL 
ELSE SAFE_CAST(WTDRD1 AS FLOAT64) 
 END as dietary_day_one_sample_weight, 

CASE
            WHEN WTDR2D IS NULL THEN NULL 
ELSE SAFE_CAST(WTDR2D AS FLOAT64) 
 END as dietary_two_day_sample_weight, 

CASE
            WHEN SAFE_CAST(DR2DRSTZ AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Reliable and met the minimum criteria' -- categorize numeric values
WHEN SAFE_CAST(DR2DRSTZ AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Not reliable or not met the minimum criteria' -- categorize numeric values
WHEN SAFE_CAST(DR2DRSTZ AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN 'Reported consuming breast-milk' -- categorize numeric values
WHEN SAFE_CAST(DR2DRSTZ AS FLOAT64) = SAFE_CAST(5 AS FLOAT64) THEN 'Not done' -- categorize numeric values
WHEN DR2DRSTZ IS NULL THEN NULL 
ELSE SAFE_CAST(DR2DRSTZ AS STRING) 
 END as dietary_recall_status, 

CASE
            WHEN DR2EXMER IS NULL THEN NULL 
ELSE SAFE_CAST(DR2EXMER AS STRING) 
 END as interviewer_id_code, 

CASE
            WHEN SAFE_CAST(DRDINT AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Day 1 only' -- categorize numeric values
WHEN SAFE_CAST(DRDINT AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Day 1 and day 2' -- categorize numeric values
WHEN DRDINT IS NULL THEN NULL 
ELSE SAFE_CAST(DRDINT AS STRING) 
 END as number_of_days_of_intake, 

CASE
            WHEN DR2DBIH IS NULL THEN NULL 
ELSE SAFE_CAST(DR2DBIH AS STRING) 
 END as of_days_b_w_intake_and_hh_interview, 

CASE
            WHEN SAFE_CAST(DR2DAY AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Sunday' -- categorize numeric values
WHEN SAFE_CAST(DR2DAY AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Monday' -- categorize numeric values
WHEN SAFE_CAST(DR2DAY AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Tuesday' -- categorize numeric values
WHEN SAFE_CAST(DR2DAY AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN 'Wednesday' -- categorize numeric values
WHEN SAFE_CAST(DR2DAY AS FLOAT64) = SAFE_CAST(5 AS FLOAT64) THEN 'Thursday' -- categorize numeric values
WHEN SAFE_CAST(DR2DAY AS FLOAT64) = SAFE_CAST(6 AS FLOAT64) THEN 'Friday' -- categorize numeric values
WHEN SAFE_CAST(DR2DAY AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Saturday' -- categorize numeric values
WHEN DR2DAY IS NULL THEN NULL 
ELSE SAFE_CAST(DR2DAY AS STRING) 
 END as intake_day_of_the_week, 

CASE
            WHEN SAFE_CAST(DR2LANG AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'English' -- categorize numeric values
WHEN SAFE_CAST(DR2LANG AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Spanish' -- categorize numeric values
WHEN SAFE_CAST(DR2LANG AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'English and Spanish' -- categorize numeric values
WHEN SAFE_CAST(DR2LANG AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN 'Other' -- categorize numeric values
WHEN SAFE_CAST(DR2LANG AS FLOAT64) = SAFE_CAST(5 AS FLOAT64) THEN 'Asian Languages' -- categorize numeric values
WHEN SAFE_CAST(DR2LANG AS FLOAT64) = SAFE_CAST(6 AS FLOAT64) THEN 'Asian Languages and English' -- categorize numeric values
WHEN DR2LANG IS NULL THEN NULL 
ELSE SAFE_CAST(DR2LANG AS STRING) 
 END as language_respondent_used_mostly, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR2MRESP,'.0','') AS INT64) AS STRING) = '1' THEN 'SP' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR2MRESP,'.0','') AS INT64) AS STRING) = '2' THEN 'Mother of SP' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR2MRESP,'.0','') AS INT64) AS STRING) = '3' THEN 'Father of SP' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR2MRESP,'.0','') AS INT64) AS STRING) = '5' THEN 'Spouse of SP' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR2MRESP,'.0','') AS INT64) AS STRING) = '6' THEN 'Child of SP' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR2MRESP,'.0','') AS INT64) AS STRING) = '7' THEN 'Grandparent of SP' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR2MRESP,'.0','') AS INT64) AS STRING) = '8' THEN 'Friend, Partner, Non Relative' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR2MRESP,'.0','') AS INT64) AS STRING) = '9' THEN 'Translator, not a HH member' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR2MRESP,'.0','') AS INT64) AS STRING) = '10' THEN 'Child care provider, Caretaker' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR2MRESP,'.0','') AS INT64) AS STRING) = '11' THEN 'Other Relative' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR2MRESP,'.0','') AS INT64) AS STRING) = '77' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR2MRESP,'.0','') AS INT64) AS STRING) = '99' THEN 'Dont know' -- categorize string values 
WHEN DR2MRESP IS NULL THEN NULL 
ELSE SAFE_CAST(DR2MRESP AS STRING) 
 END as main_respondent_for_this_interview, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR2HELP,'.0','') AS INT64) AS STRING) = '1' THEN 'SP' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR2HELP,'.0','') AS INT64) AS STRING) = '4' THEN 'Parent of SP' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR2HELP,'.0','') AS INT64) AS STRING) = '5' THEN 'Spouse of SP' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR2HELP,'.0','') AS INT64) AS STRING) = '6' THEN 'Child of SP' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR2HELP,'.0','') AS INT64) AS STRING) = '7' THEN 'Grandparent of SP' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR2HELP,'.0','') AS INT64) AS STRING) = '8' THEN 'Friend, Partner, Non Relative' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR2HELP,'.0','') AS INT64) AS STRING) = '9' THEN 'Translator, not a HH member' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR2HELP,'.0','') AS INT64) AS STRING) = '10' THEN 'Child care provider, Caretaker' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR2HELP,'.0','') AS INT64) AS STRING) = '11' THEN 'Other Relative' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR2HELP,'.0','') AS INT64) AS STRING) = '12' THEN 'No One' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR2HELP,'.0','') AS INT64) AS STRING) = '77' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR2HELP,'.0','') AS INT64) AS STRING) = '99' THEN 'Dont know' -- categorize string values 
WHEN DR2HELP IS NULL THEN NULL 
ELSE SAFE_CAST(DR2HELP AS STRING) 
 END as helped_in_responding_for_this_interview, 

CASE
            WHEN DS2DSCNT IS NULL THEN NULL 
ELSE SAFE_CAST(DS2DSCNT AS STRING) 
 END as total_of_dietary_supplements_taken, 

CASE
            WHEN SAFE_CAST(DS2DS AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DS2DS AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(DS2DS AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DS2DS AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DS2DS IS NULL THEN NULL 
ELSE SAFE_CAST(DS2DS AS STRING) 
 END as any_dietary_supplements_taken, 

CASE
            WHEN DS2ANCNT IS NULL THEN NULL 
ELSE SAFE_CAST(DS2ANCNT AS STRING) 
 END as total_of_antacids_taken, 

CASE
            WHEN SAFE_CAST(DS2AN AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DS2AN AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(DS2AN AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DS2AN AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DS2AN IS NULL THEN NULL 
ELSE SAFE_CAST(DS2AN AS STRING) 
 END as any_antacids_taken, 

CASE
            WHEN DS2TKCAL IS NULL THEN NULL 
ELSE SAFE_CAST(DS2TKCAL AS STRING) 
 END as energy_kcal, 

CASE
            WHEN DS2TPROT IS NULL THEN NULL 
ELSE SAFE_CAST(DS2TPROT AS STRING) 
 END as protein_gm, 

CASE
            WHEN DS2TCARB IS NULL THEN NULL 
ELSE SAFE_CAST(DS2TCARB AS STRING) 
 END as carbohydrate_gm, 

CASE
            WHEN DS2TSUGR IS NULL THEN NULL 
ELSE SAFE_CAST(DS2TSUGR AS STRING) 
 END as total_sugars_gm, 

CASE
            WHEN DS2TFIBE IS NULL THEN NULL 
ELSE SAFE_CAST(DS2TFIBE AS STRING) 
 END as dietary_fiber_gm, 

CASE
            WHEN DS2TTFAT IS NULL THEN NULL 
ELSE SAFE_CAST(DS2TTFAT AS STRING) 
 END as total_fat_gm, 

CASE
            WHEN DS2TSFAT IS NULL THEN NULL 
ELSE SAFE_CAST(DS2TSFAT AS STRING) 
 END as total_saturated_fatty_acids_gm, 

CASE
            WHEN DS2TMFAT IS NULL THEN NULL 
ELSE SAFE_CAST(DS2TMFAT AS STRING) 
 END as total_monounsaturated_fatty_acids_gm, 

CASE
            WHEN DS2TPFAT IS NULL THEN NULL 
ELSE SAFE_CAST(DS2TPFAT AS STRING) 
 END as total_polyunsaturated_fatty_acids_gm, 

CASE
            WHEN DS2TCHOL IS NULL THEN NULL 
ELSE SAFE_CAST(DS2TCHOL AS STRING) 
 END as cholesterol_mg, 

CASE
            WHEN DS2TLYCO IS NULL THEN NULL 
ELSE SAFE_CAST(DS2TLYCO AS STRING) 
 END as lycopene_mcg, 

CASE
            WHEN DS2TLZ IS NULL THEN NULL 
ELSE SAFE_CAST(DS2TLZ AS STRING) 
 END as lutein_zeaxanthin_mcg, 

CASE
            WHEN DS2TVB1 IS NULL THEN NULL 
ELSE SAFE_CAST(DS2TVB1 AS STRING) 
 END as thiamin_vitamin_b1_mg, 

CASE
            WHEN DS2TVB2 IS NULL THEN NULL 
ELSE SAFE_CAST(DS2TVB2 AS STRING) 
 END as riboflavin_vitamin_b2_mg, 

CASE
            WHEN DS2TNIAC IS NULL THEN NULL 
ELSE SAFE_CAST(DS2TNIAC AS STRING) 
 END as niacin_mg, 

CASE
            WHEN DS2TVB6 IS NULL THEN NULL 
ELSE SAFE_CAST(DS2TVB6 AS STRING) 
 END as vitamin_b6_mg, 

CASE
            WHEN DS2TVB12 IS NULL THEN NULL 
ELSE SAFE_CAST(DS2TVB12 AS STRING) 
 END as vitamin_b12_mcg, 

CASE
            WHEN DS2TFA IS NULL THEN NULL 
ELSE SAFE_CAST(DS2TFA AS STRING) 
 END as folic_acid_mcg, 

CASE
            WHEN DS2TFDFE IS NULL THEN NULL 
ELSE SAFE_CAST(DS2TFDFE AS STRING) 
 END as folate_dfe_mcg, 

CASE
            WHEN DS2TCHL IS NULL THEN NULL 
ELSE SAFE_CAST(DS2TCHL AS STRING) 
 END as total_choline_mg, 

CASE
            WHEN DS2TVC IS NULL THEN NULL 
ELSE SAFE_CAST(DS2TVC AS STRING) 
 END as vitamin_c_mg, 

CASE
            WHEN DS2TVK IS NULL THEN NULL 
ELSE SAFE_CAST(DS2TVK AS STRING) 
 END as vitamin_k_mcg, 

CASE
            WHEN DS2TVD IS NULL THEN NULL 
ELSE SAFE_CAST(DS2TVD AS STRING) 
 END as vitamin_d_d2_d3_mcg, 

CASE
            WHEN DS2TCALC IS NULL THEN NULL 
ELSE SAFE_CAST(DS2TCALC AS STRING) 
 END as calcium_mg, 

CASE
            WHEN DS2TPHOS IS NULL THEN NULL 
ELSE SAFE_CAST(DS2TPHOS AS STRING) 
 END as phosphorus_mg, 

CASE
            WHEN DS2TMAGN IS NULL THEN NULL 
ELSE SAFE_CAST(DS2TMAGN AS STRING) 
 END as magnesium_mg, 

CASE
            WHEN DS2TIRON IS NULL THEN NULL 
ELSE SAFE_CAST(DS2TIRON AS STRING) 
 END as iron_mg, 

CASE
            WHEN DS2TZINC IS NULL THEN NULL 
ELSE SAFE_CAST(DS2TZINC AS STRING) 
 END as zinc_mg, 

CASE
            WHEN DS2TCOPP IS NULL THEN NULL 
ELSE SAFE_CAST(DS2TCOPP AS STRING) 
 END as copper_mg, 

CASE
            WHEN DS2TSODI IS NULL THEN NULL 
ELSE SAFE_CAST(DS2TSODI AS STRING) 
 END as sodium_mg, 

CASE
            WHEN DS2TPOTA IS NULL THEN NULL 
ELSE SAFE_CAST(DS2TPOTA AS STRING) 
 END as potassium_mg, 

CASE
            WHEN DS2TSELE IS NULL THEN NULL 
ELSE SAFE_CAST(DS2TSELE AS STRING) 
 END as selenium_mcg, 

CASE
            WHEN DS2TCAFF IS NULL THEN NULL 
ELSE SAFE_CAST(DS2TCAFF AS STRING) 
 END as caffeine_mg, 

CASE
            WHEN DS2TIODI IS NOT NULL THEN SAFE_CAST(DS2TIODI AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DS2TIODI IS NULL THEN NULL 
ELSE SAFE_CAST(DS2TIODI AS FLOAT64) 
 END as iodine_mcg, 

 FROM {{ ref('stg_dietary_supplement_use_24_hour_total_dietary_supplements_second_day_dietary') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/DS2TOT_J.htm
        