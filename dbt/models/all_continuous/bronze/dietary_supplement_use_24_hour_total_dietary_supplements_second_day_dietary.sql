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
            WHEN DR2DRSTZ = 1 THEN 'Reliable and met the minimum criteria' -- categorize numeric values
WHEN DR2DRSTZ = 2 THEN 'Not reliable or not met the minimum criteria' -- categorize numeric values
WHEN DR2DRSTZ = 4 THEN 'Reported consuming breast-milk' -- categorize numeric values
WHEN DR2DRSTZ = 5 THEN 'Not done' -- categorize numeric values
WHEN DR2DRSTZ IS NULL THEN NULL 
ELSE DR2DRSTZ 
 END as dietary_recall_status, 

CASE
            WHEN DR2EXMER IS NULL THEN NULL 
ELSE DR2EXMER 
 END as interviewer_id_code, 

CASE
            WHEN DRDINT = 1 THEN 'Day 1 only' -- categorize numeric values
WHEN DRDINT = 2 THEN 'Day 1 and day 2' -- categorize numeric values
WHEN DRDINT IS NULL THEN NULL 
ELSE DRDINT 
 END as number_of_days_of_intake, 

CASE
            WHEN DR2DBIH IS NULL THEN NULL 
ELSE DR2DBIH 
 END as of_days_b_w_intake_and_hh_interview, 

CASE
            WHEN DR2DAY = 1 THEN 'Sunday' -- categorize numeric values
WHEN DR2DAY = 2 THEN 'Monday' -- categorize numeric values
WHEN DR2DAY = 3 THEN 'Tuesday' -- categorize numeric values
WHEN DR2DAY = 4 THEN 'Wednesday' -- categorize numeric values
WHEN DR2DAY = 5 THEN 'Thursday' -- categorize numeric values
WHEN DR2DAY = 6 THEN 'Friday' -- categorize numeric values
WHEN DR2DAY = 7 THEN 'Saturday' -- categorize numeric values
WHEN DR2DAY IS NULL THEN NULL 
ELSE DR2DAY 
 END as intake_day_of_the_week, 

CASE
            WHEN DR2LANG = 1 THEN 'English' -- categorize numeric values
WHEN DR2LANG = 2 THEN 'Spanish' -- categorize numeric values
WHEN DR2LANG = 3 THEN 'English and Spanish' -- categorize numeric values
WHEN DR2LANG = 4 THEN 'Other' -- categorize numeric values
WHEN DR2LANG = 5 THEN 'Asian Languages' -- categorize numeric values
WHEN DR2LANG = 6 THEN 'Asian Languages and English' -- categorize numeric values
WHEN DR2LANG IS NULL THEN NULL 
ELSE DR2LANG 
 END as language_respondent_used_mostly, 

CASE
            WHEN DR2MRESP = '1' THEN 'SP' -- categorize string values 
WHEN DR2MRESP = '2' THEN 'Mother of SP' -- categorize string values 
WHEN DR2MRESP = '3' THEN 'Father of SP' -- categorize string values 
WHEN DR2MRESP = '5' THEN 'Spouse of SP' -- categorize string values 
WHEN DR2MRESP = '6' THEN 'Child of SP' -- categorize string values 
WHEN DR2MRESP = '7' THEN 'Grandparent of SP' -- categorize string values 
WHEN DR2MRESP = '8' THEN 'Friend, Partner, Non Relative' -- categorize string values 
WHEN DR2MRESP = '9' THEN 'Translator, not a HH member' -- categorize string values 
WHEN DR2MRESP = '10' THEN 'Child care provider, Caretaker' -- categorize string values 
WHEN DR2MRESP = '11' THEN 'Other Relative' -- categorize string values 
WHEN DR2MRESP = '77' THEN 'Refused' -- categorize string values 
WHEN DR2MRESP = '99' THEN 'Dont know' -- categorize string values 
WHEN DR2MRESP IS NULL THEN NULL 
ELSE DR2MRESP 
 END as main_respondent_for_this_interview, 

