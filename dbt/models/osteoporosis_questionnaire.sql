SELECT
SEQN as respondent_sequence_number,
CASE
    WHEN OSQ010a = 1 THEN 'Yes' 
WHEN OSQ010a = 2 THEN 'No' 
WHEN OSQ010a = 7 THEN 'Refused' 
WHEN OSQ010a = 9 THEN 'Don't know' 
WHEN OSQ010a IS NULL THEN NULL 
ELSE NULL 
 END as broken_or_fractured_a_hip,
CASE
    WHEN OSQ010b = 1 THEN 'Yes' 
WHEN OSQ010b = 2 THEN 'No' 
WHEN OSQ010b = 7 THEN 'Refused' 
WHEN OSQ010b = 9 THEN 'Don't know' 
WHEN OSQ010b IS NULL THEN NULL 
ELSE NULL 
 END as broken_or_fractured_a_wrist,
CASE
    WHEN OSQ010c = 1 THEN 'Yes' 
WHEN OSQ010c = 2 THEN 'No' 
WHEN OSQ010c = 7 THEN 'Refused' 
WHEN OSQ010c = 9 THEN 'Don't know' 
WHEN OSQ010c IS NULL THEN NULL 
ELSE NULL 
 END as broken_or_fractured_spine,
CASE
    WHEN OSQ020a = 1 THEN '1' 
WHEN OSQ020a = 2 THEN '2' 
WHEN OSQ020a = 3 THEN '3' 
WHEN OSQ020a = 7777 THEN 'Refused' 
WHEN OSQ020a = 9999 THEN 'Don't know' 
WHEN OSQ020a IS NULL THEN NULL 
ELSE NULL 
 END as times_broken_fractured_hip,
CASE
    WHEN OSQ020b = 1 THEN '1' 
WHEN OSQ020b = 2 THEN '2' 
WHEN OSQ020b = 3 THEN '3' 
WHEN OSQ020b = 4 THEN '4' 
WHEN OSQ020b = 5 THEN '5' 
WHEN OSQ020b = 7777 THEN 'Refused' 
WHEN OSQ020b = 9999 THEN 'Don't know' 
WHEN OSQ020b IS NULL THEN NULL 
ELSE NULL 
 END as times_broken_fractured_wrist,
CASE
    WHEN OSQ020c = 1 THEN '1' 
WHEN OSQ020c = 2 THEN '2' 
WHEN OSQ020c = 3 THEN '3' 
WHEN OSQ020c = 4 THEN '4' 
WHEN OSQ020c = 5 THEN '5' 
WHEN OSQ020c = 7777 THEN 'Refused' 
WHEN OSQ020c = 9999 THEN 'Don't know' 
WHEN OSQ020c IS NULL THEN NULL 
ELSE NULL 
 END as times_broken_fractured_spine,
OSQ025 as OSQ025, -- Could not automatically decode
WHEN OSD030aa IS NOT NULL THEN SAFE_CAST(OSD030aa AS FLOAT64)WHEN OSD030aa IS NULL THEN NULL 
ELSE NULL 
 END as age_when_fractured_hip_1st_time,
CASE
    WHEN OSQ040aa = 1 THEN 'Under 50 years old, or' 
WHEN OSQ040aa = 2 THEN '50 years old or older?' 
WHEN OSQ040aa = 7 THEN 'Refused' 
WHEN OSQ040aa = 9 THEN 'Don't know' 
WHEN OSQ040aa IS NULL THEN NULL 
ELSE NULL 
 END as under_over_50_when_fracd_hip_1st_time,
CASE
    WHEN OSD050aa = 1 THEN 'A fall from standing height or less, for example, tripped, slipped, fell out of bed' 
WHEN OSD050aa = 2 THEN 'A hard fall, such as falling off a ladder or step stool, down stairs' 
WHEN OSD050aa = 3 THEN 'A car accident or other severe trauma' 
WHEN OSD050aa = 7 THEN 'Refused' 
WHEN OSD050aa = 9 THEN 'Don't know' 
WHEN OSD050aa IS NULL THEN NULL 
ELSE NULL 
 END as reason_hip_fracture_occurred_1st_time,
WHEN OSD030ab IS NOT NULL THEN SAFE_CAST(OSD030ab AS FLOAT64)WHEN OSD030ab IS NULL THEN NULL 
ELSE NULL 
 END as age_when_fractured_hip_2nd_time,
CASE
    WHEN OSQ040ab = 1 THEN 'Under 50 years old, or' 
WHEN OSQ040ab = 2 THEN '50 years old or older?' 
WHEN OSQ040ab = 7 THEN 'Refused' 
WHEN OSQ040ab = 9 THEN 'Don't know' 
WHEN OSQ040ab IS NULL THEN NULL 
ELSE NULL 
 END as under_over_50_when_fracd_hip_2nd_time,
CASE
    WHEN OSD050ab = 1 THEN 'A fall from standing height or less, for example, tripped, slipped, fell out of bed' 
WHEN OSD050ab = 2 THEN 'A hard fall, such as falling off a ladder or step stool, down stairs' 
WHEN OSD050ab = 3 THEN 'A car accident or other severe trauma' 
WHEN OSD050ab = 7 THEN 'Refused' 
WHEN OSD050ab = 9 THEN 'Don't know' 
WHEN OSD050ab IS NULL THEN NULL 
ELSE NULL 
 END as reason_hip_fracture_occurred_2nd_time,
CASE
    WHEN OSD030ac = 65 THEN '65' 
WHEN OSD030ac = 80 THEN '80 or older' 
WHEN OSD030ac = 77777 THEN 'Refused' 
WHEN OSD030ac = 99999 THEN 'Don't know' 
WHEN OSD030ac IS NULL THEN NULL 
ELSE NULL 
 END as age_when_fractured_hip_3rd_time,
CASE
    WHEN OSQ040ac = 1 THEN 'Under 50 years old, or' 
