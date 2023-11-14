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
            WHEN SAFE_CAST(DR1DRSTZ AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Reliable and met the minimum criteria' -- categorize numeric values
WHEN SAFE_CAST(DR1DRSTZ AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Not reliable or not met the minimum criteria' -- categorize numeric values
WHEN SAFE_CAST(DR1DRSTZ AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN 'Reported consuming breast-milk' -- categorize numeric values
WHEN SAFE_CAST(DR1DRSTZ AS FLOAT64) = SAFE_CAST(5 AS FLOAT64) THEN 'Not done' -- categorize numeric values
WHEN DR1DRSTZ IS NULL THEN NULL 
ELSE SAFE_CAST(DR1DRSTZ AS STRING) 
 END as dietary_recall_status, 

CASE
            WHEN DR1EXMER IS NULL THEN NULL 
ELSE SAFE_CAST(DR1EXMER AS STRING) 
 END as interviewer_id_code, 

CASE
            WHEN SAFE_CAST(DRABF AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DRABF AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN DRABF IS NULL THEN NULL 
ELSE SAFE_CAST(DRABF AS STRING) 
 END as breast_fed_infant_either_day, 

CASE
            WHEN SAFE_CAST(DRDINT AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Day 1 only' -- categorize numeric values
WHEN SAFE_CAST(DRDINT AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Day 1 and day 2' -- categorize numeric values
WHEN DRDINT IS NULL THEN NULL 
ELSE SAFE_CAST(DRDINT AS STRING) 
 END as number_of_days_of_intake, 

CASE
            WHEN DR1DBIH IS NOT NULL THEN SAFE_CAST(DR1DBIH AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DR1DBIH IS NULL THEN NULL 
ELSE SAFE_CAST(DR1DBIH AS FLOAT64) 
 END as of_days_b_w_intake_and_hh_interview, 

CASE
            WHEN SAFE_CAST(DR1DAY AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Sunday' -- categorize numeric values
WHEN SAFE_CAST(DR1DAY AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Monday' -- categorize numeric values
WHEN SAFE_CAST(DR1DAY AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Tuesday' -- categorize numeric values
WHEN SAFE_CAST(DR1DAY AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN 'Wednesday' -- categorize numeric values
WHEN SAFE_CAST(DR1DAY AS FLOAT64) = SAFE_CAST(5 AS FLOAT64) THEN 'Thursday' -- categorize numeric values
WHEN SAFE_CAST(DR1DAY AS FLOAT64) = SAFE_CAST(6 AS FLOAT64) THEN 'Friday' -- categorize numeric values
WHEN SAFE_CAST(DR1DAY AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Saturday' -- categorize numeric values
WHEN DR1DAY IS NULL THEN NULL 
ELSE SAFE_CAST(DR1DAY AS STRING) 
 END as intake_day_of_the_week, 

CASE
            WHEN SAFE_CAST(DR1LANG AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'English' -- categorize numeric values
WHEN SAFE_CAST(DR1LANG AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Spanish' -- categorize numeric values
WHEN SAFE_CAST(DR1LANG AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'English and Spanish' -- categorize numeric values
WHEN SAFE_CAST(DR1LANG AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN 'Other' -- categorize numeric values
WHEN SAFE_CAST(DR1LANG AS FLOAT64) = SAFE_CAST(5 AS FLOAT64) THEN 'Asian Languages' -- categorize numeric values
WHEN SAFE_CAST(DR1LANG AS FLOAT64) = SAFE_CAST(6 AS FLOAT64) THEN 'Asian Languages and English' -- categorize numeric values
WHEN DR1LANG IS NULL THEN NULL 
ELSE SAFE_CAST(DR1LANG AS STRING) 
 END as language_respondent_used_mostly, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR1MRESP,'.0','') AS INT64) AS STRING) = '1' THEN 'SP' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR1MRESP,'.0','') AS INT64) AS STRING) = '2' THEN 'Mother of SP' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR1MRESP,'.0','') AS INT64) AS STRING) = '3' THEN 'Father of SP' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR1MRESP,'.0','') AS INT64) AS STRING) = '5' THEN 'Spouse of SP' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR1MRESP,'.0','') AS INT64) AS STRING) = '6' THEN 'Child of SP' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR1MRESP,'.0','') AS INT64) AS STRING) = '7' THEN 'Grandparent of SP' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR1MRESP,'.0','') AS INT64) AS STRING) = '8' THEN 'Friend, Partner, Non Relative' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR1MRESP,'.0','') AS INT64) AS STRING) = '9' THEN 'Translator, not a HH member' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR1MRESP,'.0','') AS INT64) AS STRING) = '10' THEN 'Child care provider, Caretaker' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR1MRESP,'.0','') AS INT64) AS STRING) = '11' THEN 'Other Relative' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR1MRESP,'.0','') AS INT64) AS STRING) = '77' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR1MRESP,'.0','') AS INT64) AS STRING) = '99' THEN 'Dont know' -- categorize string values 
