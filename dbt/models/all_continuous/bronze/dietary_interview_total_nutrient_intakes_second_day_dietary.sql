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
            WHEN DR2DBIH IS NOT NULL THEN SAFE_CAST(DR2DBIH AS FLOAT64) -- correct wrong data types for numerical data 
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
            WHEN DR2TNUMF IS NULL THEN NULL 
ELSE DR2TNUMF 
 END as number_of_foods_beverages_reported, 

CASE
            WHEN DR2STY = '1' THEN 'Yes' -- categorize string values 
WHEN DR2STY = '2' THEN 'No' -- categorize string values 
WHEN DR2STY = '9' THEN 'Dont know' -- categorize string values 
WHEN DR2STY IS NULL THEN NULL 
ELSE DR2STY 
 END as salt_used_at_table_yesterday, 

CASE
            WHEN DR2SKY = '1' THEN 'Ordinary, sea, seasoned, or other flavored salt' -- categorize string values 
WHEN DR2SKY = '2' THEN 'Lite salt' -- categorize string values 
WHEN DR2SKY = '3' THEN 'Salt substitute' -- categorize string values 
WHEN DR2SKY = '91' THEN 'Other' -- categorize string values 
WHEN DR2SKY = '99' THEN 'Dont know' -- categorize string values 
WHEN DR2SKY IS NULL THEN NULL 
ELSE DR2SKY 
 END as type_of_salt_used_yesterday, 

CASE
            WHEN DR2TKCAL IS NULL THEN NULL 
ELSE DR2TKCAL 
 END as energy_kcal, 

CASE
            WHEN DR2TPROT IS NULL THEN NULL 
ELSE DR2TPROT 
 END as protein_gm, 

CASE
            WHEN DR2TCARB IS NULL THEN NULL 
ELSE DR2TCARB 
 END as carbohydrate_gm, 

CASE
            WHEN DR2TSUGR IS NULL THEN NULL 
ELSE DR2TSUGR 
 END as total_sugars_gm, 

CASE
            WHEN DR2TFIBE IS NULL THEN NULL 
ELSE DR2TFIBE 
 END as dietary_fiber_gm, 

CASE
            WHEN DR2TTFAT IS NULL THEN NULL 
ELSE DR2TTFAT 
 END as total_fat_gm, 

CASE
            WHEN DR2TSFAT IS NULL THEN NULL 
ELSE DR2TSFAT 
 END as total_saturated_fatty_acids_gm, 

CASE
            WHEN DR2TMFAT IS NULL THEN NULL 
ELSE DR2TMFAT 
 END as total_monounsaturated_fatty_acids_gm, 

CASE
            WHEN DR2TPFAT IS NULL THEN NULL 
ELSE DR2TPFAT 
 END as total_polyunsaturated_fatty_acids_gm, 

CASE
            WHEN DR2TCHOL IS NULL THEN NULL 
ELSE DR2TCHOL 
 END as cholesterol_mg, 

CASE
            WHEN DR2TATOC IS NULL THEN NULL 
ELSE DR2TATOC 
 END as vitamin_e_as_alpha_tocopherol_mg, 

CASE
            WHEN DR2TATOA IS NULL THEN NULL 
ELSE DR2TATOA 
 END as added_alpha_tocopherol_vitamin_e_mg, 

CASE
            WHEN DR2TRET IS NULL THEN NULL 
ELSE DR2TRET 
 END as retinol_mcg, 

CASE
            WHEN DR2TVARA IS NULL THEN NULL 
ELSE DR2TVARA 
 END as vitamin_a_rae_mcg, 

CASE
            WHEN DR2TACAR IS NULL THEN NULL 
ELSE DR2TACAR 
 END as alpha_carotene_mcg, 

CASE
            WHEN DR2TBCAR IS NULL THEN NULL 
ELSE DR2TBCAR 
 END as beta_carotene_mcg, 

CASE
            WHEN DR2TCRYP IS NULL THEN NULL 
ELSE DR2TCRYP 
 END as beta_cryptoxanthin_mcg, 

CASE
            WHEN DR2TLYCO IS NULL THEN NULL 
ELSE DR2TLYCO 
 END as lycopene_mcg, 

CASE
            WHEN DR2TLZ IS NULL THEN NULL 
ELSE DR2TLZ 
 END as lutein_zeaxanthin_mcg, 