CASE
            WHEN DR2HELP = '1' THEN 'SP' -- categorize string values 
WHEN DR2HELP = '4' THEN 'Parent of SP' -- categorize string values 
WHEN DR2HELP = '5' THEN 'Spouse of SP' -- categorize string values 
WHEN DR2HELP = '6' THEN 'Child of SP' -- categorize string values 
WHEN DR2HELP = '7' THEN 'Grandparent of SP' -- categorize string values 
WHEN DR2HELP = '8' THEN 'Friend, Partner, Non Relative' -- categorize string values 
WHEN DR2HELP = '9' THEN 'Translator, not a HH member' -- categorize string values 
WHEN DR2HELP = '10' THEN 'Child care provider, Caretaker' -- categorize string values 
WHEN DR2HELP = '11' THEN 'Other Relative' -- categorize string values 
WHEN DR2HELP = '12' THEN 'No One' -- categorize string values 
WHEN DR2HELP = '77' THEN 'Refused' -- categorize string values 
WHEN DR2HELP = '99' THEN 'Dont know' -- categorize string values 
WHEN DR2HELP IS NULL THEN NULL 
ELSE DR2HELP 
 END as helped_in_responding_for_this_interview, 

CASE
            WHEN DS2DSCNT IS NULL THEN NULL 
ELSE DS2DSCNT 
 END as total_of_dietary_supplements_taken, 

CASE
            WHEN DS2DS = 1 THEN 'Yes' -- categorize numeric values
WHEN DS2DS = 2 THEN 'No' -- categorize numeric values
WHEN DS2DS = 7 THEN 'Refused' -- categorize numeric values
WHEN DS2DS = 9 THEN 'Dont know' -- categorize numeric values
WHEN DS2DS IS NULL THEN NULL 
ELSE DS2DS 
 END as any_dietary_supplements_taken, 

CASE
            WHEN DS2ANCNT IS NULL THEN NULL 
ELSE DS2ANCNT 
 END as total_of_antacids_taken, 

CASE
            WHEN DS2AN = 1 THEN 'Yes' -- categorize numeric values
WHEN DS2AN = 2 THEN 'No' -- categorize numeric values
WHEN DS2AN = 7 THEN 'Refused' -- categorize numeric values
WHEN DS2AN = 9 THEN 'Dont know' -- categorize numeric values
WHEN DS2AN IS NULL THEN NULL 
ELSE DS2AN 
 END as any_antacids_taken, 

CASE
            WHEN DS2TKCAL IS NULL THEN NULL 
ELSE DS2TKCAL 
 END as energy_kcal, 

CASE
            WHEN DS2TPROT IS NULL THEN NULL 
ELSE DS2TPROT 
 END as protein_gm, 

CASE
            WHEN DS2TCARB IS NULL THEN NULL 
ELSE DS2TCARB 
 END as carbohydrate_gm, 

CASE
            WHEN DS2TSUGR IS NULL THEN NULL 
ELSE DS2TSUGR 
 END as total_sugars_gm, 

CASE
            WHEN DS2TFIBE IS NULL THEN NULL 
ELSE DS2TFIBE 
 END as dietary_fiber_gm, 

CASE
            WHEN DS2TTFAT IS NULL THEN NULL 
ELSE DS2TTFAT 
 END as total_fat_gm, 

CASE
            WHEN DS2TSFAT IS NULL THEN NULL 
ELSE DS2TSFAT 
 END as total_saturated_fatty_acids_gm, 

CASE
            WHEN DS2TMFAT IS NULL THEN NULL 
ELSE DS2TMFAT 
 END as total_monounsaturated_fatty_acids_gm, 

CASE
            WHEN DS2TPFAT IS NULL THEN NULL 
ELSE DS2TPFAT 
 END as total_polyunsaturated_fatty_acids_gm, 