WHEN DR1MRESP IS NULL THEN NULL 
ELSE SAFE_CAST(DR1MRESP AS STRING) 
 END as main_respondent_for_this_interview, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR1HELP,'.0','') AS INT64) AS STRING) = '1' THEN 'SP' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR1HELP,'.0','') AS INT64) AS STRING) = '4' THEN 'Parent of SP' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR1HELP,'.0','') AS INT64) AS STRING) = '5' THEN 'Spouse of SP' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR1HELP,'.0','') AS INT64) AS STRING) = '6' THEN 'Child of SP' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR1HELP,'.0','') AS INT64) AS STRING) = '7' THEN 'Grandparent of SP' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR1HELP,'.0','') AS INT64) AS STRING) = '8' THEN 'Friend, Partner, Non Relative' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR1HELP,'.0','') AS INT64) AS STRING) = '9' THEN 'Translator, not a HH member' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR1HELP,'.0','') AS INT64) AS STRING) = '10' THEN 'Child care provider, Caretaker' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR1HELP,'.0','') AS INT64) AS STRING) = '11' THEN 'Other Relative' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR1HELP,'.0','') AS INT64) AS STRING) = '12' THEN 'No One' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR1HELP,'.0','') AS INT64) AS STRING) = '77' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR1HELP,'.0','') AS INT64) AS STRING) = '99' THEN 'Dont know' -- categorize string values 
WHEN DR1HELP IS NULL THEN NULL 
ELSE SAFE_CAST(DR1HELP AS STRING) 
 END as helped_in_responding_for_this_interview, 

CASE
            WHEN SAFE_CAST(DBQ095Z AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Ordinary salt [includes regular iodized salt, sea salt and seasoning salts made with regular salt]' -- categorize numeric values
WHEN SAFE_CAST(DBQ095Z AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Lite salt' -- categorize numeric values
WHEN SAFE_CAST(DBQ095Z AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Salt substitute' -- categorize numeric values
WHEN SAFE_CAST(DBQ095Z AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN 'Doesnt use or add salt products at the table' -- categorize numeric values
WHEN SAFE_CAST(DBQ095Z AS FLOAT64) = SAFE_CAST(91 AS FLOAT64) THEN 'Other' -- categorize numeric values
WHEN SAFE_CAST(DBQ095Z AS FLOAT64) = SAFE_CAST(99 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DBQ095Z IS NULL THEN NULL 
ELSE SAFE_CAST(DBQ095Z AS STRING) 
 END as type_of_table_salt_used, 

CASE
            WHEN SAFE_CAST(DBD100 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Rarely' -- categorize numeric values
WHEN SAFE_CAST(DBD100 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Occasionally' -- categorize numeric values
WHEN SAFE_CAST(DBD100 AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Very often' -- categorize numeric values
WHEN SAFE_CAST(DBD100 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DBD100 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DBD100 IS NULL THEN NULL 
ELSE SAFE_CAST(DBD100 AS STRING) 
 END as how_often_add_salt_to_food_at_table, 

CASE
            WHEN SAFE_CAST(DRQSPREP AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Never' -- categorize numeric values
WHEN SAFE_CAST(DRQSPREP AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Rarely' -- categorize numeric values
WHEN SAFE_CAST(DRQSPREP AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Occasionally' -- categorize numeric values
WHEN SAFE_CAST(DRQSPREP AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN 'Very Often' -- categorize numeric values
WHEN SAFE_CAST(DRQSPREP AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DRQSPREP IS NULL THEN NULL 
ELSE SAFE_CAST(DRQSPREP AS STRING) 
 END as salt_used_in_preparation, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR1STY,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR1STY,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR1STY,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN DR1STY IS NULL THEN NULL 
ELSE SAFE_CAST(DR1STY AS STRING) 
 END as salt_used_at_table_yesterday, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR1SKY,'.0','') AS INT64) AS STRING) = '1' THEN 'Ordinary, sea, seasoned, or other flavored salt' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR1SKY,'.0','') AS INT64) AS STRING) = '2' THEN 'Lite salt' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR1SKY,'.0','') AS INT64) AS STRING) = '3' THEN 'Salt substitute' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR1SKY,'.0','') AS INT64) AS STRING) = '91' THEN 'Other' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR1SKY,'.0','') AS INT64) AS STRING) = '99' THEN 'Dont know' -- categorize string values 
WHEN DR1SKY IS NULL THEN NULL 
ELSE SAFE_CAST(DR1SKY AS STRING) 
 END as type_of_salt_used_yesterday, 

