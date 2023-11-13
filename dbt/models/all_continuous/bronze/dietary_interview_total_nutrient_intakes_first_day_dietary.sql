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
            WHEN DRABF = 1 THEN 'Yes' -- categorize numeric values
WHEN DRABF = 2 THEN 'No' -- categorize numeric values
WHEN DRABF IS NULL THEN NULL 
ELSE DRABF 
 END as breast_fed_infant_either_day, 

CASE
            WHEN DRDINT = 1 THEN 'Day 1 only' -- categorize numeric values
WHEN DRDINT = 2 THEN 'Day 1 and day 2' -- categorize numeric values
WHEN DRDINT IS NULL THEN NULL 
ELSE DRDINT 
 END as number_of_days_of_intake, 

CASE
            WHEN DR1DBIH IS NOT NULL THEN SAFE_CAST(DR1DBIH AS FLOAT64) -- correct wrong data types for numerical data 
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
            WHEN DBQ095Z = 1 THEN 'Ordinary salt [includes regular iodized salt, sea salt and seasoning salts made with regular salt]' -- categorize numeric values
WHEN DBQ095Z = 2 THEN 'Lite salt' -- categorize numeric values
WHEN DBQ095Z = 3 THEN 'Salt substitute' -- categorize numeric values
WHEN DBQ095Z = 4 THEN 'Doesnt use or add salt products at the table' -- categorize numeric values
WHEN DBQ095Z = 91 THEN 'Other' -- categorize numeric values
WHEN DBQ095Z = 99 THEN 'Dont know' -- categorize numeric values
WHEN DBQ095Z IS NULL THEN NULL 
ELSE DBQ095Z 
 END as type_of_table_salt_used, 

CASE
            WHEN DBD100 = 1 THEN 'Rarely' -- categorize numeric values
WHEN DBD100 = 2 THEN 'Occasionally' -- categorize numeric values
WHEN DBD100 = 3 THEN 'Very often' -- categorize numeric values
WHEN DBD100 = 7 THEN 'Refused' -- categorize numeric values
WHEN DBD100 = 9 THEN 'Dont know' -- categorize numeric values
WHEN DBD100 IS NULL THEN NULL 
ELSE DBD100 
 END as how_often_add_salt_to_food_at_table, 

CASE
            WHEN DRQSPREP = 1 THEN 'Never' -- categorize numeric values
WHEN DRQSPREP = 2 THEN 'Rarely' -- categorize numeric values
WHEN DRQSPREP = 3 THEN 'Occasionally' -- categorize numeric values
WHEN DRQSPREP = 4 THEN 'Very Often' -- categorize numeric values
WHEN DRQSPREP = 9 THEN 'Dont know' -- categorize numeric values
WHEN DRQSPREP IS NULL THEN NULL 
ELSE DRQSPREP 
 END as salt_used_in_preparation, 

CASE
            WHEN DR1STY = '1' THEN 'Yes' -- categorize string values 
WHEN DR1STY = '2' THEN 'No' -- categorize string values 
WHEN DR1STY = '9' THEN 'Dont know' -- categorize string values 
WHEN DR1STY IS NULL THEN NULL 
ELSE DR1STY 
 END as salt_used_at_table_yesterday, 

CASE
            WHEN DR1SKY = '1' THEN 'Ordinary, sea, seasoned, or other flavored salt' -- categorize string values 
WHEN DR1SKY = '2' THEN 'Lite salt' -- categorize string values 
WHEN DR1SKY = '3' THEN 'Salt substitute' -- categorize string values 
WHEN DR1SKY = '91' THEN 'Other' -- categorize string values 
WHEN DR1SKY = '99' THEN 'Dont know' -- categorize string values 
WHEN DR1SKY IS NULL THEN NULL 
ELSE DR1SKY 
 END as type_of_salt_used_yesterday, 

CASE
            WHEN DRQSDIET = 1 THEN 'Yes' -- categorize numeric values
WHEN DRQSDIET = 2 THEN 'No' -- categorize numeric values
WHEN DRQSDIET = 9 THEN 'Dont know' -- categorize numeric values
WHEN DRQSDIET IS NULL THEN NULL 
ELSE DRQSDIET 
 END as on_special_diet, 

CASE
            WHEN DRQSDT1 = 1 THEN 'Weight loss or low calorie diets' -- categorize numeric values
WHEN DRQSDT1 IS NULL THEN NULL 
ELSE DRQSDT1 
 END as weight_loss_low_calorie_diet, 

