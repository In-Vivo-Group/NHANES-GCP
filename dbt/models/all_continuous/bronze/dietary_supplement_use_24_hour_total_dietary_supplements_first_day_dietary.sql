SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN WTDRD1 IS NULL THEN NULL 
ELSE WTDRD1 
 END as dietary_day_one_sample_weight, 

CASE
            WHEN WTDR2D IS NULL THEN NULL 
ELSE WTDR2D 
 END as dietary_two_day_sample_weight, 

CASE
            WHEN DR1DRSTZ = 1 THEN 'Reliable and met the minimum criteria' -- categorize numeric values
WHEN DR1DRSTZ = 2 THEN 'Not reliable or not met the minimum criteria' -- categorize numeric values
WHEN DR1DRSTZ = 4 THEN 'Reported consuming breast-milk' -- categorize numeric values
WHEN DR1DRSTZ = 5 THEN 'Not done' -- categorize numeric values
WHEN DR1DRSTZ IS NULL THEN NULL 
ELSE DR1DRSTZ 
 END as dietary_recall_status, 

CASE
            WHEN DR1EXMER IS NULL THEN NULL 
ELSE DR1EXMER 
 END as interviewer_id_code, 

CASE
            WHEN DRDINT = 1 THEN 'Day 1 only' -- categorize numeric values
WHEN DRDINT = 2 THEN 'Day 1 and day 2' -- categorize numeric values
WHEN DRDINT IS NULL THEN NULL 
ELSE DRDINT 
 END as number_of_days_of_intake, 

CASE
            WHEN DR1DBIH IS NULL THEN NULL 
ELSE DR1DBIH 
 END as of_days_b_w_intake_and_hh_interview, 

CASE
            WHEN DR1DAY = 1 THEN 'Sunday' -- categorize numeric values
WHEN DR1DAY = 2 THEN 'Monday' -- categorize numeric values
WHEN DR1DAY = 3 THEN 'Tuesday' -- categorize numeric values
WHEN DR1DAY = 4 THEN 'Wednesday' -- categorize numeric values
WHEN DR1DAY = 5 THEN 'Thursday' -- categorize numeric values
WHEN DR1DAY = 6 THEN 'Friday' -- categorize numeric values
WHEN DR1DAY = 7 THEN 'Saturday' -- categorize numeric values
WHEN DR1DAY IS NULL THEN NULL 
ELSE DR1DAY 
 END as intake_day_of_the_week, 

CASE
            WHEN DR1LANG = 1 THEN 'English' -- categorize numeric values
WHEN DR1LANG = 2 THEN 'Spanish' -- categorize numeric values
WHEN DR1LANG = 3 THEN 'English and Spanish' -- categorize numeric values
WHEN DR1LANG = 4 THEN 'Other' -- categorize numeric values
WHEN DR1LANG = 5 THEN 'Asian Languages' -- categorize numeric values
WHEN DR1LANG = 6 THEN 'Asian Languages and English' -- categorize numeric values
WHEN DR1LANG IS NULL THEN NULL 
ELSE DR1LANG 
 END as language_respondent_used_mostly, 

CASE
            WHEN DR1MRESP = '1' THEN 'SP' -- categorize string values 
WHEN DR1MRESP = '2' THEN 'Mother of SP' -- categorize string values 
WHEN DR1MRESP = '3' THEN 'Father of SP' -- categorize string values 
WHEN DR1MRESP = '5' THEN 'Spouse of SP' -- categorize string values 
WHEN DR1MRESP = '6' THEN 'Child of SP' -- categorize string values 
WHEN DR1MRESP = '7' THEN 'Grandparent of SP' -- categorize string values 
WHEN DR1MRESP = '8' THEN 'Friend, Partner, Non Relative' -- categorize string values 
WHEN DR1MRESP = '9' THEN 'Translator, not a HH member' -- categorize string values 
WHEN DR1MRESP = '10' THEN 'Child care provider, Caretaker' -- categorize string values 
WHEN DR1MRESP = '11' THEN 'Other Relative' -- categorize string values 
WHEN DR1MRESP = '77' THEN 'Refused' -- categorize string values 
WHEN DR1MRESP = '99' THEN 'Dont know' -- categorize string values 
WHEN DR1MRESP IS NULL THEN NULL 
ELSE DR1MRESP 
 END as main_respondent_for_this_interview, 

