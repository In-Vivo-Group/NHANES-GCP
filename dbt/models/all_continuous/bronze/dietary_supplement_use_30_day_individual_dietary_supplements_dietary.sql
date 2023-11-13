SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN DSDPID IS NOT NULL THEN SAFE_CAST(DSDPID AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DSDPID IS NULL THEN NULL 
ELSE DSDPID 
 END as supplement_id_number, 

CASE
            WHEN DSDSUPP = 'Supplement Name' THEN 'Value was recorded' -- categorize string values 
WHEN DSDSUPP IS NULL THEN NULL 
ELSE DSDSUPP 
 END as supplement_name, 

CASE
            WHEN DSDANTA = 0 THEN 'Non-antacid supplement' -- categorize numeric values
WHEN DSDANTA = 1 THEN 'Antacid reported with dietary supplement (DSQ)' -- categorize numeric values
WHEN DSDANTA = 2 THEN 'Antacid reported with medication (RXQ)' -- categorize numeric values
WHEN DSDANTA IS NULL THEN NULL 
ELSE DSDANTA 
 END as antacid_reported_as_a_dietary_supplement, 

CASE
            WHEN DSD070 = 1 THEN 'Yes' -- categorize numeric values
WHEN DSD070 = 2 THEN 'No' -- categorize numeric values
WHEN DSD070 IS NULL THEN NULL 
ELSE DSD070 
 END as was_container_seen, 

CASE
            WHEN DSDMTCH = 1 THEN 'Exact or near exact match' -- categorize numeric values
WHEN DSDMTCH = 2 THEN 'Probable match' -- categorize numeric values
WHEN DSDMTCH = 3 THEN 'Generic match' -- categorize numeric values
WHEN DSDMTCH = 4 THEN 'Reasonable match' -- categorize numeric values
WHEN DSDMTCH = 5 THEN 'Default match' -- categorize numeric values
WHEN DSDMTCH = 6 THEN 'No match' -- categorize numeric values
WHEN DSDMTCH = 7 THEN 'Refused' -- categorize numeric values
WHEN DSDMTCH = 9 THEN 'Dont know' -- categorize numeric values
WHEN DSDMTCH IS NULL THEN NULL 
ELSE DSDMTCH 
 END as matching_code, 

CASE
            WHEN DSD090 IS NULL THEN NULL 
ELSE DSD090 
 END as how_long_supplement_taken_days, 

CASE
            WHEN DSD103 IS NULL THEN NULL 
ELSE DSD103 
 END as days_supplement_taken_past_30_days, 

CASE
            WHEN DSD122Q IS NULL THEN NULL 
ELSE DSD122Q 
 END as quantity_of_supplement_taken_daily, 

CASE
            WHEN DSD122U = 1 THEN 'TABLETS, CAPSULES, PILLS, CAPLETS, SOFTGELS, GEL CAPS, VEGICAPS, CHEWABLE TABLETS' -- categorize numeric values
WHEN DSD122U = 2 THEN 'Droppers' -- categorize numeric values
WHEN DSD122U = 3 THEN 'Drops' -- categorize numeric values
WHEN DSD122U = 5 THEN 'Injections/shots' -- categorize numeric values
WHEN DSD122U = 6 THEN 'LOZENGES/COUGH DROPS' -- categorize numeric values
WHEN DSD122U = 7 THEN 'Milliliters' -- categorize numeric values
WHEN DSD122U = 11 THEN 'Tablespoons' -- categorize numeric values
WHEN DSD122U = 12 THEN 'Teaspoons' -- categorize numeric values
WHEN DSD122U = 13 THEN 'Wafers' -- categorize numeric values
WHEN DSD122U = 15 THEN 'Cans' -- categorize numeric values
WHEN DSD122U = 16 THEN 'Grams' -- categorize numeric values
WHEN DSD122U = 17 THEN 'Dots' -- categorize numeric values
WHEN DSD122U = 18 THEN 'Cups' -- categorize numeric values
WHEN DSD122U = 19 THEN 'Sprays/Squirts' -- categorize numeric values
WHEN DSD122U = 20 THEN 'CHEWS/GUMMIES' -- categorize numeric values
WHEN DSD122U = 21 THEN 'Scoop' -- categorize numeric values
WHEN DSD122U = 22 THEN 'CC' -- categorize numeric values
WHEN DSD122U = 23 THEN 'Capful' -- categorize numeric values
WHEN DSD122U = 27 THEN 'Ounces' -- categorize numeric values
WHEN DSD122U = 28 THEN 'Packages/Packets' -- categorize numeric values
WHEN DSD122U = 29 THEN 'Vial' -- categorize numeric values
WHEN DSD122U = 30 THEN 'Gumball' -- categorize numeric values
WHEN DSD122U = 31 THEN 'Strips' -- categorize numeric values
WHEN DSD122U = 32 THEN 'Bottle' -- categorize numeric values
WHEN DSD122U = 77 THEN 'Refused' -- categorize numeric values
WHEN DSD122U = 99 THEN 'Dont Know' -- categorize numeric values
WHEN DSD122U IS NULL THEN NULL 
ELSE DSD122U 
 END as dosage_form, 

CASE
            WHEN DSDACTSS IS NULL THEN NULL 
ELSE DSDACTSS 
 END as reported_serving_size_label_serving_size, 

CASE
            WHEN DSDDAY1 = 1 THEN 'Yes' -- categorize numeric values
WHEN DSDDAY1 = 2 THEN 'No' -- categorize numeric values
WHEN DSDDAY1 = 7 THEN 'Refused' -- categorize numeric values
WHEN DSDDAY1 = 9 THEN 'Dont know' -- categorize numeric values
WHEN DSDDAY1 IS NULL THEN NULL 
ELSE DSDDAY1 
 END as reported_product_during_day_1, 

CASE
            WHEN DSDDAY2 = 1 THEN 'Yes' -- categorize numeric values
WHEN DSDDAY2 = 2 THEN 'No' -- categorize numeric values
WHEN DSDDAY2 = 7 THEN 'Refused' -- categorize numeric values
WHEN DSDDAY2 = 9 THEN 'Dont know' -- categorize numeric values
WHEN DSDDAY2 IS NULL THEN NULL 
ELSE DSDDAY2 
 END as reported_product_during_day_2, 

CASE
            WHEN DSQ124 = 1 THEN 'Decided to take it for reasons of my own' -- categorize numeric values
WHEN DSQ124 = 2 THEN 'A doctor or other health provider told me to' -- categorize numeric values
WHEN DSQ124 = 7 THEN 'Refused' -- categorize numeric values
WHEN DSQ124 = 9 THEN 'Dont know' -- categorize numeric values
WHEN DSQ124 IS NULL THEN NULL 
ELSE DSQ124 
 END as took_product_on_own_or_doctor_advised, 

CASE
            WHEN DSQ128A = 10 THEN 'FOR GOOD BOWEL/COLON HEALTH' -- categorize numeric values
WHEN DSQ128A = 77 THEN 'Refused' -- categorize numeric values
WHEN DSQ128A = 99 THEN 'Dont Know' -- categorize numeric values
WHEN DSQ128A IS NULL THEN NULL 
ELSE DSQ128A 
 END as for_good_bowel_colon_health, 

CASE
            WHEN DSQ128B = 11 THEN 'FOR PROSTATE HEALTH' -- categorize numeric values
WHEN DSQ128B IS NULL THEN NULL 
ELSE DSQ128B 
 END as for_prostate_health, 

CASE
            WHEN DSQ128C = 12 THEN 'FOR MENTAL HEALTH' -- categorize numeric values
WHEN DSQ128C IS NULL THEN NULL 
ELSE DSQ128C 
 END as for_mental_health, 

CASE
            WHEN DSQ128D = 13 THEN 'TO PREVENT HEALTH PROBLEMS' -- categorize numeric values
WHEN DSQ128D IS NULL THEN NULL 
ELSE DSQ128D 
 END as to_prevent_health_problems, 

CASE
            WHEN DSQ128E = 14 THEN 'TO IMPROVE MY OVERALL HEALTH' -- categorize numeric values
WHEN DSQ128E IS NULL THEN NULL 
ELSE DSQ128E 
 END as to_improve_my_overall_health, 

CASE
            WHEN DSQ128F = 15 THEN 'FOR TEETH, PREVENT CAVITIES' -- categorize numeric values
WHEN DSQ128F IS NULL THEN NULL 
ELSE DSQ128F 
 END as for_teeth_prevent_cavities, 

CASE
            WHEN DSQ128G = 16 THEN 'TO SUPPLEMENT MY DIET, FOOD NOT ENOUGH' -- categorize numeric values
WHEN DSQ128G IS NULL THEN NULL 
ELSE DSQ128G 
 END as to_supplement_my_diet_food_not_enough, 

CASE
            WHEN DSQ128H = 17 THEN 'TO MAINTAIN HEALTH (TO STAY HEALTHY)' -- categorize numeric values
WHEN DSQ128H IS NULL THEN NULL 
ELSE DSQ128H 
 END as to_maintain_health_to_stay_healthy, 

CASE
            WHEN DSQ128I = 18 THEN 'TO PREVENT COLDS, BOOST IMMUNE SYSTEM' -- categorize numeric values
WHEN DSQ128I IS NULL THEN NULL 
ELSE DSQ128I 
 END as to_prevent_colds_boost_immune_system, 

CASE
            WHEN DSQ128J = 19 THEN 'FOR HEART HEALTH, CHOLESTEROL' -- categorize numeric values
WHEN DSQ128J IS NULL THEN NULL 
ELSE DSQ128J 
 END as for_heart_health_cholesterol, 

CASE
            WHEN DSQ128K = 20 THEN 'FOR EYE HEALTH' -- categorize numeric values
WHEN DSQ128K IS NULL THEN NULL 
ELSE DSQ128K 
 END as for_eye_health, 

CASE
            WHEN DSQ128L = 21 THEN 'FOR HEALTHY JOINTS, ARTHRITIS' -- categorize numeric values
WHEN DSQ128L IS NULL THEN NULL 
ELSE DSQ128L 
 END as for_healthy_joints_arthritis, 

CASE
            WHEN DSQ128M = 22 THEN 'HEALTHY SKIN, HAIR, AND NAIL' -- categorize numeric values
WHEN DSQ128M IS NULL THEN NULL 
ELSE DSQ128M 
 END as for_healthy_skin_hair_and_nails, 

CASE
            WHEN DSQ128N = 23 THEN 'FOR WEIGHT LOSS' -- categorize numeric values
WHEN DSQ128N IS NULL THEN NULL 
ELSE DSQ128N 
 END as for_weight_loss, 

CASE
            WHEN DSQ128O = 24 THEN 'FOR BONE HEALTH, BUILD STRONG BONES, OSTEOPOROSIS' -- categorize numeric values
WHEN DSQ128O IS NULL THEN NULL 
ELSE DSQ128O 
 END as for_bone_health, 

CASE
            WHEN DSQ128P = 25 THEN 'TO GET MORE ENERGY' -- categorize numeric values
WHEN DSQ128P IS NULL THEN NULL 
ELSE DSQ128P 
 END as to_get_more_energy, 

CASE
            WHEN DSQ128Q = 26 THEN 'FOR PREGNANCY/BREASTFEEDING' -- categorize numeric values
WHEN DSQ128Q IS NULL THEN NULL 
ELSE DSQ128Q 
 END as for_pregnancy_breastfeeding, 

CASE
            WHEN DSQ128R = 27 THEN 'FOR ANEMIA, SUCH AS LOW IRON' -- categorize numeric values
WHEN DSQ128R IS NULL THEN NULL 
ELSE DSQ128R 
 END as for_anemia_such_as_low_iron, 

CASE
            WHEN DSD128T = 28 THEN 'TO MAINTAIN BLOOD SUGAR, DIABETES' -- categorize numeric values
WHEN DSD128T IS NULL THEN NULL 
ELSE DSD128T 
 END as to_maintain_blood_sugar_diabetes, 

CASE
            WHEN DSD128V = 30 THEN 'FOR KIDNEY AND BLADDER HEALTH' -- categorize numeric values
WHEN DSD128V IS NULL THEN NULL 
ELSE DSD128V 
 END as for_kidney_and_bladder_health, 

CASE
            WHEN DSD128W = 31 THEN 'FOR RESPIRATORY HEALTH, ASTHMA' -- categorize numeric values
WHEN DSD128W IS NULL THEN NULL 
ELSE DSD128W 
 END as for_respiratory_health_asthma, 

CASE
            WHEN DSD128X = 32 THEN 'FOR ALLERGIES' -- categorize numeric values
WHEN DSD128X IS NULL THEN NULL 
ELSE DSD128X 
 END as for_allergies, 

CASE
            WHEN DSD128Z = 34 THEN 'IMPROVE DIGESTION' -- categorize numeric values
WHEN DSD128Z IS NULL THEN NULL 
ELSE DSD128Z 
 END as to_improve_digestion, 

CASE
            WHEN DSD128AA = 35 THEN 'FOR MENOPAUSE, HOT FLASHES' -- categorize numeric values
WHEN DSD128AA IS NULL THEN NULL 
ELSE DSD128AA 
 END as for_menopause_hot_flashes, 

CASE
            WHEN DSD128BB = 36 THEN 'FOR MUSCLE RELATED ISSUES, MUSCLE CRAMPS' -- categorize numeric values
WHEN DSD128BB IS NULL THEN NULL 
ELSE DSD128BB 
 END as for_muscle_related_issues_muscle_cramps, 

CASE
            WHEN DSD128DD = 38 THEN 'FOR RELAXATION, STRESS, SLEEP' -- categorize numeric values
WHEN DSD128DD IS NULL THEN NULL 
ELSE DSD128DD 
 END as for_relaxation_stress_sleep, 

CASE
            WHEN DSD128EE = 39 THEN 'FOR NERVOUS SYSTEM HEALTH' -- categorize numeric values
WHEN DSD128EE IS NULL THEN NULL 
ELSE DSD128EE 
 END as for_nervous_system_health, 

CASE
            WHEN DSD128FF = 40 THEN 'FOR LIVER HEALTH, DETOXIFICATION, CLEANSE SYSTEM' -- categorize numeric values
WHEN DSD128FF IS NULL THEN NULL 
ELSE DSD128FF 
 END as for_liver_health_detoxification, 

CASE
            WHEN DSD128GG = 41 THEN 'FOR ANTIOXIDANTS' -- categorize numeric values
WHEN DSD128GG IS NULL THEN NULL 
ELSE DSD128GG 
 END as for_antioxidants, 

CASE
            WHEN DSD128HH = 42 THEN 'WORD OF MOUTH, ADVERTISEMENT' -- categorize numeric values
WHEN DSD128HH IS NULL THEN NULL 
ELSE DSD128HH 
 END as word_of_mouth_advertisement, 

CASE
            WHEN DSD128II = 43 THEN 'FOR THYROID HEALTH, GOUT' -- categorize numeric values
WHEN DSD128II IS NULL THEN NULL 
ELSE DSD128II 
 END as for_thyroid_health_gout, 

CASE
            WHEN DSD128JJ = 44 THEN 'FOR WEIGHT GAIN' -- categorize numeric values
WHEN DSD128JJ IS NULL THEN NULL 
ELSE DSD128JJ 
 END as for_weight_gain, 

CASE
            WHEN DSD128KK = '45' THEN 'LOW LEVELS IN BLOOD' -- categorize string values 
WHEN DSD128KK IS NULL THEN NULL 
ELSE DSD128KK 
 END as low_levels_in_blood, 

CASE
            WHEN DSD128LL = '46' THEN 'FOR SUPPORT AFTER SURGERY' -- categorize string values 
WHEN DSD128LL IS NULL THEN NULL 
ELSE DSD128LL 
 END as for_support_after_surgery, 

CASE
            WHEN DSD128MM = '47' THEN 'HEADACHES AND DIZZINESS' -- categorize string values 
WHEN DSD128MM IS NULL THEN NULL 
ELSE DSD128MM 
 END as headaches_and_dizziness, 

CASE
            WHEN DSQ128NN = '48' THEN 'TO BUILD MUSCLE' -- categorize string values 
WHEN DSQ128NN IS NULL THEN NULL 
ELSE DSQ128NN 
 END as to_build_muscle, 

CASE
            WHEN DSD128OO = '49' THEN 'FOR INFLAMMATION' -- categorize string values 
WHEN DSD128OO IS NULL THEN NULL 
ELSE DSD128OO 
 END as for_inflammation, 

CASE
            WHEN DSD128PP = '50' THEN 'FOR FLUID/WATER BALANCE' -- categorize string values 
WHEN DSD128PP IS NULL THEN NULL 
ELSE DSD128PP 
 END as for_fluid_water_balance, 

CASE
            WHEN DSQ128S = 91 THEN 'OTHER SPECIFY' -- categorize numeric values
WHEN DSQ128S IS NULL THEN NULL 
ELSE DSQ128S 
 END as other, 

CASE
            WHEN RXQ215A = 1 THEN 'Antacid' -- categorize numeric values
WHEN RXQ215A = 2 THEN 'Calcium Supplement' -- categorize numeric values
WHEN RXQ215A = 3 THEN 'Both' -- categorize numeric values
WHEN RXQ215A = 4 THEN 'Neither' -- categorize numeric values
WHEN RXQ215A = 7 THEN 'Refused' -- categorize numeric values
WHEN RXQ215A = 9 THEN 'Dont know' -- categorize numeric values
WHEN RXQ215A IS NULL THEN NULL 
ELSE RXQ215A 
 END as antacid_calcium_supplement_or_both, 

CASE
            WHEN DSQIKCAL IS NULL THEN NULL 
ELSE DSQIKCAL 
 END as energy_kcal, 

CASE
            WHEN DSQIPROT IS NULL THEN NULL 
ELSE DSQIPROT 
 END as protein_gm, 

CASE
            WHEN DSQICARB IS NULL THEN NULL 
ELSE DSQICARB 
 END as carbohydrate_gm, 

CASE
            WHEN DSQISUGR IS NULL THEN NULL 
ELSE DSQISUGR 
 END as total_sugars_gm, 

CASE
            WHEN DSQIFIBE IS NULL THEN NULL 
ELSE DSQIFIBE 
 END as dietary_fiber_gm, 

CASE
            WHEN DSQITFAT IS NULL THEN NULL 
ELSE DSQITFAT 
 END as total_fat_gm, 

CASE
            WHEN DSQISFAT IS NULL THEN NULL 
ELSE DSQISFAT 
 END as total_saturated_fatty_acids_gm, 

CASE
            WHEN DSQIMFAT IS NULL THEN NULL 
ELSE DSQIMFAT 
 END as total_monounsaturated_fatty_acids_gm, 

CASE
            WHEN DSQIPFAT IS NULL THEN NULL 
ELSE DSQIPFAT 
 END as total_polyunsaturated_fatty_acids_gm, 

CASE
            WHEN DSQICHOL IS NULL THEN NULL 
ELSE DSQICHOL 
 END as cholesterol_mg, 

CASE
            WHEN DSQILYCO IS NULL THEN NULL 
ELSE DSQILYCO 
 END as lycopene_mcg, 

CASE
            WHEN DSQILZ IS NULL THEN NULL 
ELSE DSQILZ 
 END as lutein_zeaxanthin_mcg, 

CASE
            WHEN DSQIVB1 IS NULL THEN NULL 
ELSE DSQIVB1 
 END as thiamin_vitamin_b1_mg, 

CASE
            WHEN DSQIVB2 IS NULL THEN NULL 
ELSE DSQIVB2 
 END as riboflavin_vitamin_b2_mg, 

CASE
            WHEN DSQINIAC IS NULL THEN NULL 
ELSE DSQINIAC 
 END as niacin_mg, 

CASE
            WHEN DSQIVB6 IS NULL THEN NULL 
ELSE DSQIVB6 
 END as vitamin_b6_mg, 

CASE
            WHEN DSQIFA IS NULL THEN NULL 
ELSE DSQIFA 
 END as folic_acid_mcg, 

CASE
            WHEN DSQIFDFE IS NULL THEN NULL 
ELSE DSQIFDFE 
 END as folate_dfe_mcg, 

CASE
            WHEN DSQICHL IS NULL THEN NULL 
ELSE DSQICHL 
 END as total_choline_mg, 

CASE
            WHEN DSQIVB12 IS NULL THEN NULL 
ELSE DSQIVB12 
 END as vitamin_b12_mcg, 

CASE
            WHEN DSQIVC IS NULL THEN NULL 
ELSE DSQIVC 
 END as vitamin_c_mg, 

CASE
            WHEN DSQIVK IS NULL THEN NULL 
ELSE DSQIVK 
 END as vitamin_k_mcg, 

CASE
            WHEN DSQIVD IS NULL THEN NULL 
ELSE DSQIVD 
 END as vitamin_d_d2_d3_mcg, 

CASE
            WHEN DSQICALC IS NULL THEN NULL 
ELSE DSQICALC 
 END as calcium_mg, 

CASE
            WHEN DSQIPHOS IS NULL THEN NULL 
ELSE DSQIPHOS 
 END as phosphorus_mg, 

CASE
            WHEN DSQIMAGN IS NULL THEN NULL 
ELSE DSQIMAGN 
 END as magnesium_mg, 

CASE
            WHEN DSQIIRON IS NULL THEN NULL 
ELSE DSQIIRON 
 END as iron_mg, 

CASE
            WHEN DSQIZINC IS NULL THEN NULL 
ELSE DSQIZINC 
 END as zinc_mg, 

CASE
            WHEN DSQICOPP IS NULL THEN NULL 
ELSE DSQICOPP 
 END as copper_mg, 

CASE
            WHEN DSQISODI IS NULL THEN NULL 
ELSE DSQISODI 
 END as sodium_mg, 

CASE
            WHEN DSQIPOTA IS NULL THEN NULL 
ELSE DSQIPOTA 
 END as potassium_mg, 

CASE
            WHEN DSQISELE IS NULL THEN NULL 
ELSE DSQISELE 
 END as selenium_mcg, 

CASE
            WHEN DSQICAFF IS NULL THEN NULL 
ELSE DSQICAFF 
 END as caffeine_mg, 

CASE
            WHEN DSQIIODI IS NOT NULL THEN SAFE_CAST(DSQIIODI AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DSQIIODI IS NULL THEN NULL 
ELSE DSQIIODI 
 END as iodine_mcg, 

 FROM {{ ref('stg_dietary_supplement_use_30_day_individual_dietary_supplements_dietary') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/DSQIDS_J.htm
        