WHEN OSQ040ac = 2 THEN '50 years old or older?' 
WHEN OSQ040ac = 7 THEN 'Refused' 
WHEN OSQ040ac = 9 THEN 'Don't know' 
WHEN OSQ040ac IS NULL THEN NULL 
ELSE NULL 
 END as under_over_50_when_fracd_hip_3rd_time,
CASE
    WHEN OSD050ac = 1 THEN 'A fall from standing height or less, for example, tripped, slipped, fell out of bed' 
WHEN OSD050ac = 2 THEN 'A hard fall, such as falling off a ladder or step stool, down stairs' 
WHEN OSD050ac = 3 THEN 'A car accident or other severe trauma' 
WHEN OSD050ac = 7 THEN 'Refused' 
WHEN OSD050ac = 9 THEN 'Don't know' 
WHEN OSD050ac IS NULL THEN NULL 
ELSE NULL 
 END as reason_hip_fracture_occurred_3rd_time,
WHEN OSD030ba IS NOT NULL THEN SAFE_CAST(OSD030ba AS FLOAT64)WHEN OSD030ba IS NULL THEN NULL 
ELSE NULL 
 END as age_when_fractured_wrist_1st_time,
CASE
    WHEN OSQ040ba = 1 THEN 'Under 50 years old, or' 
WHEN OSQ040ba = 2 THEN '50 years old or older?' 
WHEN OSQ040ba = 7 THEN 'Refused' 
WHEN OSQ040ba = 9 THEN 'Don't know' 
WHEN OSQ040ba IS NULL THEN NULL 
ELSE NULL 
 END as under_over_50_when_fracd_wrist_1st_time,
CASE
    WHEN OSD050ba = 1 THEN 'A fall from standing height or less, for example, tripped, slipped, fell out of bed' 
WHEN OSD050ba = 2 THEN 'A hard fall, such as falling off a ladder or step stool, down stairs' 
WHEN OSD050ba = 3 THEN 'A car accident or other severe trauma' 
WHEN OSD050ba = 7 THEN 'Refused' 
WHEN OSD050ba = 9 THEN 'Don't know' 
WHEN OSD050ba IS NULL THEN NULL 
ELSE NULL 
 END as reason_wrist_fracture_occurred_1st_time,
WHEN OSD030bb IS NOT NULL THEN SAFE_CAST(OSD030bb AS FLOAT64)WHEN OSD030bb IS NULL THEN NULL 
ELSE NULL 
 END as age_when_fractured_wrist_2nd_time,
CASE
    WHEN OSQ040bb = 1 THEN 'Under 50 years old, or' 
WHEN OSQ040bb = 2 THEN '50 years old or older?' 
WHEN OSQ040bb = 7 THEN 'Refused' 
WHEN OSQ040bb = 9 THEN 'Don't know' 
WHEN OSQ040bb IS NULL THEN NULL 
ELSE NULL 
 END as under_over_50_when_fracd_wrist_2nd_time,
CASE
    WHEN OSD050bb = 1 THEN 'A fall from standing height or less, for example, tripped, slipped, fell out of bed' 
WHEN OSD050bb = 2 THEN 'A hard fall, such as falling off a ladder or step stool, down stairs' 
WHEN OSD050bb = 3 THEN 'A car accident or other severe trauma' 
WHEN OSD050bb = 7 THEN 'Refused' 
WHEN OSD050bb = 9 THEN 'Don't know' 
WHEN OSD050bb IS NULL THEN NULL 
ELSE NULL 
 END as reason_wrist_fracture_occurred_2nd_time,
WHEN OSD030bc IS NOT NULL THEN SAFE_CAST(OSD030bc AS FLOAT64)WHEN OSD030bc IS NULL THEN NULL 
ELSE NULL 
 END as age_when_fractured_wrist_3rd_time,
CASE
    WHEN OSQ040bc = 1 THEN 'Under 50 years old, or' 
WHEN OSQ040bc = 2 THEN '50 years old or older?' 
WHEN OSQ040bc = 7 THEN 'Refused' 
WHEN OSQ040bc = 9 THEN 'Don't know' 
WHEN OSQ040bc IS NULL THEN NULL 
ELSE NULL 
 END as under_over_50_when_fracd_wrist_3rd_time,
CASE
    WHEN OSD050bc = 1 THEN 'A fall from standing height or less, for example, tripped, slipped, fell out of bed' 
WHEN OSD050bc = 2 THEN 'A hard fall, such as falling off a ladder or step stool, down stairs' 
WHEN OSD050bc = 3 THEN 'A car accident or other severe trauma' 
WHEN OSD050bc = 7 THEN 'Refused' 
WHEN OSD050bc = 9 THEN 'Don't know' 
WHEN OSD050bc IS NULL THEN NULL 
ELSE NULL 
 END as reason_wrist_fracture_occurred_3rd_time,
WHEN OSD030bd IS NOT NULL THEN SAFE_CAST(OSD030bd AS FLOAT64)WHEN OSD030bd IS NULL THEN NULL 
ELSE NULL 
 END as age_when_fractured_wrist_4th_time,
CASE
    WHEN OSQ040bd = 1 THEN 'Under 50 years old, or' 
WHEN OSQ040bd = 2 THEN '50 years old or older?' 
WHEN OSQ040bd = 7 THEN 'Refused' 
WHEN OSQ040bd = 9 THEN 'Don't know' 
WHEN OSQ040bd IS NULL THEN NULL 
ELSE NULL 
 END as under_over_50_when_fracd_wrist_4th_time,
CASE
    WHEN OSD050bd = 1 THEN 'A fall from standing height or less, for example, tripped, slipped, fell out of bed' 