CASE
            WHEN SAFE_CAST(DRQSDIET AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DRQSDIET AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(DRQSDIET AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DRQSDIET IS NULL THEN NULL 
ELSE SAFE_CAST(DRQSDIET AS STRING) 
 END as on_special_diet, 

CASE
            WHEN SAFE_CAST(DRQSDT1 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Weight loss or low calorie diets' -- categorize numeric values
WHEN DRQSDT1 IS NULL THEN NULL 
ELSE SAFE_CAST(DRQSDT1 AS STRING) 
 END as weight_loss_low_calorie_diet, 

CASE
            WHEN SAFE_CAST(DRQSDT2 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Low fat or low cholesterol diet' -- categorize numeric values
WHEN DRQSDT2 IS NULL THEN NULL 
ELSE SAFE_CAST(DRQSDT2 AS STRING) 
 END as low_fat_low_cholesterol_diet, 

CASE
            WHEN SAFE_CAST(DRQSDT3 AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Low salt or low sodium diet (including diet to lower blood pressure or hypertension)' -- categorize numeric values
WHEN DRQSDT3 IS NULL THEN NULL 
ELSE SAFE_CAST(DRQSDT3 AS STRING) 
 END as low_salt_low_sodium_diet, 

CASE
            WHEN SAFE_CAST(DRQSDT4 AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN 'Sugar free or low sugar diet' -- categorize numeric values
WHEN DRQSDT4 IS NULL THEN NULL 
ELSE SAFE_CAST(DRQSDT4 AS STRING) 
 END as sugar_free_low_sugar_diet, 

CASE
            WHEN SAFE_CAST(DRQSDT5 AS FLOAT64) = SAFE_CAST(5 AS FLOAT64) THEN 'Low fiber or low residue diet' -- categorize numeric values
WHEN DRQSDT5 IS NULL THEN NULL 
ELSE SAFE_CAST(DRQSDT5 AS STRING) 
 END as low_fiber_diet, 

CASE
            WHEN SAFE_CAST(DRQSDT6 AS FLOAT64) = SAFE_CAST(6 AS FLOAT64) THEN 'High fiber or high residue diet' -- categorize numeric values
WHEN DRQSDT6 IS NULL THEN NULL 
ELSE SAFE_CAST(DRQSDT6 AS STRING) 
 END as high_fiber_diet, 

CASE
            WHEN SAFE_CAST(DRQSDT7 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Diabetic diet (including gestational diabetic diets)' -- categorize numeric values
WHEN DRQSDT7 IS NULL THEN NULL 
ELSE SAFE_CAST(DRQSDT7 AS STRING) 
 END as diabetic_diet, 

CASE
            WHEN SAFE_CAST(DRQSDT8 AS FLOAT64) = SAFE_CAST(8 AS FLOAT64) THEN 'Weight gain/Muscle building diet' -- categorize numeric values
WHEN DRQSDT8 IS NULL THEN NULL 
ELSE SAFE_CAST(DRQSDT8 AS STRING) 
 END as weight_gain_muscle_building_diet, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DRQSDT9,'.0','') AS INT64) AS STRING) = '9' THEN 'Low carbohydrate diet' -- categorize string values 
WHEN DRQSDT9 IS NULL THEN NULL 
ELSE SAFE_CAST(DRQSDT9 AS STRING) 
 END as low_carbohydrate_diet, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DRQSDT10,'.0','') AS INT64) AS STRING) = '10' THEN 'High protein diet' -- categorize string values 
WHEN DRQSDT10 IS NULL THEN NULL 
ELSE SAFE_CAST(DRQSDT10 AS STRING) 
 END as high_protein_diet, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DRQSDT11,'.0','') AS INT64) AS STRING) = '11' THEN 'Gluten-free/Celiac diet' -- categorize string values 
WHEN DRQSDT11 IS NULL THEN NULL 
ELSE SAFE_CAST(DRQSDT11 AS STRING) 
 END as gluten_free_celiac_diet, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DRQSDT12,'.0','') AS INT64) AS STRING) = '12' THEN 'Renal/Kidney diet' -- categorize string values 
WHEN DRQSDT12 IS NULL THEN NULL 
ELSE SAFE_CAST(DRQSDT12 AS STRING) 
 END as renal_kidney_diet, 

CASE
            WHEN SAFE_CAST(DRQSDT91 AS FLOAT64) = SAFE_CAST(91 AS FLOAT64) THEN 'Other special diet' -- categorize numeric values
WHEN DRQSDT91 IS NULL THEN NULL 
ELSE SAFE_CAST(DRQSDT91 AS STRING) 
 END as other_special_diet, 

CASE
            WHEN DR1TNUMF IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TNUMF AS STRING) 
 END as number_of_foods_beverages_reported, 

CASE
            WHEN DR1TKCAL IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TKCAL AS STRING) 
 END as energy_kcal, 

CASE
            WHEN DR1TPROT IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TPROT AS STRING) 
 END as protein_gm, 

CASE
            WHEN DR1TCARB IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TCARB AS STRING) 
 END as carbohydrate_gm, 

CASE
            WHEN DR1TSUGR IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TSUGR AS STRING) 
 END as total_sugars_gm, 

CASE
            WHEN DR1TFIBE IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TFIBE AS STRING) 
 END as dietary_fiber_gm, 