CASE
            WHEN DR2TVB1 IS NULL THEN NULL 
ELSE DR2TVB1 
 END as thiamin_vitamin_b1_mg, 

CASE
            WHEN DR2TVB2 IS NULL THEN NULL 
ELSE DR2TVB2 
 END as riboflavin_vitamin_b2_mg, 

CASE
            WHEN DR2TNIAC IS NULL THEN NULL 
ELSE DR2TNIAC 
 END as niacin_mg, 

CASE
            WHEN DR2TVB6 IS NULL THEN NULL 
ELSE DR2TVB6 
 END as vitamin_b6_mg, 

CASE
            WHEN DR2TFOLA IS NULL THEN NULL 
ELSE DR2TFOLA 
 END as total_folate_mcg, 

CASE
            WHEN DR2TFA IS NULL THEN NULL 
ELSE DR2TFA 
 END as folic_acid_mcg, 

CASE
            WHEN DR2TFF IS NULL THEN NULL 
ELSE DR2TFF 
 END as food_folate_mcg, 

CASE
            WHEN DR2TFDFE IS NULL THEN NULL 
ELSE DR2TFDFE 
 END as folate_dfe_mcg, 

CASE
            WHEN DR2TCHL IS NULL THEN NULL 
ELSE DR2TCHL 
 END as total_choline_mg, 

CASE
            WHEN DR2TVB12 IS NULL THEN NULL 
ELSE DR2TVB12 
 END as vitamin_b12_mcg, 

CASE
            WHEN DR2TB12A IS NULL THEN NULL 
ELSE DR2TB12A 
 END as added_vitamin_b12_mcg, 

CASE
            WHEN DR2TVC IS NULL THEN NULL 
ELSE DR2TVC 
 END as vitamin_c_mg, 

