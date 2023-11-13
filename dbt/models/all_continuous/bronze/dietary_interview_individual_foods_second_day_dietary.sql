SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN SAFE_CAST(WTDRD1PP AS FLOAT64) > 538404.42971 THEN NULL -- remove missing, dont know, categories in float field  
WHEN WTDRD1PP IS NULL THEN NULL 
ELSE WTDRD1PP 
 END as dietary_day_one_sample_weight, 

CASE
            WHEN SAFE_CAST(WTDR2DPP AS FLOAT64) > 702943.59773 THEN NULL -- remove missing, dont know, categories in float field  
WHEN WTDR2DPP IS NULL THEN NULL 
ELSE WTDR2DPP 
 END as dietary_two_day_sample_weight, 

CASE
            WHEN DR2ILINE IS NULL THEN NULL 
ELSE DR2ILINE 
 END as food_individual_component_number, 

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
            WHEN DR2CCMNM IS NULL THEN NULL 
ELSE DR2CCMNM 
 END as combination_food_number, 

CASE
            WHEN DR2CCMTX = 0 THEN 'Non-combination food' -- categorize numeric values
WHEN DR2CCMTX = 1 THEN 'Beverage w/ additions' -- categorize numeric values
WHEN DR2CCMTX = 2 THEN 'Cereal w/ additions' -- categorize numeric values
WHEN DR2CCMTX = 3 THEN 'Bread/baked products w/ additions' -- categorize numeric values
WHEN DR2CCMTX = 4 THEN 'Salad' -- categorize numeric values
WHEN DR2CCMTX = 5 THEN 'Sandwiches' -- categorize numeric values
WHEN DR2CCMTX = 6 THEN 'Soup' -- categorize numeric values
WHEN DR2CCMTX = 7 THEN 'Frozen meals' -- categorize numeric values
WHEN DR2CCMTX = 8 THEN 'Ice cream/frozen yogurt w/ additions' -- categorize numeric values
WHEN DR2CCMTX = 9 THEN 'Dried beans and vegetable w/ additions' -- categorize numeric values
WHEN DR2CCMTX = 10 THEN 'Fruit w/ additions' -- categorize numeric values
WHEN DR2CCMTX = 11 THEN 'Tortilla products' -- categorize numeric values
WHEN DR2CCMTX = 12 THEN 'Meat, poultry, fish' -- categorize numeric values
WHEN DR2CCMTX = 13 THEN 'LunchablesÂ®' -- categorize numeric values
WHEN DR2CCMTX = 14 THEN 'Chips w/ additions' -- categorize numeric values
WHEN DR2CCMTX = 90 THEN 'Other mixtures' -- categorize numeric values
WHEN DR2CCMTX IS NULL THEN NULL 
ELSE DR2CCMTX 
 END as combination_food_type, 

CASE
            WHEN DR2_020 IS NULL THEN NULL 
ELSE DR2_020 
 END as time_of_eating_occasion_hh_mm, 

CASE
            WHEN DR2_030Z = 1 THEN 'Breakfast' -- categorize numeric values
WHEN DR2_030Z = 2 THEN 'Lunch' -- categorize numeric values
WHEN DR2_030Z = 3 THEN 'Dinner' -- categorize numeric values
WHEN DR2_030Z = 4 THEN 'Supper' -- categorize numeric values
WHEN DR2_030Z = 5 THEN 'Brunch' -- categorize numeric values
WHEN DR2_030Z = 6 THEN 'Snack' -- categorize numeric values
WHEN DR2_030Z = 7 THEN 'Drink' -- categorize numeric values
WHEN DR2_030Z = 8 THEN 'Infant feeding' -- categorize numeric values
WHEN DR2_030Z = 9 THEN 'Extended consumption' -- categorize numeric values
WHEN DR2_030Z = 10 THEN 'Desayano' -- categorize numeric values
WHEN DR2_030Z = 11 THEN 'Almuerzo' -- categorize numeric values
WHEN DR2_030Z = 12 THEN 'Comida' -- categorize numeric values
WHEN DR2_030Z = 13 THEN 'Merienda' -- categorize numeric values
WHEN DR2_030Z = 14 THEN 'Cena' -- categorize numeric values
WHEN DR2_030Z = 15 THEN 'Entre comida' -- categorize numeric values
WHEN DR2_030Z = 16 THEN 'Botana' -- categorize numeric values
WHEN DR2_030Z = 17 THEN 'Bocadillo' -- categorize numeric values
WHEN DR2_030Z = 18 THEN 'Tentempie' -- categorize numeric values
WHEN DR2_030Z = 19 THEN 'Bebida' -- categorize numeric values
WHEN DR2_030Z = 91 THEN 'Other' -- categorize numeric values
WHEN DR2_030Z = 99 THEN 'Dont know' -- categorize numeric values
WHEN DR2_030Z IS NULL THEN NULL 
ELSE DR2_030Z 
 END as name_of_eating_occasion, 