WHEN OSD050bd = 2 THEN 'A hard fall, such as falling off a ladder or step stool, down stairs' 
WHEN OSD050bd = 3 THEN 'A car accident or other severe trama?' 
WHEN OSD050bd = 7 THEN 'Refused' 
WHEN OSD050bd = 9 THEN 'Don't know' 
WHEN OSD050bd IS NULL THEN NULL 
ELSE NULL 
 END as reason_wrist_fracture_occurred_4th_time,
WHEN OSD030be IS NOT NULL THEN SAFE_CAST(OSD030be AS FLOAT64)WHEN OSD030be IS NULL THEN NULL 
ELSE NULL 
 END as age_when_fractured_wrist_5th_time,
CASE
    WHEN OSQ040be = 1 THEN 'Under 50 years old, or' 
WHEN OSQ040be = 2 THEN '50 years old or older?' 
WHEN OSQ040be = 7 THEN 'Refused' 
WHEN OSQ040be = 9 THEN 'Don't know' 
WHEN OSQ040be IS NULL THEN NULL 
ELSE NULL 
 END as under_over_50_when_fracd_wrist_5th_time,
CASE
    WHEN OSD050be = 1 THEN 'A fall from standing height or less, for example, tripped, slipped, fell out of bed' 
WHEN OSD050be = 2 THEN 'A hard fall, such as falling off a ladder or step stool, down stairs or...' 
WHEN OSD050be = 3 THEN 'A car accident or other severe trama?' 
WHEN OSD050be = 7 THEN 'Refused' 
WHEN OSD050be = 9 THEN 'Don't know' 
WHEN OSD050be IS NULL THEN NULL 
ELSE NULL 
 END as reason_wrist_fracture_occurred_5th_time,
WHEN OSD030ca IS NOT NULL THEN SAFE_CAST(OSD030ca AS FLOAT64)WHEN OSD030ca IS NULL THEN NULL 
ELSE NULL 
 END as age_when_fractured_spine_1st_time,
CASE
    WHEN OSQ040ca = 1 THEN 'Under 50 years old, or' 
WHEN OSQ040ca = 2 THEN '50 years old or older?' 
WHEN OSQ040ca = 7 THEN 'Refused' 
WHEN OSQ040ca = 9 THEN 'Don't know' 
WHEN OSQ040ca IS NULL THEN NULL 
ELSE NULL 
 END as under_over_50_when_fracd_spine_1st_time,
CASE
    WHEN OSD050ca = 1 THEN 'A fall from standing height or less, for example, tripped, slipped, fell out of bed' 
WHEN OSD050ca = 2 THEN 'A hard fall, such as falling off a ladder or step stool, down stairs' 
WHEN OSD050ca = 3 THEN 'A car accident or other severe trauma' 
WHEN OSD050ca = 7 THEN 'Refused' 
WHEN OSD050ca = 9 THEN 'Don't know' 
WHEN OSD050ca IS NULL THEN NULL 
ELSE NULL 
 END as reason_spine_fracture_occurred_1st_time,
WHEN OSD030cb IS NOT NULL THEN SAFE_CAST(OSD030cb AS FLOAT64)WHEN OSD030cb IS NULL THEN NULL 
ELSE NULL 
 END as age_when_fractured_spine_2nd_time,
CASE
    WHEN OSQ040cb = 1 THEN 'Under 50 years old, or' 
WHEN OSQ040cb = 2 THEN '50 years old or older?' 
WHEN OSQ040cb = 7 THEN 'Refused' 
WHEN OSQ040cb = 9 THEN 'Don't know' 
WHEN OSQ040cb IS NULL THEN NULL 
ELSE NULL 
 END as under_over_50_when_fracd_spine_2nd_time,
CASE
    WHEN OSD050cb = 1 THEN 'A fall from standing height or less, for example, tripped, slipped, fell out of bed' 
WHEN OSD050cb = 2 THEN 'A hard fall, such as falling off a ladder or step stool, down stairs' 
WHEN OSD050cb = 3 THEN 'A car accident or other severe trauma' 
WHEN OSD050cb = 7 THEN 'Refused' 
WHEN OSD050cb = 9 THEN 'Don't know' 
WHEN OSD050cb IS NULL THEN NULL 
ELSE NULL 
 END as reason_spine_fracture_occurred_2nd_time,
WHEN OSD030cc IS NOT NULL THEN SAFE_CAST(OSD030cc AS FLOAT64)WHEN OSD030cc IS NULL THEN NULL 
ELSE NULL 
 END as age_when_fractured_spine_3rd_time,
CASE
    WHEN OSQ040cc = 1 THEN 'Under 50 years old, or' 
WHEN OSQ040cc = 2 THEN '50 years old or older?' 
WHEN OSQ040cc = 7 THEN 'Refused' 
WHEN OSQ040cc = 9 THEN 'Don't know' 
WHEN OSQ040cc IS NULL THEN NULL 
ELSE NULL 
 END as under_over_50_when_fracd_spine_3rd_time,
CASE
    WHEN OSD050cc = 1 THEN 'A fall from standing height or less, for example, tripped, slipped, fell out of bed' 
WHEN OSD050cc = 2 THEN 'A hard fall, such as falling off a ladder or step stool, down stairs or...' 
WHEN OSD050cc = 3 THEN 'A car accident or other severe trama?' 
WHEN OSD050cc = 7 THEN 'Refused' 
WHEN OSD050cc = 9 THEN 'Don't know' 
WHEN OSD050cc IS NULL THEN NULL 
ELSE NULL 
 END as reason_spine_fracture_occurred_3rd_time,
WHEN OSD030cd IS NOT NULL THEN SAFE_CAST(OSD030cd AS FLOAT64)WHEN OSD030cd IS NULL THEN NULL 
ELSE NULL 
 END as age_when_fractured_spine_4th_time,
CASE
    WHEN OSQ040cd = 1 THEN 'Under 50 years old, or' 