CASE
            WHEN DRQSDT2 = 2 THEN 'Low fat or low cholesterol diet' -- categorize numeric values
WHEN DRQSDT2 IS NULL THEN NULL 
ELSE DRQSDT2 
 END as low_fat_low_cholesterol_diet, 

CASE
            WHEN DRQSDT3 = 3 THEN 'Low salt or low sodium diet (including diet to lower blood pressure or hypertension)' -- categorize numeric values
WHEN DRQSDT3 IS NULL THEN NULL 
ELSE DRQSDT3 
 END as low_salt_low_sodium_diet, 

CASE
            WHEN DRQSDT4 = 4 THEN 'Sugar free or low sugar diet' -- categorize numeric values
WHEN DRQSDT4 IS NULL THEN NULL 
ELSE DRQSDT4 
 END as sugar_free_low_sugar_diet, 

CASE
            WHEN DRQSDT5 = 5 THEN 'Low fiber or low residue diet' -- categorize numeric values
WHEN DRQSDT5 IS NULL THEN NULL 
ELSE DRQSDT5 
 END as low_fiber_diet, 

CASE
            WHEN DRQSDT6 = 6 THEN 'High fiber or high residue diet' -- categorize numeric values
WHEN DRQSDT6 IS NULL THEN NULL 
ELSE DRQSDT6 
 END as high_fiber_diet, 

CASE
            WHEN DRQSDT7 = 7 THEN 'Diabetic diet (including gestational diabetic diets)' -- categorize numeric values
WHEN DRQSDT7 IS NULL THEN NULL 
ELSE DRQSDT7 
 END as diabetic_diet, 

CASE
            WHEN DRQSDT8 = 8 THEN 'Weight gain/Muscle building diet' -- categorize numeric values
WHEN DRQSDT8 IS NULL THEN NULL 
ELSE DRQSDT8 
 END as weight_gain_muscle_building_diet, 

CASE
            WHEN DRQSDT9 = '9' THEN 'Low carbohydrate diet' -- categorize string values 
WHEN DRQSDT9 IS NULL THEN NULL 
ELSE DRQSDT9 
 END as low_carbohydrate_diet, 

CASE
            WHEN DRQSDT10 = '10' THEN 'High protein diet' -- categorize string values 
WHEN DRQSDT10 IS NULL THEN NULL 
ELSE DRQSDT10 
 END as high_protein_diet, 

CASE
            WHEN DRQSDT11 = '11' THEN 'Gluten-free/Celiac diet' -- categorize string values 
WHEN DRQSDT11 IS NULL THEN NULL 
ELSE DRQSDT11 
 END as gluten_free_celiac_diet, 

CASE
            WHEN DRQSDT12 = '12' THEN 'Renal/Kidney diet' -- categorize string values 
WHEN DRQSDT12 IS NULL THEN NULL 
ELSE DRQSDT12 
 END as renal_kidney_diet, 

CASE
            WHEN DRQSDT91 = 91 THEN 'Other special diet' -- categorize numeric values
WHEN DRQSDT91 IS NULL THEN NULL 
ELSE DRQSDT91 
 END as other_special_diet, 

CASE
            WHEN DR1TNUMF IS NULL THEN NULL 
ELSE DR1TNUMF 
 END as number_of_foods_beverages_reported, 

CASE
            WHEN DR1TKCAL IS NULL THEN NULL 
ELSE DR1TKCAL 
 END as energy_kcal, 

CASE
            WHEN DR1TPROT IS NULL THEN NULL 
ELSE DR1TPROT 
 END as protein_gm, 

CASE
            WHEN DR1TCARB IS NULL THEN NULL 
ELSE DR1TCARB 
 END as carbohydrate_gm, 

CASE
            WHEN DR1TSUGR IS NULL THEN NULL 
ELSE DR1TSUGR 
 END as total_sugars_gm, 

CASE
            WHEN DR1TFIBE IS NULL THEN NULL 
ELSE DR1TFIBE 
 END as dietary_fiber_gm, 

CASE
            WHEN DR1TTFAT IS NULL THEN NULL 
ELSE DR1TTFAT 
 END as total_fat_gm, 

CASE
            WHEN DR1TSFAT IS NULL THEN NULL 
ELSE DR1TSFAT 
 END as total_saturated_fatty_acids_gm, 

CASE
            WHEN DR1TMFAT IS NULL THEN NULL 
ELSE DR1TMFAT 
 END as total_monounsaturated_fatty_acids_gm, 