CASE
            WHEN DR2FS = 1 THEN 'Store - grocery/supermarket' -- categorize numeric values
WHEN DR2FS = 2 THEN 'Restaurant with waiter/waitress' -- categorize numeric values
WHEN DR2FS = 3 THEN 'Restaurant fast food/pizza' -- categorize numeric values
WHEN DR2FS = 4 THEN 'Bar/tavern/lounge' -- categorize numeric values
WHEN DR2FS = 5 THEN 'Restaurant no additional information' -- categorize numeric values
WHEN DR2FS = 6 THEN 'Cafeteria NOT in a K-12 school' -- categorize numeric values
WHEN DR2FS = 7 THEN 'Cafeteria in a K-12 school' -- categorize numeric values
WHEN DR2FS = 8 THEN 'Child/Adult care center' -- categorize numeric values
WHEN DR2FS = 9 THEN 'Child/Adult home care' -- categorize numeric values
WHEN DR2FS = 10 THEN 'Soup kitchen/shelter/food pantry' -- categorize numeric values
WHEN DR2FS = 11 THEN 'Meals on Wheels' -- categorize numeric values
WHEN DR2FS = 12 THEN 'Community food program - other' -- categorize numeric values
WHEN DR2FS = 13 THEN 'Community program no additional information' -- categorize numeric values
WHEN DR2FS = 14 THEN 'Vending machine' -- categorize numeric values
WHEN DR2FS = 15 THEN 'Common coffee pot or snack tray' -- categorize numeric values
WHEN DR2FS = 16 THEN 'From someone else/gift' -- categorize numeric values
WHEN DR2FS = 17 THEN 'Mail order purchase' -- categorize numeric values
WHEN DR2FS = 18 THEN 'Residential dining facility' -- categorize numeric values
WHEN DR2FS = 19 THEN 'Grown or caught by you or someone you know' -- categorize numeric values
WHEN DR2FS = 20 THEN 'Fish caught by you or someone you know' -- categorize numeric values
WHEN DR2FS = 24 THEN 'Sport, recreation, or entertainment facility' -- categorize numeric values
WHEN DR2FS = 25 THEN 'Street vendor, vending truck' -- categorize numeric values
WHEN DR2FS = 26 THEN 'Fundraiser sales' -- categorize numeric values
WHEN DR2FS = 27 THEN 'Store - convenience type' -- categorize numeric values
WHEN DR2FS = 28 THEN 'Store - no additional info' -- categorize numeric values
WHEN DR2FS = 91 THEN 'Other, specify' -- categorize numeric values
WHEN DR2FS = 99 THEN 'Dont know' -- categorize numeric values
WHEN DR2FS IS NULL THEN NULL 
ELSE DR2FS 
 END as source_of_food, 

CASE
            WHEN DR2_040Z = 1 THEN 'Yes' -- categorize numeric values
WHEN DR2_040Z = 2 THEN 'No' -- categorize numeric values
WHEN DR2_040Z = 7 THEN 'Refused' -- categorize numeric values
WHEN DR2_040Z = 9 THEN 'Dont know' -- categorize numeric values
WHEN DR2_040Z IS NULL THEN NULL 
ELSE DR2_040Z 
 END as did_you_eat_this_meal_at_home, 

CASE
            WHEN DR2IFDCD IS NULL THEN NULL 
ELSE DR2IFDCD 
 END as usda_food_code, 

CASE
            WHEN DR2IGRMS IS NULL THEN NULL 
ELSE DR2IGRMS 
 END as grams, 

CASE
            WHEN DR2IKCAL IS NULL THEN NULL 
ELSE DR2IKCAL 
 END as energy_kcal, 

CASE
            WHEN DR2IPROT IS NULL THEN NULL 
ELSE DR2IPROT 
 END as protein_gm, 

CASE
            WHEN DR2ICARB IS NULL THEN NULL 
ELSE DR2ICARB 
 END as carbohydrate_gm, 

CASE
            WHEN DR2ISUGR IS NULL THEN NULL 
ELSE DR2ISUGR 
 END as total_sugars_gm, 

CASE
            WHEN DR2IFIBE IS NULL THEN NULL 
ELSE DR2IFIBE 
 END as dietary_fiber_gm, 

CASE
            WHEN DR2ITFAT IS NULL THEN NULL 
ELSE DR2ITFAT 
 END as total_fat_gm, 