WHEN OSQ040cd = 2 THEN '50 years old or older?' 
WHEN OSQ040cd = 7 THEN 'Refused' 
WHEN OSQ040cd = 9 THEN 'Don't know' 
WHEN OSQ040cd IS NULL THEN NULL 
ELSE NULL 
 END as under_over_50_when_fracd_spine_4th_time,
CASE
    WHEN OSD050cd = 1 THEN 'A fall from standing height or less, for example, tripped, slipped, fell out of bed' 
WHEN OSD050cd = 2 THEN 'A hard fall, such as falling off a ladder or step stool, down stairs or...' 
WHEN OSD050cd = 3 THEN 'A car accident or other severe trama?' 
WHEN OSD050cd = 7 THEN 'Refused' 
WHEN OSD050cd = 9 THEN 'Don't know' 
WHEN OSD050cd IS NULL THEN NULL 
ELSE NULL 
 END as reason_spine_fracture_occurred_4th_time,
CASE
    WHEN OSD030ce = 58 THEN '58' 
WHEN OSD030ce = 80 THEN '80 or older' 
WHEN OSD030ce = 77777 THEN 'Refused' 
WHEN OSD030ce = 99999 THEN 'Don't know' 
WHEN OSD030ce IS NULL THEN NULL 
ELSE NULL 
 END as age_when_fractured_spine_5th_time,
CASE
    WHEN OSQ040ce = 1 THEN 'Under 50 years old, or' 
WHEN OSQ040ce = 2 THEN '50 years old or older?' 
WHEN OSQ040ce = 7 THEN 'Refused' 
WHEN OSQ040ce = 9 THEN 'Don't know' 
WHEN OSQ040ce IS NULL THEN NULL 
ELSE NULL 
 END as under_over_50_when_fracd_spine_5th_time,
CASE
    WHEN OSD050ce = 1 THEN 'A fall from standing height or less, for example, tripped, slipped, fell out of bed' 
WHEN OSD050ce = 2 THEN 'A hard fall, such as falling off a ladder or step stool, down stairs or...' 
WHEN OSD050ce = 3 THEN 'A car accident or other severe trama?' 
WHEN OSD050ce = 7 THEN 'Refused' 
WHEN OSD050ce = 9 THEN 'Don't know' 
WHEN OSD050ce IS NULL THEN NULL 
ELSE NULL 
 END as reason_spine_fracture_occurred_5th_time,
CASE
    WHEN OSQ080 = 1 THEN 'Yes' 
WHEN OSQ080 = 2 THEN 'No' 
WHEN OSQ080 = 7 THEN 'Refused' 
WHEN OSQ080 = 9 THEN 'Don't know' 
WHEN OSQ080 IS NULL THEN NULL 
ELSE NULL 
 END as doctor_ever_told_any_other_fractures,
CASE
    WHEN OSQ090a = 1 THEN 'Yes' 
WHEN OSQ090a = 2 THEN 'No' 
WHEN OSQ090a = 7 THEN 'Refused' 
WHEN OSQ090a = 9 THEN 'Don't know' 
WHEN OSQ090a IS NULL THEN NULL 
ELSE NULL 
 END as fracture_result_of_severe_trauma,
CASE
    WHEN OSQ100a = 10 THEN 'HEAD/FACE' 
WHEN OSQ100a = 11 THEN 'UPPER ARM (HUMERUS)' 
WHEN OSQ100a = 12 THEN 'LOWER ARM BETWEEN WRIST AND ELBOW (DO NOT INCLUDE WRIST)' 
WHEN OSQ100a = 13 THEN 'ELBOW' 
WHEN OSQ100a = 14 THEN 'HAND' 
WHEN OSQ100a = 15 THEN 'FINGERS' 
WHEN OSQ100a = 16 THEN 'SHOULDER' 
WHEN OSQ100a = 17 THEN 'COLLAR BONE' 
WHEN OSQ100a = 18 THEN 'RIBS (EITHER SIDE)' 
WHEN OSQ100a = 19 THEN 'PELVIS (NOT HIP)' 
WHEN OSQ100a = 20 THEN 'UPPER LEG (THIGH EXCLUDING HIP)' 
WHEN OSQ100a = 21 THEN 'LOWER LEG (BETWEEN ANKLE AND KNEE)' 
WHEN OSQ100a = 22 THEN 'KNEE (PATELLA)' 
WHEN OSQ100a = 23 THEN 'ANKLE' 
WHEN OSQ100a = 24 THEN 'HEEL' 
WHEN OSQ100a = 25 THEN 'FOOT' 
WHEN OSQ100a = 26 THEN 'TOES' 
WHEN OSQ100a = 27 THEN 'OTHER (DO NOT SPECIFY)' 
WHEN OSQ100a = 77 THEN 'Refused' 
WHEN OSQ100a = 99 THEN 'Don't know' 
WHEN OSQ100a IS NULL THEN NULL 
ELSE NULL 
 END as where_fracture_occurred,
WHEN OSD110a IS NOT NULL THEN SAFE_CAST(OSD110a AS FLOAT64)WHEN OSD110a IS NULL THEN NULL 
ELSE NULL 
 END as how_old_when_fracture_occurred,
CASE
    WHEN OSQ120a = 1 THEN 'Yes' 
WHEN OSQ120a = 2 THEN 'No' 
WHEN OSQ120a = 7 THEN 'Refused' 
WHEN OSQ120a = 9 THEN 'Don't know' 
WHEN OSQ120a IS NULL THEN NULL 
ELSE NULL 
 END as any_other_fractures,
CASE
    WHEN OSQ090b = 1 THEN 'Yes' 
WHEN OSQ090b = 2 THEN 'No' 
WHEN OSQ090b = 7 THEN 'Refused' 
WHEN OSQ090b = 9 THEN 'Don't know' 
WHEN OSQ090b IS NULL THEN NULL 
ELSE NULL 
 END as fracture_result_of_severe_trauma,
CASE
    WHEN OSQ100b = 10 THEN 'HEAD/FACE' 