CASE
            WHEN DS2TCHOL IS NULL THEN NULL 
ELSE DS2TCHOL 
 END as cholesterol_mg, 

CASE
            WHEN DS2TLYCO IS NULL THEN NULL 
ELSE DS2TLYCO 
 END as lycopene_mcg, 

CASE
            WHEN DS2TLZ IS NULL THEN NULL 
ELSE DS2TLZ 
 END as lutein_zeaxanthin_mcg, 

CASE
            WHEN DS2TVB1 IS NULL THEN NULL 
ELSE DS2TVB1 
 END as thiamin_vitamin_b1_mg, 

CASE
            WHEN DS2TVB2 IS NULL THEN NULL 
ELSE DS2TVB2 
 END as riboflavin_vitamin_b2_mg, 

CASE
            WHEN DS2TNIAC IS NULL THEN NULL 
ELSE DS2TNIAC 
 END as niacin_mg, 

CASE
            WHEN DS2TVB6 IS NULL THEN NULL 
ELSE DS2TVB6 
 END as vitamin_b6_mg, 

CASE
            WHEN DS2TVB12 IS NULL THEN NULL 
ELSE DS2TVB12 
 END as vitamin_b12_mcg, 

CASE
            WHEN DS2TFA IS NULL THEN NULL 
ELSE DS2TFA 
 END as folic_acid_mcg, 

CASE
            WHEN DS2TFDFE IS NULL THEN NULL 
ELSE DS2TFDFE 
 END as folate_dfe_mcg, 

CASE
            WHEN DS2TCHL IS NULL THEN NULL 
ELSE DS2TCHL 
 END as total_choline_mg, 

CASE
            WHEN DS2TVC IS NULL THEN NULL 
ELSE DS2TVC 
 END as vitamin_c_mg, 

CASE
            WHEN DS2TVK IS NULL THEN NULL 
ELSE DS2TVK 
 END as vitamin_k_mcg, 

CASE
            WHEN DS2TVD IS NULL THEN NULL 
ELSE DS2TVD 
 END as vitamin_d_d2_d3_mcg, 

CASE
            WHEN DS2TCALC IS NULL THEN NULL 
ELSE DS2TCALC 
 END as calcium_mg, 

CASE
            WHEN DS2TPHOS IS NULL THEN NULL 
ELSE DS2TPHOS 
 END as phosphorus_mg, 

CASE
            WHEN DS2TMAGN IS NULL THEN NULL 
ELSE DS2TMAGN 
 END as magnesium_mg, 

CASE
            WHEN DS2TIRON IS NULL THEN NULL 
ELSE DS2TIRON 
 END as iron_mg, 

CASE
            WHEN DS2TZINC IS NULL THEN NULL 
ELSE DS2TZINC 
 END as zinc_mg, 

CASE
            WHEN DS2TCOPP IS NULL THEN NULL 
ELSE DS2TCOPP 
 END as copper_mg, 

CASE
            WHEN DS2TSODI IS NULL THEN NULL 
ELSE DS2TSODI 
 END as sodium_mg, 

CASE
            WHEN DS2TPOTA IS NULL THEN NULL 
ELSE DS2TPOTA 
 END as potassium_mg, 

CASE
            WHEN DS2TSELE IS NULL THEN NULL 
ELSE DS2TSELE 
 END as selenium_mcg, 

CASE
            WHEN DS2TCAFF IS NULL THEN NULL 
ELSE DS2TCAFF 
 END as caffeine_mg, 

CASE
            WHEN DS2TIODI IS NOT NULL THEN SAFE_CAST(DS2TIODI AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DS2TIODI IS NULL THEN NULL 
ELSE DS2TIODI 
 END as iodine_mcg, 

 FROM {{ ref('stg_dietary_supplement_use_24_hour_total_dietary_supplements_second_day_dietary') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/DS2TOT_J.htm
        