SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN WTDRD1 IS NULL THEN NULL 
ELSE SAFE_CAST(WTDRD1 AS STRING) 
 END as dietary_day_one_sample_weight, 

CASE
            WHEN WTDR2D IS NULL THEN NULL 
ELSE SAFE_CAST(WTDR2D AS STRING) 
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
            WHEN DR2DBIH IS NOT NULL THEN SAFE_CAST(DR2DBIH AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DR2DBIH IS NULL THEN NULL 
ELSE SAFE_CAST(DR2DBIH AS FLOAT64) 
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
            WHEN DR2TNUMF IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TNUMF AS STRING) 
 END as number_of_foods_beverages_reported, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR2STY,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR2STY,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR2STY,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN DR2STY IS NULL THEN NULL 
ELSE SAFE_CAST(DR2STY AS STRING) 
 END as salt_used_at_table_yesterday, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR2SKY,'.0','') AS INT64) AS STRING) = '1' THEN 'Ordinary, sea, seasoned, or other flavored salt' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR2SKY,'.0','') AS INT64) AS STRING) = '2' THEN 'Lite salt' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR2SKY,'.0','') AS INT64) AS STRING) = '3' THEN 'Salt substitute' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR2SKY,'.0','') AS INT64) AS STRING) = '91' THEN 'Other' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR2SKY,'.0','') AS INT64) AS STRING) = '99' THEN 'Dont know' -- categorize string values 
WHEN DR2SKY IS NULL THEN NULL 
ELSE SAFE_CAST(DR2SKY AS STRING) 
 END as type_of_salt_used_yesterday, 

CASE
            WHEN DR2TKCAL IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TKCAL AS STRING) 
 END as energy_kcal, 

CASE
            WHEN DR2TPROT IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TPROT AS STRING) 
 END as protein_gm, 

CASE
            WHEN DR2TCARB IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TCARB AS STRING) 
 END as carbohydrate_gm, 

CASE
            WHEN DR2TSUGR IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TSUGR AS STRING) 
 END as total_sugars_gm, 

CASE
            WHEN DR2TFIBE IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TFIBE AS STRING) 
 END as dietary_fiber_gm, 

CASE
            WHEN DR2TTFAT IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TTFAT AS STRING) 
 END as total_fat_gm, 

CASE
            WHEN DR2TSFAT IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TSFAT AS STRING) 
 END as total_saturated_fatty_acids_gm, 

CASE
            WHEN DR2TMFAT IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TMFAT AS STRING) 
 END as total_monounsaturated_fatty_acids_gm, 

CASE
            WHEN DR2TPFAT IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TPFAT AS STRING) 
 END as total_polyunsaturated_fatty_acids_gm, 

CASE
            WHEN DR2TCHOL IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TCHOL AS STRING) 
 END as cholesterol_mg, 

CASE
            WHEN DR2TATOC IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TATOC AS STRING) 
 END as vitamin_e_as_alpha_tocopherol_mg, 

CASE
            WHEN DR2TATOA IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TATOA AS STRING) 
 END as added_alpha_tocopherol_vitamin_e_mg, 

CASE
            WHEN DR2TRET IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TRET AS STRING) 
 END as retinol_mcg, 

CASE
            WHEN DR2TVARA IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TVARA AS STRING) 
 END as vitamin_a_rae_mcg, 

CASE
            WHEN DR2TACAR IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TACAR AS STRING) 
 END as alpha_carotene_mcg, 

CASE
            WHEN DR2TBCAR IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TBCAR AS STRING) 
 END as beta_carotene_mcg, 

CASE
            WHEN DR2TCRYP IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TCRYP AS STRING) 
 END as beta_cryptoxanthin_mcg, 

CASE
            WHEN DR2TLYCO IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TLYCO AS STRING) 
 END as lycopene_mcg, 

CASE
            WHEN DR2TLZ IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TLZ AS STRING) 
 END as lutein_zeaxanthin_mcg, 