CASE
            WHEN DR2ISFAT IS NULL THEN NULL 
ELSE DR2ISFAT 
 END as total_saturated_fatty_acids_gm, 

CASE
            WHEN DR2IMFAT IS NULL THEN NULL 
ELSE DR2IMFAT 
 END as total_monounsaturated_fatty_acids_gm, 

CASE
            WHEN DR2IPFAT IS NULL THEN NULL 
ELSE DR2IPFAT 
 END as total_polyunsaturated_fatty_acids_gm, 

CASE
            WHEN DR2ICHOL IS NULL THEN NULL 
ELSE DR2ICHOL 
 END as cholesterol_mg, 

CASE
            WHEN DR2IATOC IS NULL THEN NULL 
ELSE DR2IATOC 
 END as vitamin_e_as_alpha_tocopherol_mg, 

CASE
            WHEN DR2IATOA IS NULL THEN NULL 
ELSE DR2IATOA 
 END as added_alpha_tocopherol_vitamin_e_mg, 

CASE
            WHEN DR2IRET IS NULL THEN NULL 
ELSE DR2IRET 
 END as retinol_mcg, 

CASE
            WHEN DR2IVARA IS NULL THEN NULL 
ELSE DR2IVARA 
 END as vitamin_a_rae_mcg, 

CASE
            WHEN DR2IACAR IS NULL THEN NULL 
ELSE DR2IACAR 
 END as alpha_carotene_mcg, 

CASE
            WHEN DR2IBCAR IS NULL THEN NULL 
ELSE DR2IBCAR 
 END as beta_carotene_mcg, 

CASE
            WHEN DR2ICRYP IS NULL THEN NULL 
ELSE DR2ICRYP 
 END as beta_cryptoxanthin_mcg, 

CASE
            WHEN DR2ILYCO IS NULL THEN NULL 
ELSE DR2ILYCO 
 END as lycopene_mcg, 

CASE
            WHEN DR2ILZ IS NULL THEN NULL 
ELSE DR2ILZ 
 END as lutein_zeaxanthin_mcg, 

CASE
            WHEN DR2IVB1 IS NULL THEN NULL 
ELSE DR2IVB1 
 END as thiamin_vitamin_b1_mg, 

CASE
            WHEN DR2IVB2 IS NULL THEN NULL 
ELSE DR2IVB2 
 END as riboflavin_vitamin_b2_mg, 

CASE
            WHEN DR2INIAC IS NULL THEN NULL 
ELSE DR2INIAC 
 END as niacin_mg, 

CASE
            WHEN DR2IVB6 IS NULL THEN NULL 
ELSE DR2IVB6 
 END as vitamin_b6_mg, 

CASE
            WHEN DR2IFOLA IS NULL THEN NULL 
ELSE DR2IFOLA 
 END as total_folate_mcg, 

CASE
            WHEN DR2IFA IS NULL THEN NULL 
ELSE DR2IFA 
 END as folic_acid_mcg, 

CASE
            WHEN DR2IFF IS NULL THEN NULL 
ELSE DR2IFF 
 END as food_folate_mcg, 

CASE
            WHEN DR2IFDFE IS NULL THEN NULL 
ELSE DR2IFDFE 
 END as folate_dfe_mcg, 