WHEN OSQ100b = 11 THEN 'UPPER ARM (HUMERUS)' 
WHEN OSQ100b = 12 THEN 'LOWER ARM BETWEEN WRIST AND ELBOW (DO NOT INCLUDE WRIST)' 
WHEN OSQ100b = 13 THEN 'ELBOW' 
WHEN OSQ100b = 14 THEN 'HAND' 
WHEN OSQ100b = 15 THEN 'FINGERS' 
WHEN OSQ100b = 16 THEN 'SHOULDER' 
WHEN OSQ100b = 17 THEN 'COLLAR BONE' 
WHEN OSQ100b = 18 THEN 'RIBS (EITHER SIDE)' 
WHEN OSQ100b = 19 THEN 'PELVIS (NOT HIP)' 
WHEN OSQ100b = 20 THEN 'UPPER LEG (THIGH EXCLUDING HIP)' 
WHEN OSQ100b = 21 THEN 'LOWER LEG (BETWEEN ANKLE AND KNEE)' 
WHEN OSQ100b = 22 THEN 'KNEE (PATELLA)' 
WHEN OSQ100b = 23 THEN 'ANKLE' 
WHEN OSQ100b = 24 THEN 'HEEL' 
WHEN OSQ100b = 25 THEN 'FOOT' 
WHEN OSQ100b = 26 THEN 'TOES' 
WHEN OSQ100b = 27 THEN 'OTHER (DO NOT SPECIFY)' 
WHEN OSQ100b = 77 THEN 'Refused' 
WHEN OSQ100b = 99 THEN 'Don't know' 
WHEN OSQ100b IS NULL THEN NULL 
ELSE NULL 
 END as where_fracture_occurred,
WHEN OSD110b IS NOT NULL THEN SAFE_CAST(OSD110b AS FLOAT64)WHEN OSD110b IS NULL THEN NULL 
ELSE NULL 
 END as how_old_when_fracture_occurred,
CASE
    WHEN OSQ120b = 1 THEN 'Yes' 
WHEN OSQ120b = 2 THEN 'No' 
WHEN OSQ120b = 7 THEN 'Refused' 
WHEN OSQ120b = 9 THEN 'Don't know' 
WHEN OSQ120b IS NULL THEN NULL 
ELSE NULL 
 END as any_other_fractures,
CASE
    WHEN OSQ090c = 1 THEN 'Yes' 
WHEN OSQ090c = 2 THEN 'No' 
WHEN OSQ090c = 7 THEN 'Refused' 
WHEN OSQ090c = 9 THEN 'Don't know' 
WHEN OSQ090c IS NULL THEN NULL 
ELSE NULL 
 END as fracture_result_of_severe_trauma,
CASE
    WHEN OSQ100c = 10 THEN 'HEAD/FACE' 
WHEN OSQ100c = 11 THEN 'UPPER ARM (HUMERUS)' 
WHEN OSQ100c = 12 THEN 'LOWER ARM BETWEEN WRIST AND ELBOW (DO NOT INCLUDE WRIST)' 
WHEN OSQ100c = 13 THEN 'ELBOW' 
WHEN OSQ100c = 14 THEN 'HAND' 
WHEN OSQ100c = 15 THEN 'FINGERS' 
WHEN OSQ100c = 16 THEN 'SHOULDER' 
WHEN OSQ100c = 17 THEN 'COLLAR BONE' 
WHEN OSQ100c = 18 THEN 'RIBS (EITHER SIDE)' 
WHEN OSQ100c = 19 THEN 'PELVIS (NOT HIP)' 
WHEN OSQ100c = 20 THEN 'UPPER LEG (THIGH EXCLUDING HIP)' 
WHEN OSQ100c = 21 THEN 'LOWER LEG (BETWEEN ANKLE AND KNEE)' 
WHEN OSQ100c = 22 THEN 'KNEE (PATELLA)' 
WHEN OSQ100c = 23 THEN 'ANKLE' 
WHEN OSQ100c = 24 THEN 'HEEL' 
WHEN OSQ100c = 25 THEN 'FOOT' 
WHEN OSQ100c = 26 THEN 'TOES' 
WHEN OSQ100c = 27 THEN 'OTHER (DO NOT SPECIFY)' 
WHEN OSQ100c = 77 THEN 'Refused' 
WHEN OSQ100c = 99 THEN 'Don't know' 
WHEN OSQ100c IS NULL THEN NULL 
ELSE NULL 
 END as where_fracture_occurred,
WHEN OSD110c IS NOT NULL THEN SAFE_CAST(OSD110c AS FLOAT64)WHEN OSD110c IS NULL THEN NULL 
ELSE NULL 
 END as how_old_when_fracture_occurred,
CASE
    WHEN OSQ120c = 1 THEN 'Yes' 
WHEN OSQ120c = 2 THEN 'No' 
WHEN OSQ120c = 7 THEN 'Refused' 
WHEN OSQ120c = 9 THEN 'Don't know' 
WHEN OSQ120c IS NULL THEN NULL 
ELSE NULL 
 END as any_other_fractures,
CASE
    WHEN OSQ090d = 1 THEN 'Yes' 
WHEN OSQ090d = 2 THEN 'No' 
WHEN OSQ090d = 7 THEN 'Refused' 
WHEN OSQ090d = 9 THEN 'Don't know' 
WHEN OSQ090d IS NULL THEN NULL 
ELSE NULL 
 END as fracture_result_of_severe_trauma,
CASE
    WHEN OSQ100d = 10 THEN 'HEAD/FACE' 