CASE
            WHEN DR2TVB1 IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TVB1 AS STRING) 
 END as thiamin_vitamin_b1_mg, 

CASE
            WHEN DR2TVB2 IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TVB2 AS STRING) 
 END as riboflavin_vitamin_b2_mg, 

CASE
            WHEN DR2TNIAC IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TNIAC AS STRING) 
 END as niacin_mg, 

CASE
            WHEN DR2TVB6 IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TVB6 AS STRING) 
 END as vitamin_b6_mg, 

CASE
            WHEN DR2TFOLA IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TFOLA AS STRING) 
 END as total_folate_mcg, 

CASE
            WHEN DR2TFA IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TFA AS STRING) 
 END as folic_acid_mcg, 

CASE
            WHEN DR2TFF IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TFF AS STRING) 
 END as food_folate_mcg, 

CASE
            WHEN DR2TFDFE IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TFDFE AS STRING) 
 END as folate_dfe_mcg, 

CASE
            WHEN DR2TCHL IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TCHL AS STRING) 
 END as total_choline_mg, 

CASE
            WHEN DR2TVB12 IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TVB12 AS STRING) 
 END as vitamin_b12_mcg, 

CASE
            WHEN DR2TB12A IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TB12A AS STRING) 
 END as added_vitamin_b12_mcg, 

CASE
            WHEN DR2TVC IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TVC AS STRING) 
 END as vitamin_c_mg, 

CASE
            WHEN DR2TVD IS NOT NULL THEN SAFE_CAST(DR2TVD AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DR2TVD IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TVD AS FLOAT64) 
 END as vitamin_d_d2_d3_mcg, 

CASE
            WHEN DR2TVK IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TVK AS FLOAT64) 
 END as vitamin_k_mcg, 

CASE
            WHEN DR2TCALC IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TCALC AS FLOAT64) 
 END as calcium_mg, 

CASE
            WHEN DR2TPHOS IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TPHOS AS FLOAT64) 
 END as phosphorus_mg, 

CASE
            WHEN DR2TMAGN IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TMAGN AS FLOAT64) 
 END as magnesium_mg, 

CASE
            WHEN DR2TIRON IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TIRON AS FLOAT64) 
 END as iron_mg, 

CASE
            WHEN DR2TZINC IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TZINC AS FLOAT64) 
 END as zinc_mg, 

CASE
            WHEN DR2TCOPP IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TCOPP AS FLOAT64) 
 END as copper_mg, 

CASE
            WHEN DR2TSODI IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TSODI AS FLOAT64) 
 END as sodium_mg, 

CASE
            WHEN DR2TPOTA IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TPOTA AS FLOAT64) 
 END as potassium_mg, 

CASE
            WHEN DR2TSELE IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TSELE AS FLOAT64) 
 END as selenium_mcg, 

CASE
            WHEN DR2TCAFF IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TCAFF AS FLOAT64) 
 END as caffeine_mg, 

CASE
            WHEN DR2TTHEO IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TTHEO AS FLOAT64) 
 END as theobromine_mg, 

CASE
            WHEN DR2TALCO IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TALCO AS FLOAT64) 
 END as alcohol_gm, 

CASE
            WHEN DR2TMOIS IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TMOIS AS FLOAT64) 
 END as moisture_gm, 

CASE
            WHEN DR2TS040 IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TS040 AS FLOAT64) 
 END as sfa_4_0_butanoic_gm, 

CASE
            WHEN DR2TS060 IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TS060 AS FLOAT64) 
 END as sfa_6_0_hexanoic_gm, 

CASE
            WHEN DR2TS080 IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TS080 AS FLOAT64) 
 END as sfa_8_0_octanoic_gm, 

CASE
            WHEN DR2TS100 IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TS100 AS FLOAT64) 
 END as sfa_10_0_decanoic_gm, 

CASE
            WHEN DR2TS120 IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TS120 AS FLOAT64) 
 END as sfa_12_0_dodecanoic_gm, 