CASE
            WHEN DR1HELP = '1' THEN 'SP' -- categorize string values 
WHEN DR1HELP = '4' THEN 'Parent of SP' -- categorize string values 
WHEN DR1HELP = '5' THEN 'Spouse of SP' -- categorize string values 
WHEN DR1HELP = '6' THEN 'Child of SP' -- categorize string values 
WHEN DR1HELP = '7' THEN 'Grandparent of SP' -- categorize string values 
WHEN DR1HELP = '8' THEN 'Friend, Partner, Non Relative' -- categorize string values 
WHEN DR1HELP = '9' THEN 'Translator, not a HH member' -- categorize string values 
WHEN DR1HELP = '10' THEN 'Child care provider, Caretaker' -- categorize string values 
WHEN DR1HELP = '11' THEN 'Other Relative' -- categorize string values 
WHEN DR1HELP = '12' THEN 'No One' -- categorize string values 
WHEN DR1HELP = '77' THEN 'Refused' -- categorize string values 
WHEN DR1HELP = '99' THEN 'Dont know' -- categorize string values 
WHEN DR1HELP IS NULL THEN NULL 
ELSE DR1HELP 
 END as helped_in_responding_for_this_interview, 

CASE
            WHEN DS1DSCNT IS NULL THEN NULL 
ELSE DS1DSCNT 
 END as total_of_dietary_supplements_taken, 

CASE
            WHEN DS1DS = 1 THEN 'Yes' -- categorize numeric values
WHEN DS1DS = 2 THEN 'No' -- categorize numeric values
WHEN DS1DS = 7 THEN 'Refused' -- categorize numeric values
WHEN DS1DS = 9 THEN 'Dont know' -- categorize numeric values
WHEN DS1DS IS NULL THEN NULL 
ELSE DS1DS 
 END as any_dietary_supplements_taken, 

CASE
            WHEN DS1ANCNT IS NULL THEN NULL 
ELSE DS1ANCNT 
 END as total_of_antacids_taken, 

CASE
            WHEN DS1AN = 1 THEN 'Yes' -- categorize numeric values
WHEN DS1AN = 2 THEN 'No' -- categorize numeric values
WHEN DS1AN = 7 THEN 'Refused' -- categorize numeric values
WHEN DS1AN = 9 THEN 'Dont know' -- categorize numeric values
WHEN DS1AN IS NULL THEN NULL 
ELSE DS1AN 
 END as any_antacids_taken, 

CASE
            WHEN DS1TKCAL IS NULL THEN NULL 
ELSE DS1TKCAL 
 END as energy_kcal, 

CASE
            WHEN DS1TPROT IS NULL THEN NULL 
ELSE DS1TPROT 
 END as protein_gm, 

CASE
            WHEN DS1TCARB IS NULL THEN NULL 
ELSE DS1TCARB 
 END as carbohydrate_gm, 

CASE
            WHEN DS1TSUGR IS NULL THEN NULL 
ELSE DS1TSUGR 
 END as total_sugars_gm, 

CASE
            WHEN DS1TFIBE IS NULL THEN NULL 
ELSE DS1TFIBE 
 END as dietary_fiber_gm, 

CASE
            WHEN DS1TTFAT IS NULL THEN NULL 
ELSE DS1TTFAT 
 END as total_fat_gm, 

CASE
            WHEN DS1TSFAT IS NULL THEN NULL 
ELSE DS1TSFAT 
 END as total_saturated_fatty_acids_gm, 

CASE
            WHEN DS1TMFAT IS NULL THEN NULL 
ELSE DS1TMFAT 
 END as total_monounsaturated_fatty_acids_gm, 