WHEN OSQ100d = 11 THEN 'UPPER ARM (HUMERUS)' 
WHEN OSQ100d = 12 THEN 'LOWER ARM BETWEEN WRIST AND ELBOW (DO NOT INCLUDE WRIST)' 
WHEN OSQ100d = 13 THEN 'ELBOW' 
WHEN OSQ100d = 14 THEN 'HAND' 
WHEN OSQ100d = 15 THEN 'FINGERS' 
WHEN OSQ100d = 16 THEN 'SHOULDER' 
WHEN OSQ100d = 17 THEN 'COLLAR BONE' 
WHEN OSQ100d = 18 THEN 'RIBS (EITHER SIDE)' 
WHEN OSQ100d = 19 THEN 'PELVIS (NOT HIP)' 
WHEN OSQ100d = 20 THEN 'UPPER LEG (THIGH EXCLUDING HIP)' 
WHEN OSQ100d = 21 THEN 'LOWER LEG (BETWEEN ANKLE AND KNEE)' 
WHEN OSQ100d = 22 THEN 'KNEE (PATELLA)' 
WHEN OSQ100d = 23 THEN 'ANKLE' 
WHEN OSQ100d = 24 THEN 'HEEL' 
WHEN OSQ100d = 25 THEN 'FOOT' 
WHEN OSQ100d = 26 THEN 'TOES' 
WHEN OSQ100d = 27 THEN 'OTHER (DO NOT SPECIFY)' 
WHEN OSQ100d = 77 THEN 'Refused' 
WHEN OSQ100d = 99 THEN 'Don't know' 
WHEN OSQ100d IS NULL THEN NULL 
ELSE NULL 
 END as where_fracture_occurred,
WHEN OSD110d IS NOT NULL THEN SAFE_CAST(OSD110d AS FLOAT64)WHEN OSD110d IS NULL THEN NULL 
ELSE NULL 
 END as how_old_when_fracture_occurred,
CASE
    WHEN OSQ120d = 1 THEN 'Yes' 
WHEN OSQ120d = 2 THEN 'No' 
WHEN OSQ120d = 7 THEN 'Refused' 
WHEN OSQ120d = 9 THEN 'Don't know' 
WHEN OSQ120d IS NULL THEN NULL 
ELSE NULL 
 END as any_other_fractures,
CASE
    WHEN OSQ090e = 1 THEN 'Yes' 
WHEN OSQ090e = 2 THEN 'No' 
WHEN OSQ090e = 7 THEN 'Refused' 
WHEN OSQ090e = 9 THEN 'Don't know' 
WHEN OSQ090e IS NULL THEN NULL 
ELSE NULL 
 END as fracture_result_of_severe_trauma,
CASE
    WHEN OSQ100e = 10 THEN 'HEAD/FACE' 
WHEN OSQ100e = 11 THEN 'UPPER ARM (HUMERUS)' 
WHEN OSQ100e = 12 THEN 'LOWER ARM BETWEEN WRIST AND ELBOW (DO NOT INCLUDE WRIST)' 
WHEN OSQ100e = 13 THEN 'ELBOW' 
WHEN OSQ100e = 14 THEN 'HAND' 
WHEN OSQ100e = 15 THEN 'FINGERS' 
WHEN OSQ100e = 16 THEN 'SHOULDER' 
WHEN OSQ100e = 17 THEN 'COLLAR BONE' 
WHEN OSQ100e = 18 THEN 'RIBS (EITHER SIDE)' 
WHEN OSQ100e = 19 THEN 'PELVIS (NOT HIP)' 
WHEN OSQ100e = 20 THEN 'UPPER LEG (THIGH EXCLUDING HIP)' 
WHEN OSQ100e = 21 THEN 'LOWER LEG (BETWEEN ANKLE AND KNEE)' 
WHEN OSQ100e = 22 THEN 'KNEE (PATELLA)' 
WHEN OSQ100e = 23 THEN 'ANKLE' 
WHEN OSQ100e = 24 THEN 'HEEL' 
WHEN OSQ100e = 25 THEN 'FOOT' 
WHEN OSQ100e = 26 THEN 'TOES' 
WHEN OSQ100e = 27 THEN 'OTHER (DO NOT SPECIFY)' 
WHEN OSQ100e = 77 THEN 'Refused' 
WHEN OSQ100e = 99 THEN 'Don't know' 
WHEN OSQ100e IS NULL THEN NULL 
ELSE NULL 
 END as where_fracture_occurred,
WHEN OSD110e IS NOT NULL THEN SAFE_CAST(OSD110e AS FLOAT64)WHEN OSD110e IS NULL THEN NULL 
ELSE NULL 
 END as how_old_when_fracture_occurred,
CASE
    WHEN OSQ120e = 1 THEN 'Yes' 
WHEN OSQ120e = 2 THEN 'No' 
WHEN OSQ120e = 7 THEN 'Refused' 
WHEN OSQ120e = 9 THEN 'Don't know' 
WHEN OSQ120e IS NULL THEN NULL 
ELSE NULL 
 END as any_other_fractures,
CASE
    WHEN OSQ090f = 1 THEN 'Yes' 
WHEN OSQ090f = 2 THEN 'No' 
WHEN OSQ090f = 7 THEN 'Refused' 
WHEN OSQ090f = 9 THEN 'Don't know' 
WHEN OSQ090f IS NULL THEN NULL 
ELSE NULL 
 END as fracture_result_of_severe_trauma,
CASE
    WHEN OSQ100f = 10 THEN 'HEAD/FACE' 