CASE
            WHEN DR2TS140 IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TS140 AS FLOAT64) 
 END as sfa_14_0_tetradecanoic_gm, 

CASE
            WHEN DR2TS160 IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TS160 AS FLOAT64) 
 END as sfa_16_0_hexadecanoic_gm, 

CASE
            WHEN DR2TS180 IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TS180 AS FLOAT64) 
 END as sfa_18_0_octadecanoic_gm, 

CASE
            WHEN DR2TM161 IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TM161 AS FLOAT64) 
 END as mfa_16_1_hexadecenoic_gm, 

CASE
            WHEN DR2TM181 IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TM181 AS FLOAT64) 
 END as mfa_18_1_octadecenoic_gm, 

CASE
            WHEN DR2TM201 IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TM201 AS FLOAT64) 
 END as mfa_20_1_eicosenoic_gm, 

CASE
            WHEN DR2TM221 IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TM221 AS FLOAT64) 
 END as mfa_22_1_docosenoic_gm, 

CASE
            WHEN DR2TP182 IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TP182 AS FLOAT64) 
 END as pfa_18_2_octadecadienoic_gm, 

CASE
            WHEN DR2TP183 IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TP183 AS FLOAT64) 
 END as pfa_18_3_octadecatrienoic_gm, 

CASE
            WHEN DR2TP184 IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TP184 AS FLOAT64) 
 END as pfa_18_4_octadecatetraenoic_gm, 

CASE
            WHEN DR2TP204 IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TP204 AS FLOAT64) 
 END as pfa_20_4_eicosatetraenoic_gm, 

CASE
            WHEN DR2TP205 IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TP205 AS FLOAT64) 
 END as pfa_20_5_eicosapentaenoic_gm, 

CASE
            WHEN DR2TP225 IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TP225 AS FLOAT64) 
 END as pfa_22_5_docosapentaenoic_gm, 

CASE
            WHEN DR2TP226 IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TP226 AS FLOAT64) 
 END as pfa_22_6_docosahexaenoic_gm, 

CASE
            WHEN SAFE_CAST(DR2_300 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Much more than usual' -- categorize numeric values
WHEN SAFE_CAST(DR2_300 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Usual' -- categorize numeric values
WHEN SAFE_CAST(DR2_300 AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Much less than usual' -- categorize numeric values
WHEN SAFE_CAST(DR2_300 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DR2_300 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DR2_300 IS NULL THEN NULL 
ELSE SAFE_CAST(DR2_300 AS STRING) 
 END as compare_food_consumed_yesterday_to_usual, 

CASE
            WHEN DR2_320Z IS NULL THEN NULL 
ELSE SAFE_CAST(DR2_320Z AS STRING) 
 END as total_plain_water_drank_yesterday_gm, 

CASE
            WHEN DR2_330Z IS NULL THEN NULL 
ELSE SAFE_CAST(DR2_330Z AS STRING) 
 END as total_tap_water_drank_yesterday_gm, 

CASE
            WHEN DR2BWATZ IS NULL THEN NULL 
ELSE SAFE_CAST(DR2BWATZ AS STRING) 
 END as total_bottled_water_drank_yesterday_gm, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR2TWSZ,'.0','') AS INT64) AS STRING) = '1' THEN 'Community supply' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR2TWSZ,'.0','') AS INT64) AS STRING) = '4' THEN 'Dont drink tap water' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR2TWSZ,'.0','') AS INT64) AS STRING) = '91' THEN 'Other' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DR2TWSZ,'.0','') AS INT64) AS STRING) = '99' THEN 'Dont know' -- categorize string values 
WHEN DR2TWSZ IS NULL THEN NULL 
ELSE SAFE_CAST(DR2TWSZ AS STRING) 
 END as tap_water_source, 

 FROM {{ ref('stg_dietary_interview_total_nutrient_intakes_second_day_dietary') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/DR2TOT_J.htm
        