CASE
            WHEN DS1TPFAT IS NULL THEN NULL 
ELSE DS1TPFAT 
 END as total_polyunsaturated_fatty_acids_gm, 

CASE
            WHEN DS1TCHOL IS NULL THEN NULL 
ELSE DS1TCHOL 
 END as cholesterol_mg, 

CASE
            WHEN DS1TLYCO IS NULL THEN NULL 
ELSE DS1TLYCO 
 END as lycopene_mcg, 

CASE
            WHEN DS1TLZ IS NULL THEN NULL 
ELSE DS1TLZ 
 END as lutein_zeaxanthin_mcg, 

CASE
            WHEN DS1TVB1 IS NULL THEN NULL 
ELSE DS1TVB1 
 END as thiamin_vitamin_b1_mg, 

CASE
            WHEN DS1TVB2 IS NULL THEN NULL 
ELSE DS1TVB2 
 END as riboflavin_vitamin_b2_mg, 

CASE
            WHEN DS1TNIAC IS NULL THEN NULL 
ELSE DS1TNIAC 
 END as niacin_mg, 

CASE
            WHEN DS1TVB6 IS NULL THEN NULL 
ELSE DS1TVB6 
 END as vitamin_b6_mg, 

CASE
            WHEN DS1TVB12 IS NULL THEN NULL 
ELSE DS1TVB12 
 END as vitamin_b12_mcg, 

CASE
            WHEN DS1TFA IS NULL THEN NULL 
ELSE DS1TFA 
 END as folic_acid_mcg, 

CASE
            WHEN DS1TFDFE IS NULL THEN NULL 
ELSE DS1TFDFE 
 END as folate_dfe_mcg, 

CASE
            WHEN DS1TCHL IS NULL THEN NULL 
ELSE DS1TCHL 
 END as total_choline_mg, 

CASE
            WHEN DS1TVC IS NULL THEN NULL 
ELSE DS1TVC 
 END as vitamin_c_mg, 

CASE
            WHEN DS1TVK IS NULL THEN NULL 
ELSE DS1TVK 
 END as vitamin_k_mcg, 

CASE
            WHEN DS1TVD IS NULL THEN NULL 
ELSE DS1TVD 
 END as vitamin_d_d2_d3_mcg, 

CASE
            WHEN DS1TCALC IS NULL THEN NULL 
ELSE DS1TCALC 
 END as calcium_mg, 

CASE
            WHEN DS1TPHOS IS NULL THEN NULL 
ELSE DS1TPHOS 
 END as phosphorus_mg, 

CASE
            WHEN DS1TMAGN IS NULL THEN NULL 
ELSE DS1TMAGN 
 END as magnesium_mg, 

CASE
            WHEN DS1TIRON IS NULL THEN NULL 
ELSE DS1TIRON 
 END as iron_mg, 

CASE
            WHEN DS1TZINC IS NULL THEN NULL 
ELSE DS1TZINC 
 END as zinc_mg, 

CASE
            WHEN DS1TCOPP IS NULL THEN NULL 
ELSE DS1TCOPP 
 END as copper_mg, 

CASE
            WHEN DS1TSODI IS NULL THEN NULL 
ELSE DS1TSODI 
 END as sodium_mg, 

CASE
            WHEN DS1TPOTA IS NULL THEN NULL 
ELSE DS1TPOTA 
 END as potassium_mg, 

CASE
            WHEN DS1TSELE IS NULL THEN NULL 
ELSE DS1TSELE 
 END as selenium_mcg, 

CASE
            WHEN DS1TCAFF IS NULL THEN NULL 
ELSE DS1TCAFF 
 END as caffeine_mg, 

CASE
            WHEN DS1TIODI IS NOT NULL THEN SAFE_CAST(DS1TIODI AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DS1TIODI IS NULL THEN NULL 
ELSE DS1TIODI 
 END as iodine_mcg, 

 FROM {{ ref('stg_dietary_supplement_use_24_hour_total_dietary_supplements_first_day_dietary') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/DS1TOT_J.htm
        