CASE
            WHEN DR1TTFAT IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TTFAT AS STRING) 
 END as total_fat_gm, 

CASE
            WHEN DR1TSFAT IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TSFAT AS STRING) 
 END as total_saturated_fatty_acids_gm, 

CASE
            WHEN DR1TMFAT IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TMFAT AS STRING) 
 END as total_monounsaturated_fatty_acids_gm, 

CASE
            WHEN DR1TPFAT IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TPFAT AS STRING) 
 END as total_polyunsaturated_fatty_acids_gm, 

CASE
            WHEN DR1TCHOL IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TCHOL AS STRING) 
 END as cholesterol_mg, 

CASE
            WHEN DR1TATOC IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TATOC AS STRING) 
 END as vitamin_e_as_alpha_tocopherol_mg, 

CASE
            WHEN DR1TATOA IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TATOA AS STRING) 
 END as added_alpha_tocopherol_vitamin_e_mg, 

CASE
            WHEN DR1TRET IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TRET AS STRING) 
 END as retinol_mcg, 

CASE
            WHEN DR1TVARA IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TVARA AS STRING) 
 END as vitamin_a_rae_mcg, 

CASE
            WHEN DR1TACAR IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TACAR AS STRING) 
 END as alpha_carotene_mcg, 

CASE
            WHEN DR1TBCAR IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TBCAR AS STRING) 
 END as beta_carotene_mcg, 

CASE
            WHEN DR1TCRYP IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TCRYP AS STRING) 
 END as beta_cryptoxanthin_mcg, 

CASE
            WHEN DR1TLYCO IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TLYCO AS STRING) 
 END as lycopene_mcg, 

CASE
            WHEN DR1TLZ IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TLZ AS STRING) 
 END as lutein_zeaxanthin_mcg, 

CASE
            WHEN DR1TVB1 IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TVB1 AS STRING) 
 END as thiamin_vitamin_b1_mg, 

CASE
            WHEN DR1TVB2 IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TVB2 AS STRING) 
 END as riboflavin_vitamin_b2_mg, 

CASE
            WHEN DR1TNIAC IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TNIAC AS STRING) 
 END as niacin_mg, 

CASE
            WHEN DR1TVB6 IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TVB6 AS STRING) 
 END as vitamin_b6_mg, 

CASE
            WHEN DR1TFOLA IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TFOLA AS STRING) 
 END as total_folate_mcg, 

CASE
            WHEN DR1TFA IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TFA AS STRING) 
 END as folic_acid_mcg, 

CASE
            WHEN DR1TFF IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TFF AS STRING) 
 END as food_folate_mcg, 

CASE
            WHEN DR1TFDFE IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TFDFE AS STRING) 
 END as folate_dfe_mcg, 

CASE
            WHEN DR1TCHL IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TCHL AS STRING) 
 END as total_choline_mg, 

CASE
            WHEN DR1TVB12 IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TVB12 AS STRING) 
 END as vitamin_b12_mcg, 

CASE
            WHEN DR1TB12A IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TB12A AS STRING) 
 END as added_vitamin_b12_mcg, 

CASE
            WHEN DR1TVC IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TVC AS STRING) 
 END as vitamin_c_mg, 

CASE
            WHEN DR1TVD IS NOT NULL THEN SAFE_CAST(DR1TVD AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DR1TVD IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TVD AS FLOAT64) 
 END as vitamin_d_d2_d3_mcg, 

CASE
            WHEN DR1TVK IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TVK AS FLOAT64) 
 END as vitamin_k_mcg, 

CASE
            WHEN DR1TCALC IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TCALC AS FLOAT64) 
 END as calcium_mg, 

CASE
            WHEN DR1TPHOS IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TPHOS AS FLOAT64) 
 END as phosphorus_mg, 

CASE
            WHEN DR1TMAGN IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TMAGN AS FLOAT64) 
 END as magnesium_mg, 

CASE
            WHEN DR1TIRON IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TIRON AS FLOAT64) 
 END as iron_mg, 

CASE
            WHEN DR1TZINC IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TZINC AS FLOAT64) 
 END as zinc_mg, 

CASE
            WHEN DR1TCOPP IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TCOPP AS FLOAT64) 
 END as copper_mg, 

CASE
            WHEN DR1TSODI IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TSODI AS FLOAT64) 
 END as sodium_mg, 

CASE
            WHEN DR1TPOTA IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TPOTA AS FLOAT64) 
 END as potassium_mg, 

CASE
            WHEN DR1TSELE IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TSELE AS FLOAT64) 
 END as selenium_mcg, 

CASE
            WHEN DR1TCAFF IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TCAFF AS FLOAT64) 
 END as caffeine_mg, 

CASE
            WHEN DR1TTHEO IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TTHEO AS FLOAT64) 
 END as theobromine_mg, 

CASE
            WHEN DR1TALCO IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TALCO AS FLOAT64) 
 END as alcohol_gm, 