CASE
            WHEN DR1TPFAT IS NULL THEN NULL 
ELSE DR1TPFAT 
 END as total_polyunsaturated_fatty_acids_gm, 

CASE
            WHEN DR1TCHOL IS NULL THEN NULL 
ELSE DR1TCHOL 
 END as cholesterol_mg, 

CASE
            WHEN DR1TATOC IS NULL THEN NULL 
ELSE DR1TATOC 
 END as vitamin_e_as_alpha_tocopherol_mg, 

CASE
            WHEN DR1TATOA IS NULL THEN NULL 
ELSE DR1TATOA 
 END as added_alpha_tocopherol_vitamin_e_mg, 

CASE
            WHEN DR1TRET IS NULL THEN NULL 
ELSE DR1TRET 
 END as retinol_mcg, 

CASE
            WHEN DR1TVARA IS NULL THEN NULL 
ELSE DR1TVARA 
 END as vitamin_a_rae_mcg, 

CASE
            WHEN DR1TACAR IS NULL THEN NULL 
ELSE DR1TACAR 
 END as alpha_carotene_mcg, 

CASE
            WHEN DR1TBCAR IS NULL THEN NULL 
ELSE DR1TBCAR 
 END as beta_carotene_mcg, 

CASE
            WHEN DR1TCRYP IS NULL THEN NULL 
ELSE DR1TCRYP 
 END as beta_cryptoxanthin_mcg, 

CASE
            WHEN DR1TLYCO IS NULL THEN NULL 
ELSE DR1TLYCO 
 END as lycopene_mcg, 

CASE
            WHEN DR1TLZ IS NULL THEN NULL 
ELSE DR1TLZ 
 END as lutein_zeaxanthin_mcg, 

CASE
            WHEN DR1TVB1 IS NULL THEN NULL 
ELSE DR1TVB1 
 END as thiamin_vitamin_b1_mg, 

CASE
            WHEN DR1TVB2 IS NULL THEN NULL 
ELSE DR1TVB2 
 END as riboflavin_vitamin_b2_mg, 

CASE
            WHEN DR1TNIAC IS NULL THEN NULL 
ELSE DR1TNIAC 
 END as niacin_mg, 

CASE
            WHEN DR1TVB6 IS NULL THEN NULL 
ELSE DR1TVB6 
 END as vitamin_b6_mg, 

CASE
            WHEN DR1TFOLA IS NULL THEN NULL 
ELSE DR1TFOLA 
 END as total_folate_mcg, 

CASE
            WHEN DR1TFA IS NULL THEN NULL 
ELSE DR1TFA 
 END as folic_acid_mcg, 

CASE
            WHEN DR1TFF IS NULL THEN NULL 
ELSE DR1TFF 
 END as food_folate_mcg, 

CASE
            WHEN DR1TFDFE IS NULL THEN NULL 
ELSE DR1TFDFE 
 END as folate_dfe_mcg, 

CASE
            WHEN DR1TCHL IS NULL THEN NULL 
ELSE DR1TCHL 
 END as total_choline_mg, 

CASE
            WHEN DR1TVB12 IS NULL THEN NULL 
ELSE DR1TVB12 
 END as vitamin_b12_mcg, 

CASE
            WHEN DR1TB12A IS NULL THEN NULL 
ELSE DR1TB12A 
 END as added_vitamin_b12_mcg, 

CASE
            WHEN DR1TVC IS NULL THEN NULL 
ELSE DR1TVC 
 END as vitamin_c_mg, 