WHEN OSQ100f = 11 THEN 'UPPER ARM (HUMERUS)' 
WHEN OSQ100f = 12 THEN 'LOWER ARM BETWEEN WRIST AND ELBOW (DO NOT INCLUDE WRIST)' 
WHEN OSQ100f = 13 THEN 'ELBOW' 
WHEN OSQ100f = 14 THEN 'HAND' 
WHEN OSQ100f = 15 THEN 'FINGERS' 
WHEN OSQ100f = 16 THEN 'SHOULDER' 
WHEN OSQ100f = 17 THEN 'COLLAR BONE' 
WHEN OSQ100f = 18 THEN 'RIBS (EITHER SIDE)' 
WHEN OSQ100f = 19 THEN 'PELVIS (NOT HIP)' 
WHEN OSQ100f = 20 THEN 'UPPER LEG (THIGH EXCLUDING HIP)' 
WHEN OSQ100f = 21 THEN 'LOWER LEG (BETWEEN ANKLE AND KNEE)' 
WHEN OSQ100f = 22 THEN 'KNEE (PATELLA)' 
WHEN OSQ100f = 23 THEN 'ANKLE' 
WHEN OSQ100f = 24 THEN 'HEEL' 
WHEN OSQ100f = 25 THEN 'FOOT' 
WHEN OSQ100f = 26 THEN 'TOES' 
WHEN OSQ100f = 27 THEN 'OTHER (DO NOT SPECIFY)' 
WHEN OSQ100f = 77 THEN 'Refused' 
WHEN OSQ100f = 99 THEN 'Don't know' 
WHEN OSQ100f IS NULL THEN NULL 
ELSE NULL 
 END as where_fracture_occurred,
WHEN OSD110f IS NOT NULL THEN SAFE_CAST(OSD110f AS FLOAT64)WHEN OSD110f IS NULL THEN NULL 
ELSE NULL 
 END as how_old_when_fracture_occurred,
CASE
    WHEN OSQ120f = 1 THEN 'Yes' 
WHEN OSQ120f = 2 THEN 'No' 
WHEN OSQ120f = 7 THEN 'Refused' 
WHEN OSQ120f = 9 THEN 'Don't know' 
WHEN OSQ120f IS NULL THEN NULL 
ELSE NULL 
 END as any_other_fractures,
CASE
    WHEN OSQ090g = 1 THEN 'Yes' 
WHEN OSQ090g = 2 THEN 'No' 
WHEN OSQ090g = 7 THEN 'Refused' 
WHEN OSQ090g = 9 THEN 'Don't know' 
WHEN OSQ090g IS NULL THEN NULL 
ELSE NULL 
 END as fracture_result_of_severe_trauma,
CASE
    WHEN OSQ120g = 1 THEN 'Yes' 
WHEN OSQ120g = 2 THEN 'No' 
WHEN OSQ120g = 7 THEN 'Refused' 
WHEN OSQ120g = 9 THEN 'Don't know' 
WHEN OSQ120g IS NULL THEN NULL 
ELSE NULL 
 END as any_other_fractures,
CASE
    WHEN OSQ090h = 1 THEN 'Yes' 
WHEN OSQ090h = 2 THEN 'No' 
WHEN OSQ090h = 7 THEN 'Refused' 
WHEN OSQ090h = 9 THEN 'Don't know' 
WHEN OSQ090h IS NULL THEN NULL 
ELSE NULL 
 END as fracture_result_of_severe_trauma,
CASE
    WHEN OSQ120h = 1 THEN 'Yes' 
WHEN OSQ120h = 2 THEN 'No' 
WHEN OSQ120h = 7 THEN 'Refused' 
WHEN OSQ120h = 9 THEN 'Don't know' 
WHEN OSQ120h IS NULL THEN NULL 
ELSE NULL 
 END as any_other_fractures,
CASE
    WHEN OSQ090i = 1 THEN 'Yes' 
WHEN OSQ090i = 2 THEN 'No' 
WHEN OSQ090i = 7 THEN 'Refused' 
WHEN OSQ090i = 9 THEN 'Don't know' 
WHEN OSQ090i IS NULL THEN NULL 
ELSE NULL 
 END as fracture_result_of_severe_trauma,
CASE
    WHEN OSQ120i = 1 THEN 'Yes' 
WHEN OSQ120i = 2 THEN 'No' 
WHEN OSQ120i = 7 THEN 'Refused' 
WHEN OSQ120i = 9 THEN 'Don't know' 
WHEN OSQ120i IS NULL THEN NULL 
ELSE NULL 
 END as any_other_fractures,
CASE
    WHEN OSQ090j = 1 THEN 'Yes' 
WHEN OSQ090j = 2 THEN 'No' 
WHEN OSQ090j = 7 THEN 'Refused' 
WHEN OSQ090j = 9 THEN 'Don't know' 
WHEN OSQ090j IS NULL THEN NULL 
ELSE NULL 
 END as fracture_result_of_severe_trauma,
CASE
    WHEN OSQ100j = 10 THEN 'HEAD/FACE' 
WHEN OSQ100j = 11 THEN 'UPPER ARM (HUMERUS)' 
WHEN OSQ100j = 12 THEN 'LOWER ARM BETWEEN WRIST AND ELBOW (DO NOT INCLUDE WRIST)' 
WHEN OSQ100j = 13 THEN 'ELBOW' 
WHEN OSQ100j = 14 THEN 'HAND' 
WHEN OSQ100j = 15 THEN 'FINGERS' 
WHEN OSQ100j = 16 THEN 'SHOULDER' 
WHEN OSQ100j = 17 THEN 'COLLAR BONE' 
WHEN OSQ100j = 18 THEN 'RIBS (EITHER SIDE)' 
WHEN OSQ100j = 19 THEN 'PELVIS (NOT HIP)' 
WHEN OSQ100j = 20 THEN 'UPPER LEG (THIGH EXCLUDING HIP)' 
WHEN OSQ100j = 21 THEN 'LOWER LEG (BETWEEN ANKLE AND KNEE)' 
WHEN OSQ100j = 22 THEN 'KNEE (PATELLA)' 
WHEN OSQ100j = 23 THEN 'ANKLE' 
WHEN OSQ100j = 24 THEN 'HEEL' 
WHEN OSQ100j = 25 THEN 'FOOT' 
WHEN OSQ100j = 26 THEN 'TOES' 
WHEN OSQ100j = 27 THEN 'OTHER (DO NOT SPECIFY)' 
WHEN OSQ100j = 77 THEN 'Refused' 
WHEN OSQ100j = 99 THEN 'Don't know' 
WHEN OSQ100j IS NULL THEN NULL 
ELSE NULL 
 END as where_fracture_occurred,