CASE
            WHEN DR1TMOIS IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TMOIS AS FLOAT64) 
 END as moisture_gm, 

CASE
            WHEN DR1TS040 IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TS040 AS FLOAT64) 
 END as sfa_4_0_butanoic_gm, 

CASE
            WHEN DR1TS060 IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TS060 AS FLOAT64) 
 END as sfa_6_0_hexanoic_gm, 

CASE
            WHEN DR1TS080 IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TS080 AS FLOAT64) 
 END as sfa_8_0_octanoic_gm, 

CASE
            WHEN DR1TS100 IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TS100 AS FLOAT64) 
 END as sfa_10_0_decanoic_gm, 

CASE
            WHEN DR1TS120 IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TS120 AS FLOAT64) 
 END as sfa_12_0_dodecanoic_gm, 

CASE
            WHEN DR1TS140 IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TS140 AS FLOAT64) 
 END as sfa_14_0_tetradecanoic_gm, 

CASE
            WHEN DR1TS160 IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TS160 AS FLOAT64) 
 END as sfa_16_0_hexadecanoic_gm, 

CASE
            WHEN DR1TS180 IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TS180 AS FLOAT64) 
 END as sfa_18_0_octadecanoic_gm, 

CASE
            WHEN DR1TM161 IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TM161 AS FLOAT64) 
 END as mfa_16_1_hexadecenoic_gm, 

CASE
            WHEN DR1TM181 IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TM181 AS FLOAT64) 
 END as mfa_18_1_octadecenoic_gm, 

CASE
            WHEN DR1TM201 IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TM201 AS FLOAT64) 
 END as mfa_20_1_eicosenoic_gm, 

CASE
            WHEN DR1TM221 IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TM221 AS FLOAT64) 
 END as mfa_22_1_docosenoic_gm, 

CASE
            WHEN DR1TP182 IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TP182 AS FLOAT64) 
 END as pfa_18_2_octadecadienoic_gm, 

CASE
            WHEN DR1TP183 IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TP183 AS FLOAT64) 
 END as pfa_18_3_octadecatrienoic_gm, 

CASE
            WHEN DR1TP184 IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TP184 AS FLOAT64) 
 END as pfa_18_4_octadecatetraenoic_gm, 

CASE
            WHEN DR1TP204 IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TP204 AS FLOAT64) 
 END as pfa_20_4_eicosatetraenoic_gm, 

CASE
            WHEN DR1TP205 IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TP205 AS FLOAT64) 
 END as pfa_20_5_eicosapentaenoic_gm, 

CASE
            WHEN DR1TP225 IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TP225 AS FLOAT64) 
 END as pfa_22_5_docosapentaenoic_gm, 

CASE
            WHEN DR1TP226 IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TP226 AS FLOAT64) 
 END as pfa_22_6_docosahexaenoic_gm, 

CASE
            WHEN SAFE_CAST(DR1_300 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Much more than usual' -- categorize numeric values
WHEN SAFE_CAST(DR1_300 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Usual' -- categorize numeric values
WHEN SAFE_CAST(DR1_300 AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Much less than usual' -- categorize numeric values
WHEN SAFE_CAST(DR1_300 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DR1_300 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DR1_300 IS NULL THEN NULL 
ELSE SAFE_CAST(DR1_300 AS STRING) 
 END as compare_food_consumed_yesterday_to_usual, 

CASE
            WHEN DR1_320Z IS NULL THEN NULL 
ELSE SAFE_CAST(DR1_320Z AS STRING) 
 END as total_plain_water_drank_yesterday_gm, 

CASE
            WHEN DR1_330Z IS NULL THEN NULL 
ELSE SAFE_CAST(DR1_330Z AS STRING) 
 END as total_tap_water_drank_yesterday_gm, 

CASE
            WHEN DR1BWATZ IS NULL THEN NULL 
ELSE SAFE_CAST(DR1BWATZ AS STRING) 
 END as total_bottled_water_drank_yesterday_gm, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR1TWSZ,'.0','') AS INT64) AS STRING) = '1' THEN 'Community supply' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR1TWSZ,'.0','') AS INT64) AS STRING) = '4' THEN 'Dont drink tap water' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR1TWSZ,'.0','') AS INT64) AS STRING) = '91' THEN 'Other' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR1TWSZ,'.0','') AS INT64) AS STRING) = '99' THEN 'Dont know' -- categorize string values 
WHEN DR1TWSZ IS NULL THEN NULL 
ELSE SAFE_CAST(DR1TWSZ AS STRING) 
 END as tap_water_source, 