CASE
            WHEN DR1TVD IS NOT NULL THEN SAFE_CAST(DR1TVD AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DR1TVD IS NULL THEN NULL 
ELSE DR1TVD 
 END as vitamin_d_d2_d3_mcg, 

CASE
            WHEN DR1TVK IS NULL THEN NULL 
ELSE DR1TVK 
 END as vitamin_k_mcg, 

CASE
            WHEN DR1TCALC IS NULL THEN NULL 
ELSE DR1TCALC 
 END as calcium_mg, 

CASE
            WHEN DR1TPHOS IS NULL THEN NULL 
ELSE DR1TPHOS 
 END as phosphorus_mg, 

CASE
            WHEN DR1TMAGN IS NULL THEN NULL 
ELSE DR1TMAGN 
 END as magnesium_mg, 

CASE
            WHEN DR1TIRON IS NULL THEN NULL 
ELSE DR1TIRON 
 END as iron_mg, 

CASE
            WHEN DR1TZINC IS NULL THEN NULL 
ELSE DR1TZINC 
 END as zinc_mg, 

CASE
            WHEN DR1TCOPP IS NULL THEN NULL 
ELSE DR1TCOPP 
 END as copper_mg, 

CASE
            WHEN DR1TSODI IS NULL THEN NULL 
ELSE DR1TSODI 
 END as sodium_mg, 

CASE
            WHEN DR1TPOTA IS NULL THEN NULL 
ELSE DR1TPOTA 
 END as potassium_mg, 

CASE
            WHEN DR1TSELE IS NULL THEN NULL 
ELSE DR1TSELE 
 END as selenium_mcg, 

CASE
            WHEN DR1TCAFF IS NULL THEN NULL 
ELSE DR1TCAFF 
 END as caffeine_mg, 

CASE
            WHEN DR1TTHEO IS NULL THEN NULL 
ELSE DR1TTHEO 
 END as theobromine_mg, 

CASE
            WHEN DR1TALCO IS NULL THEN NULL 
ELSE DR1TALCO 
 END as alcohol_gm, 

CASE
            WHEN DR1TMOIS IS NULL THEN NULL 
ELSE DR1TMOIS 
 END as moisture_gm, 

CASE
            WHEN DR1TS040 IS NULL THEN NULL 
ELSE DR1TS040 
 END as sfa_4_0_butanoic_gm, 

CASE
            WHEN DR1TS060 IS NULL THEN NULL 
ELSE DR1TS060 
 END as sfa_6_0_hexanoic_gm, 

CASE
            WHEN DR1TS080 IS NULL THEN NULL 
ELSE DR1TS080 
 END as sfa_8_0_octanoic_gm, 

CASE
            WHEN DR1TS100 IS NULL THEN NULL 
ELSE DR1TS100 
 END as sfa_10_0_decanoic_gm, 

CASE
            WHEN DR1TS120 IS NULL THEN NULL 
ELSE DR1TS120 
 END as sfa_12_0_dodecanoic_gm, 

CASE
            WHEN DR1TS140 IS NULL THEN NULL 
ELSE DR1TS140 
 END as sfa_14_0_tetradecanoic_gm, 

CASE
            WHEN DR1TS160 IS NULL THEN NULL 
ELSE DR1TS160 
 END as sfa_16_0_hexadecanoic_gm, 

CASE
            WHEN DR1TS180 IS NULL THEN NULL 
ELSE DR1TS180 
 END as sfa_18_0_octadecanoic_gm, 

CASE
            WHEN DR1TM161 IS NULL THEN NULL 
ELSE DR1TM161 
 END as mfa_16_1_hexadecenoic_gm, 

CASE
            WHEN DR1TM181 IS NULL THEN NULL 
ELSE DR1TM181 
 END as mfa_18_1_octadecenoic_gm, 

CASE
            WHEN DR1TM201 IS NULL THEN NULL 
ELSE DR1TM201 
 END as mfa_20_1_eicosenoic_gm, 

CASE
            WHEN DR1TM221 IS NULL THEN NULL 
ELSE DR1TM221 
 END as mfa_22_1_docosenoic_gm, 

CASE
            WHEN DR1TP182 IS NULL THEN NULL 
ELSE DR1TP182 
 END as pfa_18_2_octadecadienoic_gm, 

CASE
            WHEN DR1TP183 IS NULL THEN NULL 
ELSE DR1TP183 
 END as pfa_18_3_octadecatrienoic_gm, 

CASE
            WHEN DR1TP184 IS NULL THEN NULL 
ELSE DR1TP184 
 END as pfa_18_4_octadecatetraenoic_gm, 

CASE
            WHEN DR1TP204 IS NULL THEN NULL 
ELSE DR1TP204 
 END as pfa_20_4_eicosatetraenoic_gm, 

CASE
            WHEN DR1TP205 IS NULL THEN NULL 
ELSE DR1TP205 
 END as pfa_20_5_eicosapentaenoic_gm, 

CASE
            WHEN DR1TP225 IS NULL THEN NULL 
ELSE DR1TP225 
 END as pfa_22_5_docosapentaenoic_gm, 

CASE
            WHEN DR1TP226 IS NULL THEN NULL 
ELSE DR1TP226 
 END as pfa_22_6_docosahexaenoic_gm, 

CASE
            WHEN DR1_300 = 1 THEN 'Much more than usual' -- categorize numeric values
WHEN DR1_300 = 2 THEN 'Usual' -- categorize numeric values
WHEN DR1_300 = 3 THEN 'Much less than usual' -- categorize numeric values
WHEN DR1_300 = 7 THEN 'Refused' -- categorize numeric values
WHEN DR1_300 = 9 THEN 'Dont know' -- categorize numeric values
WHEN DR1_300 IS NULL THEN NULL 
ELSE DR1_300 
 END as compare_food_consumed_yesterday_to_usual, 

CASE
            WHEN DR1_320Z IS NULL THEN NULL 
ELSE DR1_320Z 
 END as total_plain_water_drank_yesterday_gm, 

CASE
            WHEN DR1_330Z IS NULL THEN NULL 
ELSE DR1_330Z 
 END as total_tap_water_drank_yesterday_gm, 

CASE
            WHEN DR1BWATZ IS NULL THEN NULL 
ELSE DR1BWATZ 
 END as total_bottled_water_drank_yesterday_gm, 

CASE
            WHEN DR1TWSZ = '1' THEN 'Community supply' -- categorize string values 
WHEN DR1TWSZ = '4' THEN 'Dont drink tap water' -- categorize string values 
WHEN DR1TWSZ = '91' THEN 'Other' -- categorize string values 
WHEN DR1TWSZ = '99' THEN 'Dont know' -- categorize string values 
WHEN DR1TWSZ IS NULL THEN NULL 
ELSE DR1TWSZ 
 END as tap_water_source, 

CASE
            WHEN DRD340 = 1 THEN 'Yes' -- categorize numeric values
WHEN DRD340 = 2 THEN 'No' -- categorize numeric values
WHEN DRD340 = 7 THEN 'Refused' -- categorize numeric values
WHEN DRD340 = 9 THEN 'Dont know' -- categorize numeric values
WHEN DRD340 IS NULL THEN NULL 
ELSE DRD340 
 END as shellfish_eaten_during_past_30_days, 

CASE
            WHEN DRD350A = 1 THEN 'Yes' -- categorize numeric values
WHEN DRD350A = 2 THEN 'No' -- categorize numeric values
WHEN DRD350A IS NULL THEN NULL 
ELSE DRD350A 
 END as clams_eaten_during_past_30_days, 

CASE
            WHEN DRD350AQ IS NULL THEN NULL 
ELSE DRD350AQ 
 END as of_times_clams_eaten_in_past_30_days, 

CASE
            WHEN DRD350B = 1 THEN 'Yes' -- categorize numeric values
WHEN DRD350B = 2 THEN 'No' -- categorize numeric values
WHEN DRD350B IS NULL THEN NULL 
ELSE DRD350B 
 END as crabs_eaten_during_past_30_days, 

CASE
            WHEN DRD350BQ IS NULL THEN NULL 
ELSE DRD350BQ 
 END as of_times_crabs_eaten_in_past_30_days, 

CASE
            WHEN DRD350C = 1 THEN 'Yes' -- categorize numeric values
WHEN DRD350C = 2 THEN 'No' -- categorize numeric values
WHEN DRD350C IS NULL THEN NULL 
ELSE DRD350C 
 END as crayfish_eaten_during_past_30_days, 

CASE
            WHEN DRD350CQ IS NULL THEN NULL 
ELSE DRD350CQ 
 END as of_times_crayfish_eaten_past_30_days, 

CASE
            WHEN DRD350D = 1 THEN 'Yes' -- categorize numeric values
WHEN DRD350D = 2 THEN 'No' -- categorize numeric values
WHEN DRD350D IS NULL THEN NULL 
ELSE DRD350D 
 END as lobsters_eaten_during_past_30_days, 

CASE
            WHEN DRD350DQ IS NULL THEN NULL 
ELSE DRD350DQ 
 END as of_times_lobsters_eaten_past_30_days, 

CASE
            WHEN DRD350E = 1 THEN 'Yes' -- categorize numeric values
WHEN DRD350E = 2 THEN 'No' -- categorize numeric values
WHEN DRD350E IS NULL THEN NULL 
ELSE DRD350E 
 END as mussels_eaten_during_past_30_days, 

CASE
            WHEN DRD350EQ IS NULL THEN NULL 
ELSE DRD350EQ 
 END as of_times_mussels_eaten_in_past_30_days, 

CASE
            WHEN DRD350F = 1 THEN 'Yes' -- categorize numeric values
WHEN DRD350F = 2 THEN 'No' -- categorize numeric values
WHEN DRD350F IS NULL THEN NULL 
ELSE DRD350F 
 END as oysters_eaten_during_past_30_days, 

CASE
            WHEN DRD350FQ IS NULL THEN NULL 
ELSE DRD350FQ 
 END as of_times_oysters_eaten_in_past_30_days, 

CASE
            WHEN DRD350G = 1 THEN 'Yes' -- categorize numeric values
WHEN DRD350G = 2 THEN 'No' -- categorize numeric values
WHEN DRD350G IS NULL THEN NULL 
ELSE DRD350G 
 END as scallops_eaten_during_past_30_days, 

CASE
            WHEN DRD350GQ IS NULL THEN NULL 
ELSE DRD350GQ 
 END as of_times_scallops_eaten_past_30_days, 

CASE
            WHEN DRD350H = 1 THEN 'Yes' -- categorize numeric values
WHEN DRD350H = 2 THEN 'No' -- categorize numeric values
WHEN DRD350H IS NULL THEN NULL 
ELSE DRD350H 
 END as shrimp_eaten_during_past_30_days, 

CASE
            WHEN DRD350HQ IS NULL THEN NULL 
ELSE DRD350HQ 
 END as of_times_shrimp_eaten_in_past_30_days, 

CASE
            WHEN DRD350I = 1 THEN 'Yes' -- categorize numeric values
WHEN DRD350I = 2 THEN 'No' -- categorize numeric values
WHEN DRD350I IS NULL THEN NULL 
ELSE DRD350I 
 END as other_shellfish_eaten_past_30_days, 

CASE
            WHEN DRD350IQ IS NULL THEN NULL 
ELSE DRD350IQ 
 END as of_times_other_shellfish_eaten, 

CASE
            WHEN DRD350J = 1 THEN 'Yes' -- categorize numeric values
WHEN DRD350J = 2 THEN 'No' -- categorize numeric values
WHEN DRD350J IS NULL THEN NULL 
ELSE DRD350J 
 END as other_unknown_shellfish_eaten_past_30_d, 

CASE
            WHEN DRD350JQ IS NULL THEN NULL 
ELSE DRD350JQ 
 END as of_times_other_unknown_shellfish_eaten, 

CASE
            WHEN DRD350K = 1 THEN 'Yes' -- categorize numeric values
WHEN DRD350K = 2 THEN 'No' -- categorize numeric values
WHEN DRD350K IS NULL THEN NULL 
ELSE DRD350K 
 END as refused_on_shellfish_eaten_past_30_days, 

CASE
            WHEN DRD360 = 1 THEN 'Yes' -- categorize numeric values
WHEN DRD360 = 2 THEN 'No' -- categorize numeric values
WHEN DRD360 = 7 THEN 'Refused' -- categorize numeric values
WHEN DRD360 = 9 THEN 'Dont know' -- categorize numeric values
WHEN DRD360 IS NULL THEN NULL 
ELSE DRD360 
 END as fish_eaten_during_past_30_days, 

CASE
            WHEN DRD370A = 1 THEN 'Yes' -- categorize numeric values
WHEN DRD370A = 2 THEN 'No' -- categorize numeric values
WHEN DRD370A IS NULL THEN NULL 
ELSE DRD370A 
 END as breaded_fish_products_eaten_past_30_days, 

CASE
            WHEN DRD370AQ IS NULL THEN NULL 
ELSE DRD370AQ 
 END as of_times_breaded_fish_products_eaten, 

CASE
            WHEN DRD370B = 1 THEN 'Yes' -- categorize numeric values
WHEN DRD370B = 2 THEN 'No' -- categorize numeric values
WHEN DRD370B IS NULL THEN NULL 
ELSE DRD370B 
 END as tuna_eaten_during_past_30_days, 

CASE
            WHEN DRD370BQ IS NULL THEN NULL 
ELSE DRD370BQ 
 END as of_times_tuna_eaten_in_past_30_days, 

CASE
            WHEN DRD370C = 1 THEN 'Yes' -- categorize numeric values
WHEN DRD370C = 2 THEN 'No' -- categorize numeric values
WHEN DRD370C IS NULL THEN NULL 
ELSE DRD370C 
 END as bass_eaten_during_past_30_days, 

CASE
            WHEN DRD370CQ IS NULL THEN NULL 
ELSE DRD370CQ 
 END as of_times_bass_eaten_in_past_30_days, 

CASE
            WHEN DRD370D = 1 THEN 'Yes' -- categorize numeric values
WHEN DRD370D = 2 THEN 'No' -- categorize numeric values
WHEN DRD370D IS NULL THEN NULL 
ELSE DRD370D 
 END as catfish_eaten_during_past_30_days, 

CASE
            WHEN DRD370DQ IS NULL THEN NULL 
ELSE DRD370DQ 
 END as of_times_catfish_eaten_in_past_30_days, 

CASE
            WHEN DRD370E = 1 THEN 'Yes' -- categorize numeric values
WHEN DRD370E = 2 THEN 'No' -- categorize numeric values
WHEN DRD370E IS NULL THEN NULL 
ELSE DRD370E 
 END as cod_eaten_during_past_30_days, 

CASE
            WHEN DRD370EQ IS NULL THEN NULL 
ELSE DRD370EQ 
 END as of_times_cod_eaten_in_past_30_days, 

CASE
            WHEN DRD370F = 1 THEN 'Yes' -- categorize numeric values
WHEN DRD370F = 2 THEN 'No' -- categorize numeric values
WHEN DRD370F IS NULL THEN NULL 
ELSE DRD370F 
 END as flatfish_eaten_during_past_30_days, 

CASE
            WHEN DRD370FQ IS NULL THEN NULL 
ELSE DRD370FQ 
 END as of_times_flatfish_eaten_past_30_days, 

CASE
            WHEN DRD370G = 1 THEN 'Yes' -- categorize numeric values
WHEN DRD370G = 2 THEN 'No' -- categorize numeric values
WHEN DRD370G IS NULL THEN NULL 
ELSE DRD370G 
 END as haddock_eaten_during_past_30_days, 

CASE
            WHEN DRD370GQ IS NULL THEN NULL 
ELSE DRD370GQ 
 END as of_times_haddock_eaten_in_past_30_days, 

CASE
            WHEN DRD370H = 1 THEN 'Yes' -- categorize numeric values
WHEN DRD370H = 2 THEN 'No' -- categorize numeric values
WHEN DRD370H IS NULL THEN NULL 
ELSE DRD370H 
 END as mackerel_eaten_during_past_30_days, 

CASE
            WHEN DRD370HQ IS NULL THEN NULL 
ELSE DRD370HQ 
 END as of_times_mackerel_eaten_past_30_days, 

CASE
            WHEN DRD370I = 1 THEN 'Yes' -- categorize numeric values
WHEN DRD370I = 2 THEN 'No' -- categorize numeric values
WHEN DRD370I IS NULL THEN NULL 
ELSE DRD370I 
 END as perch_eaten_during_past_30_days, 

CASE
            WHEN DRD370IQ IS NULL THEN NULL 
ELSE DRD370IQ 
 END as of_times_perch_eaten_in_past_30_days, 

CASE
            WHEN DRD370J = 1 THEN 'Yes' -- categorize numeric values
WHEN DRD370J = 2 THEN 'No' -- categorize numeric values
WHEN DRD370J IS NULL THEN NULL 
ELSE DRD370J 
 END as pike_eaten_during_past_30_days, 

CASE
            WHEN DRD370JQ IS NULL THEN NULL 
ELSE DRD370JQ 
 END as of_times_pike_eaten_in_past_30_days, 

CASE
            WHEN DRD370K = 1 THEN 'Yes' -- categorize numeric values
WHEN DRD370K = 2 THEN 'No' -- categorize numeric values
WHEN DRD370K IS NULL THEN NULL 
ELSE DRD370K 
 END as pollock_eaten_during_past_30_days, 

CASE
            WHEN DRD370KQ IS NULL THEN NULL 
ELSE DRD370KQ 
 END as of_times_pollock_eaten_in_past_30_days, 

CASE
            WHEN DRD370L = 1 THEN 'Yes' -- categorize numeric values
WHEN DRD370L = 2 THEN 'No' -- categorize numeric values
WHEN DRD370L IS NULL THEN NULL 
ELSE DRD370L 
 END as porgy_eaten_during_past_30_days, 

CASE
            WHEN DRD370LQ IS NULL THEN NULL 
ELSE DRD370LQ 
 END as of_times_porgy_eaten_in_past_30_days, 

CASE
            WHEN DRD370M = 1 THEN 'Yes' -- categorize numeric values
WHEN DRD370M = 2 THEN 'No' -- categorize numeric values
WHEN DRD370M IS NULL THEN NULL 
ELSE DRD370M 
 END as salmon_eaten_during_past_30_days, 

CASE
            WHEN DRD370MQ IS NULL THEN NULL 
ELSE DRD370MQ 
 END as of_times_salmon_eaten_in_past_30_days, 

CASE
            WHEN DRD370N = 1 THEN 'Yes' -- categorize numeric values
WHEN DRD370N = 2 THEN 'No' -- categorize numeric values
WHEN DRD370N IS NULL THEN NULL 
ELSE DRD370N 
 END as sardines_eaten_during_past_30_days, 

CASE
            WHEN DRD370NQ IS NULL THEN NULL 
ELSE DRD370NQ 
 END as of_times_sardines_eaten_past_30_days, 

CASE
            WHEN DRD370O = 1 THEN 'Yes' -- categorize numeric values
WHEN DRD370O = 2 THEN 'No' -- categorize numeric values
WHEN DRD370O IS NULL THEN NULL 
ELSE DRD370O 
 END as sea_bass_eaten_during_past_30_days, 

CASE
            WHEN DRD370OQ IS NULL THEN NULL 
ELSE DRD370OQ 
 END as of_times_sea_bass_eaten_past_30_days, 

CASE
            WHEN DRD370P = 1 THEN 'Yes' -- categorize numeric values
WHEN DRD370P = 2 THEN 'No' -- categorize numeric values
WHEN DRD370P IS NULL THEN NULL 
ELSE DRD370P 
 END as shark_eaten_during_past_30_days, 

CASE
            WHEN DRD370PQ IS NULL THEN NULL 
ELSE DRD370PQ 
 END as of_times_shark_eaten_in_past_30_days, 

CASE
            WHEN DRD370Q = 1 THEN 'Yes' -- categorize numeric values
WHEN DRD370Q = 2 THEN 'No' -- categorize numeric values
WHEN DRD370Q IS NULL THEN NULL 
ELSE DRD370Q 
 END as swordfish_eaten_during_past_30_days, 

CASE
            WHEN DRD370QQ IS NULL THEN NULL 
ELSE DRD370QQ 
 END as of_times_swordfish_eaten_past_30_days, 

CASE
            WHEN DRD370R = 1 THEN 'Yes' -- categorize numeric values
WHEN DRD370R = 2 THEN 'No' -- categorize numeric values
WHEN DRD370R IS NULL THEN NULL 
ELSE DRD370R 
 END as trout_eaten_during_past_30_days, 

CASE
            WHEN DRD370RQ IS NULL THEN NULL 
ELSE DRD370RQ 
 END as of_times_trout_eaten_in_past_30_days, 

CASE
            WHEN DRD370S = 1 THEN 'Yes' -- categorize numeric values
WHEN DRD370S = 2 THEN 'No' -- categorize numeric values
WHEN DRD370S IS NULL THEN NULL 
ELSE DRD370S 
 END as walleye_eaten_during_past_30_days, 

CASE
            WHEN DRD370SQ IS NULL THEN NULL 
ELSE DRD370SQ 
 END as of_times_walleye_eaten_in_past_30_days, 

CASE
            WHEN DRD370T = 1 THEN 'Yes' -- categorize numeric values
WHEN DRD370T = 2 THEN 'No' -- categorize numeric values
WHEN DRD370T IS NULL THEN NULL 
ELSE DRD370T 
 END as other_fish_eaten_during_past_30_days, 

CASE
            WHEN DRD370TQ IS NULL THEN NULL 
ELSE DRD370TQ 
 END as of_times_other_fish_eaten_past_30_days, 

CASE
            WHEN DRD370U = 1 THEN 'Yes' -- categorize numeric values
WHEN DRD370U = 2 THEN 'No' -- categorize numeric values
WHEN DRD370U IS NULL THEN NULL 
ELSE DRD370U 
 END as other_unknown_fish_eaten_in_past_30_days, 

CASE
            WHEN DRD370UQ IS NULL THEN NULL 
ELSE DRD370UQ 
 END as of_times_other_unknown_fish_eaten, 

CASE
            WHEN DRD370V = 1 THEN 'Yes' -- categorize numeric values
WHEN DRD370V = 2 THEN 'No' -- categorize numeric values
WHEN DRD370V IS NULL THEN NULL 
ELSE DRD370V 
 END as refused_on_fish_eaten_past_30_days, 

 FROM {{ ref('stg_dietary_interview_total_nutrient_intakes_first_day_dietary') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/DR1TOT_J.htm
        