CASE
    WHEN OSD110j = 80 THEN '80 or older' 
WHEN OSD110j = 777 THEN 'Refused' 
WHEN OSD110j = 999 THEN 'Don't know' 
WHEN OSD110j IS NULL THEN NULL 
ELSE NULL 
 END as how_old_when_fracture_occurred,
CASE
    WHEN OSQ120j = 1 THEN 'Yes' 
WHEN OSQ120j = 2 THEN 'No' 
WHEN OSQ120j = 7 THEN 'Refused' 
WHEN OSQ120j = 9 THEN 'Don't know' 
WHEN OSQ120j IS NULL THEN NULL 
ELSE NULL 
 END as any_other_fractures,
OSQ129 as OSQ129, -- Could not automatically decode
CASE
    WHEN OSQ060 = 1 THEN 'Yes' 
WHEN OSQ060 = 2 THEN 'No' 
WHEN OSQ060 = 7 THEN 'Refused' 
WHEN OSQ060 = 9 THEN 'Don't know' 
WHEN OSQ060 IS NULL THEN NULL 
ELSE NULL 
 END as ever_told_had_osteoporosis_brittle_bones,
CASE
    WHEN OSQ072 = 1 THEN 'Yes' 
WHEN OSQ072 = 2 THEN 'No' 
WHEN OSQ072 = 7 THEN 'Refused' 
WHEN OSQ072 = 9 THEN 'Don't know' 
WHEN OSQ072 IS NULL THEN NULL 
ELSE NULL 
 END as doctor_prescribe_rx_for_osteoporosis,
CASE
    WHEN OSQ130 = 1 THEN 'Yes' 
WHEN OSQ130 = 2 THEN 'No' 
WHEN OSQ130 = 7 THEN 'Refused' 
WHEN OSQ130 = 9 THEN 'Don't know' 
WHEN OSQ130 IS NULL THEN NULL 
ELSE NULL 
 END as ever_taken_prednisone_or_cortisone_daily,
WHEN OSQ140q IS NOT NULL THEN SAFE_CAST(OSQ140q AS FLOAT64)WHEN OSQ140q IS NULL THEN NULL 
ELSE NULL 
 END as how_long_used_prednisone_or_cortisone,
CASE
    WHEN OSQ140u = 1 THEN 'Month' 
WHEN OSQ140u = 2 THEN 'Year' 
WHEN OSQ140u = 7 THEN 'Refused' 
WHEN OSQ140u = 9 THEN 'Don't know' 
WHEN OSQ140u IS NULL THEN NULL 
ELSE NULL 
 END as how_long_used_prednisone_or_cortisone,
CASE
    WHEN OSQ150 = 1 THEN 'Yes' 
WHEN OSQ150 = 2 THEN 'No' 
WHEN OSQ150 = 7 THEN 'Refused' 
WHEN OSQ150 = 9 THEN 'Don't know' 
WHEN OSQ150 IS NULL THEN NULL 
ELSE NULL 
 END as parents_ever_told_had_osteoporosis,
CASE
    WHEN OSQ160a = 1 THEN 'Mother' 
WHEN OSQ160a = 7 THEN 'Refused' 
WHEN OSQ160a = 9 THEN 'Don't know' 
WHEN OSQ160a IS NULL THEN NULL 
ELSE NULL 
 END as mother_was_told_had_osteoporosis,
CASE
    WHEN OSQ160b = 2 THEN 'Father' 
WHEN OSQ160b IS NULL THEN NULL 
ELSE NULL 
 END as father_was_told_had_osteoporosis,
CASE
    WHEN OSQ170 = 1 THEN 'Yes' 
WHEN OSQ170 = 2 THEN 'No' 
WHEN OSQ170 = 7 THEN 'Refused' 
WHEN OSQ170 = 9 THEN 'Don't know' 
WHEN OSQ170 IS NULL THEN NULL 
ELSE NULL 
 END as did_mother_ever_fracture_hip,
WHEN OSQ180 IS NOT NULL THEN SAFE_CAST(OSQ180 AS FLOAT64)WHEN OSQ180 IS NULL THEN NULL 
ELSE NULL 
 END as how_old_mother_when_fractured_hip,
CASE
    WHEN OSQ190 = 1 THEN 'under 50 years or' 
WHEN OSQ190 = 2 THEN '50 years or older?' 
WHEN OSQ190 = 7 THEN 'Refused' 
WHEN OSQ190 = 9 THEN 'Don't know' 
WHEN OSQ190 IS NULL THEN NULL 
ELSE NULL 
 END as over_or_under_50_years_old,
CASE
    WHEN OSQ200 = 1 THEN 'Yes' 
WHEN OSQ200 = 2 THEN 'No' 
WHEN OSQ200 = 7 THEN 'Refused' 
WHEN OSQ200 = 9 THEN 'Don't know' 
WHEN OSQ200 IS NULL THEN NULL 
ELSE NULL 
 END as did_father_ever_fracture_hip,
WHEN OSQ210 IS NOT NULL THEN SAFE_CAST(OSQ210 AS FLOAT64)WHEN OSQ210 IS NULL THEN NULL 
ELSE NULL 
 END as how_old_father_when_fractured_hip,
CASE
    WHEN OSQ220 = 1 THEN 'Under 50 years old, or' 
WHEN OSQ220 = 2 THEN '50 years old or older?' 
WHEN OSQ220 = 7 THEN 'Refused' 
WHEN OSQ220 = 9 THEN 'Don't know' 
WHEN OSQ220 IS NULL THEN NULL 
ELSE NULL 
 END as over_or_under_50_years_old,
 FROM {ref('stg_osteoporosis_questionnaire'})