CASE
            WHEN SAFE_CAST(DRD340 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DRD340 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(DRD340 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DRD340 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DRD340 IS NULL THEN NULL 
ELSE SAFE_CAST(DRD340 AS STRING) 
 END as shellfish_eaten_during_past_30_days, 

CASE
            WHEN SAFE_CAST(DRD350A AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DRD350A AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN DRD350A IS NULL THEN NULL 
ELSE SAFE_CAST(DRD350A AS STRING) 
 END as clams_eaten_during_past_30_days, 

CASE
            WHEN DRD350AQ IS NULL THEN NULL 
ELSE SAFE_CAST(DRD350AQ AS STRING) 
 END as of_times_clams_eaten_in_past_30_days, 

CASE
            WHEN SAFE_CAST(DRD350B AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DRD350B AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN DRD350B IS NULL THEN NULL 
ELSE SAFE_CAST(DRD350B AS STRING) 
 END as crabs_eaten_during_past_30_days, 

CASE
            WHEN DRD350BQ IS NULL THEN NULL 
ELSE SAFE_CAST(DRD350BQ AS STRING) 
 END as of_times_crabs_eaten_in_past_30_days, 

CASE
            WHEN SAFE_CAST(DRD350C AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DRD350C AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN DRD350C IS NULL THEN NULL 
ELSE SAFE_CAST(DRD350C AS STRING) 
 END as crayfish_eaten_during_past_30_days, 

CASE
            WHEN DRD350CQ IS NULL THEN NULL 
ELSE SAFE_CAST(DRD350CQ AS STRING) 
 END as of_times_crayfish_eaten_past_30_days, 

CASE
            WHEN SAFE_CAST(DRD350D AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DRD350D AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN DRD350D IS NULL THEN NULL 
ELSE SAFE_CAST(DRD350D AS STRING) 
 END as lobsters_eaten_during_past_30_days, 

CASE
            WHEN DRD350DQ IS NULL THEN NULL 
ELSE SAFE_CAST(DRD350DQ AS STRING) 
 END as of_times_lobsters_eaten_past_30_days, 

CASE
            WHEN SAFE_CAST(DRD350E AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DRD350E AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN DRD350E IS NULL THEN NULL 
ELSE SAFE_CAST(DRD350E AS STRING) 
 END as mussels_eaten_during_past_30_days, 

CASE
            WHEN DRD350EQ IS NULL THEN NULL 
ELSE SAFE_CAST(DRD350EQ AS STRING) 
 END as of_times_mussels_eaten_in_past_30_days, 

CASE
            WHEN SAFE_CAST(DRD350F AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DRD350F AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN DRD350F IS NULL THEN NULL 
ELSE SAFE_CAST(DRD350F AS STRING) 
 END as oysters_eaten_during_past_30_days, 

CASE
            WHEN DRD350FQ IS NULL THEN NULL 
ELSE SAFE_CAST(DRD350FQ AS STRING) 
 END as of_times_oysters_eaten_in_past_30_days, 

CASE
            WHEN SAFE_CAST(DRD350G AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DRD350G AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN DRD350G IS NULL THEN NULL 
ELSE SAFE_CAST(DRD350G AS STRING) 
 END as scallops_eaten_during_past_30_days, 

CASE
            WHEN DRD350GQ IS NULL THEN NULL 
ELSE SAFE_CAST(DRD350GQ AS STRING) 
 END as of_times_scallops_eaten_past_30_days, 

CASE
            WHEN SAFE_CAST(DRD350H AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DRD350H AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN DRD350H IS NULL THEN NULL 
ELSE SAFE_CAST(DRD350H AS STRING) 
 END as shrimp_eaten_during_past_30_days, 

CASE
            WHEN DRD350HQ IS NULL THEN NULL 
ELSE SAFE_CAST(DRD350HQ AS STRING) 
 END as of_times_shrimp_eaten_in_past_30_days, 

CASE
            WHEN SAFE_CAST(DRD350I AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DRD350I AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN DRD350I IS NULL THEN NULL 
ELSE SAFE_CAST(DRD350I AS STRING) 
 END as other_shellfish_eaten_past_30_days, 

CASE
            WHEN DRD350IQ IS NULL THEN NULL 
ELSE SAFE_CAST(DRD350IQ AS STRING) 
 END as of_times_other_shellfish_eaten, 

CASE
            WHEN SAFE_CAST(DRD350J AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DRD350J AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN DRD350J IS NULL THEN NULL 
ELSE SAFE_CAST(DRD350J AS STRING) 
 END as other_unknown_shellfish_eaten_past_30_d, 

CASE
            WHEN DRD350JQ IS NULL THEN NULL 
ELSE SAFE_CAST(DRD350JQ AS STRING) 
 END as of_times_other_unknown_shellfish_eaten, 

CASE
            WHEN SAFE_CAST(DRD350K AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DRD350K AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN DRD350K IS NULL THEN NULL 
ELSE SAFE_CAST(DRD350K AS STRING) 
 END as refused_on_shellfish_eaten_past_30_days, 

CASE
            WHEN SAFE_CAST(DRD360 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DRD360 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(DRD360 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DRD360 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DRD360 IS NULL THEN NULL 
ELSE SAFE_CAST(DRD360 AS STRING) 
 END as fish_eaten_during_past_30_days, 

CASE
            WHEN SAFE_CAST(DRD370A AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DRD370A AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN DRD370A IS NULL THEN NULL 
ELSE SAFE_CAST(DRD370A AS STRING) 
 END as breaded_fish_products_eaten_past_30_days, 

CASE
            WHEN DRD370AQ IS NULL THEN NULL 
ELSE SAFE_CAST(DRD370AQ AS STRING) 
 END as of_times_breaded_fish_products_eaten, 

CASE
            WHEN SAFE_CAST(DRD370B AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DRD370B AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN DRD370B IS NULL THEN NULL 
ELSE SAFE_CAST(DRD370B AS STRING) 
 END as tuna_eaten_during_past_30_days, 

CASE
            WHEN DRD370BQ IS NULL THEN NULL 
ELSE SAFE_CAST(DRD370BQ AS STRING) 
 END as of_times_tuna_eaten_in_past_30_days, 

CASE
            WHEN SAFE_CAST(DRD370C AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DRD370C AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN DRD370C IS NULL THEN NULL 
ELSE SAFE_CAST(DRD370C AS STRING) 
 END as bass_eaten_during_past_30_days, 

CASE
            WHEN DRD370CQ IS NULL THEN NULL 
ELSE SAFE_CAST(DRD370CQ AS STRING) 
 END as of_times_bass_eaten_in_past_30_days, 

CASE
            WHEN SAFE_CAST(DRD370D AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DRD370D AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN DRD370D IS NULL THEN NULL 
ELSE SAFE_CAST(DRD370D AS STRING) 
 END as catfish_eaten_during_past_30_days, 

CASE
            WHEN DRD370DQ IS NULL THEN NULL 
ELSE SAFE_CAST(DRD370DQ AS STRING) 
 END as of_times_catfish_eaten_in_past_30_days, 

CASE
            WHEN SAFE_CAST(DRD370E AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DRD370E AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN DRD370E IS NULL THEN NULL 
ELSE SAFE_CAST(DRD370E AS STRING) 
 END as cod_eaten_during_past_30_days, 

CASE
            WHEN DRD370EQ IS NULL THEN NULL 
ELSE SAFE_CAST(DRD370EQ AS STRING) 
 END as of_times_cod_eaten_in_past_30_days, 

CASE
            WHEN SAFE_CAST(DRD370F AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DRD370F AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN DRD370F IS NULL THEN NULL 
ELSE SAFE_CAST(DRD370F AS STRING) 
 END as flatfish_eaten_during_past_30_days, 

CASE
            WHEN DRD370FQ IS NULL THEN NULL 
ELSE SAFE_CAST(DRD370FQ AS STRING) 
 END as of_times_flatfish_eaten_past_30_days, 

CASE
            WHEN SAFE_CAST(DRD370G AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DRD370G AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN DRD370G IS NULL THEN NULL 
ELSE SAFE_CAST(DRD370G AS STRING) 
 END as haddock_eaten_during_past_30_days, 

CASE
            WHEN DRD370GQ IS NULL THEN NULL 
ELSE SAFE_CAST(DRD370GQ AS STRING) 
 END as of_times_haddock_eaten_in_past_30_days, 

CASE
            WHEN SAFE_CAST(DRD370H AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DRD370H AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN DRD370H IS NULL THEN NULL 
ELSE SAFE_CAST(DRD370H AS STRING) 
 END as mackerel_eaten_during_past_30_days, 

CASE
            WHEN DRD370HQ IS NULL THEN NULL 
ELSE SAFE_CAST(DRD370HQ AS STRING) 
 END as of_times_mackerel_eaten_past_30_days, 

CASE
            WHEN SAFE_CAST(DRD370I AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DRD370I AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN DRD370I IS NULL THEN NULL 
ELSE SAFE_CAST(DRD370I AS STRING) 
 END as perch_eaten_during_past_30_days, 

CASE
            WHEN DRD370IQ IS NULL THEN NULL 
ELSE SAFE_CAST(DRD370IQ AS STRING) 
 END as of_times_perch_eaten_in_past_30_days, 

CASE
            WHEN SAFE_CAST(DRD370J AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DRD370J AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN DRD370J IS NULL THEN NULL 
ELSE SAFE_CAST(DRD370J AS STRING) 
 END as pike_eaten_during_past_30_days, 

CASE
            WHEN DRD370JQ IS NULL THEN NULL 
ELSE SAFE_CAST(DRD370JQ AS STRING) 
 END as of_times_pike_eaten_in_past_30_days, 

CASE
            WHEN SAFE_CAST(DRD370K AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DRD370K AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN DRD370K IS NULL THEN NULL 
ELSE SAFE_CAST(DRD370K AS STRING) 
 END as pollock_eaten_during_past_30_days, 

CASE
            WHEN DRD370KQ IS NULL THEN NULL 
ELSE SAFE_CAST(DRD370KQ AS STRING) 
 END as of_times_pollock_eaten_in_past_30_days, 

CASE
            WHEN SAFE_CAST(DRD370L AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DRD370L AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN DRD370L IS NULL THEN NULL 
ELSE SAFE_CAST(DRD370L AS STRING) 
 END as porgy_eaten_during_past_30_days, 

CASE
            WHEN DRD370LQ IS NULL THEN NULL 
ELSE SAFE_CAST(DRD370LQ AS STRING) 
 END as of_times_porgy_eaten_in_past_30_days, 

CASE
            WHEN SAFE_CAST(DRD370M AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DRD370M AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN DRD370M IS NULL THEN NULL 
ELSE SAFE_CAST(DRD370M AS STRING) 
 END as salmon_eaten_during_past_30_days, 

CASE
            WHEN DRD370MQ IS NULL THEN NULL 
ELSE SAFE_CAST(DRD370MQ AS STRING) 
 END as of_times_salmon_eaten_in_past_30_days, 

CASE
            WHEN SAFE_CAST(DRD370N AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DRD370N AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN DRD370N IS NULL THEN NULL 
ELSE SAFE_CAST(DRD370N AS STRING) 
 END as sardines_eaten_during_past_30_days, 

CASE
            WHEN DRD370NQ IS NULL THEN NULL 
ELSE SAFE_CAST(DRD370NQ AS STRING) 
 END as of_times_sardines_eaten_past_30_days, 

CASE
            WHEN SAFE_CAST(DRD370O AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DRD370O AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN DRD370O IS NULL THEN NULL 
ELSE SAFE_CAST(DRD370O AS STRING) 
 END as sea_bass_eaten_during_past_30_days, 

CASE
            WHEN DRD370OQ IS NULL THEN NULL 
ELSE SAFE_CAST(DRD370OQ AS STRING) 
 END as of_times_sea_bass_eaten_past_30_days, 

CASE
            WHEN SAFE_CAST(DRD370P AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DRD370P AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN DRD370P IS NULL THEN NULL 
ELSE SAFE_CAST(DRD370P AS STRING) 
 END as shark_eaten_during_past_30_days, 

CASE
            WHEN DRD370PQ IS NULL THEN NULL 
ELSE SAFE_CAST(DRD370PQ AS STRING) 
 END as of_times_shark_eaten_in_past_30_days, 

CASE
            WHEN SAFE_CAST(DRD370Q AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DRD370Q AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN DRD370Q IS NULL THEN NULL 
ELSE SAFE_CAST(DRD370Q AS STRING) 
 END as swordfish_eaten_during_past_30_days, 

CASE
            WHEN DRD370QQ IS NULL THEN NULL 
ELSE SAFE_CAST(DRD370QQ AS STRING) 
 END as of_times_swordfish_eaten_past_30_days, 

CASE
            WHEN SAFE_CAST(DRD370R AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DRD370R AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN DRD370R IS NULL THEN NULL 
ELSE SAFE_CAST(DRD370R AS STRING) 
 END as trout_eaten_during_past_30_days, 

CASE
            WHEN DRD370RQ IS NULL THEN NULL 
ELSE SAFE_CAST(DRD370RQ AS STRING) 
 END as of_times_trout_eaten_in_past_30_days, 

CASE
            WHEN SAFE_CAST(DRD370S AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DRD370S AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN DRD370S IS NULL THEN NULL 
ELSE SAFE_CAST(DRD370S AS STRING) 
 END as walleye_eaten_during_past_30_days, 

CASE
            WHEN DRD370SQ IS NULL THEN NULL 
ELSE SAFE_CAST(DRD370SQ AS STRING) 
 END as of_times_walleye_eaten_in_past_30_days, 

CASE
            WHEN SAFE_CAST(DRD370T AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DRD370T AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN DRD370T IS NULL THEN NULL 
ELSE SAFE_CAST(DRD370T AS STRING) 
 END as other_fish_eaten_during_past_30_days, 

CASE
            WHEN DRD370TQ IS NULL THEN NULL 
ELSE SAFE_CAST(DRD370TQ AS STRING) 
 END as of_times_other_fish_eaten_past_30_days, 

CASE
            WHEN SAFE_CAST(DRD370U AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DRD370U AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN DRD370U IS NULL THEN NULL 
ELSE SAFE_CAST(DRD370U AS STRING) 
 END as other_unknown_fish_eaten_in_past_30_days, 

CASE
            WHEN DRD370UQ IS NULL THEN NULL 
ELSE SAFE_CAST(DRD370UQ AS STRING) 
 END as of_times_other_unknown_fish_eaten, 

CASE
            WHEN SAFE_CAST(DRD370V AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DRD370V AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN DRD370V IS NULL THEN NULL 
ELSE SAFE_CAST(DRD370V AS STRING) 
 END as refused_on_fish_eaten_past_30_days, 

 FROM {{ ref('stg_dietary_interview_total_nutrient_intakes_first_day_dietary') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/DR1TOT_J.htm
        