CASE
            WHEN DR2ICHL IS NOT NULL THEN SAFE_CAST(DR2ICHL AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DR2ICHL IS NULL THEN NULL 
ELSE DR2ICHL 
 END as total_choline_mg, 

CASE
            WHEN DR2IVB12 IS NULL THEN NULL 
ELSE DR2IVB12 
 END as vitamin_b12_mcg, 

CASE
            WHEN DR2IB12A IS NULL THEN NULL 
ELSE DR2IB12A 
 END as added_vitamin_b12_mcg, 

CASE
            WHEN DR2IVC IS NULL THEN NULL 
ELSE DR2IVC 
 END as vitamin_c_mg, 

CASE
            WHEN DR2IVD IS NOT NULL THEN SAFE_CAST(DR2IVD AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DR2IVD IS NULL THEN NULL 
ELSE DR2IVD 
 END as vitamin_d_d2_d3_mcg, 

CASE
            WHEN DR2IVK IS NULL THEN NULL 
ELSE DR2IVK 
 END as vitamin_k_mcg, 

CASE
            WHEN DR2ICALC IS NULL THEN NULL 
ELSE DR2ICALC 
 END as calcium_mg, 

CASE
            WHEN DR2IPHOS IS NULL THEN NULL 
ELSE DR2IPHOS 
 END as phosphorus_mg, 

CASE
            WHEN DR2IMAGN IS NULL THEN NULL 
ELSE DR2IMAGN 
 END as magnesium_mg, 

CASE
            WHEN DR2IIRON IS NULL THEN NULL 
ELSE DR2IIRON 
 END as iron_mg, 

CASE
            WHEN DR2IZINC IS NULL THEN NULL 
ELSE DR2IZINC 
 END as zinc_mg, 

CASE
            WHEN DR2ICOPP IS NULL THEN NULL 
ELSE DR2ICOPP 
 END as copper_mg, 

CASE
            WHEN DR2ISODI IS NULL THEN NULL 
ELSE DR2ISODI 
 END as sodium_mg, 

CASE
            WHEN DR2IPOTA IS NULL THEN NULL 
ELSE DR2IPOTA 
 END as potassium_mg, 

CASE
            WHEN DR2ISELE IS NULL THEN NULL 
ELSE DR2ISELE 
 END as selenium_mcg, 

CASE
            WHEN DR2ICAFF IS NULL THEN NULL 
ELSE DR2ICAFF 
 END as caffeine_mg, 

CASE
            WHEN DR2ITHEO IS NULL THEN NULL 
ELSE DR2ITHEO 
 END as theobromine_mg, 

CASE
            WHEN DR2IALCO IS NULL THEN NULL 
ELSE DR2IALCO 
 END as alcohol_gm, 

CASE
            WHEN DR2IMOIS IS NULL THEN NULL 
ELSE DR2IMOIS 
 END as moisture_gm, 

CASE
            WHEN DR2IS040 IS NULL THEN NULL 
ELSE DR2IS040 
 END as sfa_4_0_butanoic_gm, 

CASE
            WHEN DR2IS060 IS NULL THEN NULL 
ELSE DR2IS060 
 END as sfa_6_0_hexanoic_gm, 

CASE
            WHEN DR2IS080 IS NULL THEN NULL 
ELSE DR2IS080 
 END as sfa_8_0_octanoic_gm, 

CASE
            WHEN DR2IS100 IS NULL THEN NULL 
ELSE DR2IS100 
 END as sfa_10_0_decanoic_gm, 

CASE
            WHEN DR2IS120 IS NULL THEN NULL 
ELSE DR2IS120 
 END as sfa_12_0_dodecanoic_gm, 

CASE
            WHEN DR2IS140 IS NULL THEN NULL 
ELSE DR2IS140 
 END as sfa_14_0_tetradecanoic_gm, 

CASE
            WHEN DR2IS160 IS NULL THEN NULL 
ELSE DR2IS160 
 END as sfa_16_0_hexadecanoic_gm, 

CASE
            WHEN DR2IS180 IS NULL THEN NULL 
ELSE DR2IS180 
 END as sfa_18_0_octadecanoic_gm, 

CASE
            WHEN DR2IM161 IS NULL THEN NULL 
ELSE DR2IM161 
 END as mfa_16_1_hexadecenoic_gm, 

CASE
            WHEN DR2IM181 IS NULL THEN NULL 
ELSE DR2IM181 
 END as mfa_18_1_octadecenoic_gm, 

CASE
            WHEN DR2IM201 IS NULL THEN NULL 
ELSE DR2IM201 
 END as mfa_20_1_eicosenoic_gm, 

CASE
            WHEN DR2IM221 IS NULL THEN NULL 
ELSE DR2IM221 
 END as mfa_22_1_docosenoic_gm, 

CASE
            WHEN DR2IP182 IS NULL THEN NULL 
ELSE DR2IP182 
 END as pfa_18_2_octadecadienoic_gm, 

CASE
            WHEN DR2IP183 IS NULL THEN NULL 
ELSE DR2IP183 
 END as pfa_18_3_octadecatrienoic_gm, 

CASE
            WHEN DR2IP184 IS NULL THEN NULL 
ELSE DR2IP184 
 END as pfa_18_4_octadecatetraenoic_gm, 

CASE
            WHEN DR2IP204 IS NULL THEN NULL 
ELSE DR2IP204 
 END as pfa_20_4_eicosatetraenoic_gm, 

CASE
            WHEN DR2IP205 IS NULL THEN NULL 
ELSE DR2IP205 
 END as pfa_20_5_eicosapentaenoic_gm, 

CASE
            WHEN DR2IP225 IS NULL THEN NULL 
ELSE DR2IP225 
 END as pfa_22_5_docosapentaenoic_gm, 

CASE
            WHEN DR2IP226 IS NULL THEN NULL 
ELSE DR2IP226 
 END as pfa_22_6_docosahexaenoic_gm, 

 FROM {{ ref('stg_dietary_interview_individual_foods_second_day_dietary') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_DR2IFF.htm
        