CASE
            WHEN DR2TVD IS NOT NULL THEN SAFE_CAST(DR2TVD AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DR2TVD IS NULL THEN NULL 
ELSE DR2TVD 
 END as vitamin_d_d2_d3_mcg, 

CASE
            WHEN DR2TVK IS NULL THEN NULL 
ELSE DR2TVK 
 END as vitamin_k_mcg, 

CASE
            WHEN DR2TCALC IS NULL THEN NULL 
ELSE DR2TCALC 
 END as calcium_mg, 

CASE
            WHEN DR2TPHOS IS NULL THEN NULL 
ELSE DR2TPHOS 
 END as phosphorus_mg, 

CASE
            WHEN DR2TMAGN IS NULL THEN NULL 
ELSE DR2TMAGN 
 END as magnesium_mg, 

CASE
            WHEN DR2TIRON IS NULL THEN NULL 
ELSE DR2TIRON 
 END as iron_mg, 

CASE
            WHEN DR2TZINC IS NULL THEN NULL 
ELSE DR2TZINC 
 END as zinc_mg, 

CASE
            WHEN DR2TCOPP IS NULL THEN NULL 
ELSE DR2TCOPP 
 END as copper_mg, 

CASE
            WHEN DR2TSODI IS NULL THEN NULL 
ELSE DR2TSODI 
 END as sodium_mg, 

CASE
            WHEN DR2TPOTA IS NULL THEN NULL 
ELSE DR2TPOTA 
 END as potassium_mg, 

CASE
            WHEN DR2TSELE IS NULL THEN NULL 
ELSE DR2TSELE 
 END as selenium_mcg, 

CASE
            WHEN DR2TCAFF IS NULL THEN NULL 
ELSE DR2TCAFF 
 END as caffeine_mg, 

CASE
            WHEN DR2TTHEO IS NULL THEN NULL 
ELSE DR2TTHEO 
 END as theobromine_mg, 

CASE
            WHEN DR2TALCO IS NULL THEN NULL 
ELSE DR2TALCO 
 END as alcohol_gm, 

CASE
            WHEN DR2TMOIS IS NULL THEN NULL 
ELSE DR2TMOIS 
 END as moisture_gm, 

CASE
            WHEN DR2TS040 IS NULL THEN NULL 
ELSE DR2TS040 
 END as sfa_4_0_butanoic_gm, 

CASE
            WHEN DR2TS060 IS NULL THEN NULL 
ELSE DR2TS060 
 END as sfa_6_0_hexanoic_gm, 

CASE
            WHEN DR2TS080 IS NULL THEN NULL 
ELSE DR2TS080 
 END as sfa_8_0_octanoic_gm, 

CASE
            WHEN DR2TS100 IS NULL THEN NULL 
ELSE DR2TS100 
 END as sfa_10_0_decanoic_gm, 

CASE
            WHEN DR2TS120 IS NULL THEN NULL 
ELSE DR2TS120 
 END as sfa_12_0_dodecanoic_gm, 

CASE
            WHEN DR2TS140 IS NULL THEN NULL 
ELSE DR2TS140 
 END as sfa_14_0_tetradecanoic_gm, 

CASE
            WHEN DR2TS160 IS NULL THEN NULL 
ELSE DR2TS160 
 END as sfa_16_0_hexadecanoic_gm, 

CASE
            WHEN DR2TS180 IS NULL THEN NULL 
ELSE DR2TS180 
 END as sfa_18_0_octadecanoic_gm, 

CASE
            WHEN DR2TM161 IS NULL THEN NULL 
ELSE DR2TM161 
 END as mfa_16_1_hexadecenoic_gm, 

CASE
            WHEN DR2TM181 IS NULL THEN NULL 
ELSE DR2TM181 
 END as mfa_18_1_octadecenoic_gm, 

CASE
            WHEN DR2TM201 IS NULL THEN NULL 
ELSE DR2TM201 
 END as mfa_20_1_eicosenoic_gm, 

CASE
            WHEN DR2TM221 IS NULL THEN NULL 
ELSE DR2TM221 
 END as mfa_22_1_docosenoic_gm, 

CASE
            WHEN DR2TP182 IS NULL THEN NULL 
ELSE DR2TP182 
 END as pfa_18_2_octadecadienoic_gm, 

CASE
            WHEN DR2TP183 IS NULL THEN NULL 
ELSE DR2TP183 
 END as pfa_18_3_octadecatrienoic_gm, 

CASE
            WHEN DR2TP184 IS NULL THEN NULL 
ELSE DR2TP184 
 END as pfa_18_4_octadecatetraenoic_gm, 

CASE
            WHEN DR2TP204 IS NULL THEN NULL 
ELSE DR2TP204 
 END as pfa_20_4_eicosatetraenoic_gm, 

CASE
            WHEN DR2TP205 IS NULL THEN NULL 
ELSE DR2TP205 
 END as pfa_20_5_eicosapentaenoic_gm, 

CASE
            WHEN DR2TP225 IS NULL THEN NULL 
ELSE DR2TP225 
 END as pfa_22_5_docosapentaenoic_gm, 

CASE
            WHEN DR2TP226 IS NULL THEN NULL 
ELSE DR2TP226 
 END as pfa_22_6_docosahexaenoic_gm, 

CASE
            WHEN DR2_300 = 1 THEN 'Much more than usual' -- categorize numeric values
WHEN DR2_300 = 2 THEN 'Usual' -- categorize numeric values
WHEN DR2_300 = 3 THEN 'Much less than usual' -- categorize numeric values
WHEN DR2_300 = 7 THEN 'Refused' -- categorize numeric values
WHEN DR2_300 = 9 THEN 'Dont know' -- categorize numeric values
WHEN DR2_300 IS NULL THEN NULL 
ELSE DR2_300 
 END as compare_food_consumed_yesterday_to_usual, 

CASE
            WHEN DR2_320Z IS NULL THEN NULL 
ELSE DR2_320Z 
 END as total_plain_water_drank_yesterday_gm, 

CASE
            WHEN DR2_330Z IS NULL THEN NULL 
ELSE DR2_330Z 
 END as total_tap_water_drank_yesterday_gm, 

CASE
            WHEN DR2BWATZ IS NULL THEN NULL 
ELSE DR2BWATZ 
 END as total_bottled_water_drank_yesterday_gm, 

CASE
            WHEN DR2TWSZ = '1' THEN 'Community supply' -- categorize string values 
WHEN DR2TWSZ = '4' THEN 'Dont drink tap water' -- categorize string values 
WHEN DR2TWSZ = '91' THEN 'Other' -- categorize string values 
WHEN DR2TWSZ = '99' THEN 'Dont know' -- categorize string values 
WHEN DR2TWSZ IS NULL THEN NULL 
ELSE DR2TWSZ 
 END as tap_water_source, 

 FROM {{ ref('stg_dietary_interview_total_nutrient_intakes_second_day_dietary') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/DR2TOT_J.htm
        