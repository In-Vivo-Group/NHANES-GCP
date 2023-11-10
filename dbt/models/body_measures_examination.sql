SELECT
SEQN as respondent_sequence_number,
CASE
    WHEN BMDSTATS = 1 THEN 'Complete data for age group' 
WHEN BMDSTATS = 2 THEN 'Partial:  Only height and weight obtained' 
WHEN BMDSTATS = 3 THEN 'Other partial exam' 
WHEN BMDSTATS = 4 THEN 'No body measures exam data' 
WHEN BMDSTATS IS NULL THEN NULL 
ELSE NULL 
 END as body_measures_component_status_code,
CASE
    WHEN BMXWT = 3.2 to 242.6 THEN 'Range of Values' 
WHEN BMXWT IS NULL THEN NULL 
ELSE NULL 
 END as weight_kg,
CASE
    WHEN BMIWT = 1 THEN 'Could not obtain' 
WHEN BMIWT = 3 THEN 'Clothing' 
WHEN BMIWT = 4 THEN 'Medical appliance' 
WHEN BMIWT IS NULL THEN NULL 
ELSE NULL 
 END as weight_comment,
CASE
    WHEN BMXRECUM = 49.1 to 111.3 THEN 'Range of Values' 
WHEN BMXRECUM IS NULL THEN NULL 
ELSE NULL 
 END as recumbent_length_cm,
CASE
    WHEN BMIRECUM = 1 THEN 'Could not obtain' 
WHEN BMIRECUM = 3 THEN 'Not straight' 
WHEN BMIRECUM IS NULL THEN NULL 
ELSE NULL 
 END as recumbent_length_comment,
CASE
    WHEN BMXHEAD = 32.4 to 47.9 THEN 'Range of Values' 
WHEN BMXHEAD IS NULL THEN NULL 
ELSE NULL 
 END as head_circumference_cm,
CASE
    WHEN BMIHEAD = 1 THEN 'Could not obtain' 
WHEN BMIHEAD IS NULL THEN NULL 
ELSE NULL 
 END as head_circumference_comment,
CASE
    WHEN BMXHT = 78.3 to 197.7 THEN 'Range of Values' 
WHEN BMXHT IS NULL THEN NULL 
ELSE NULL 
 END as standing_height_cm,
CASE
    WHEN BMIHT = 1 THEN 'Could not obtain' 
WHEN BMIHT = 3 THEN 'Not straight' 
WHEN BMIHT IS NULL THEN NULL 
ELSE NULL 
 END as standing_height_comment,
CASE
    WHEN BMXBMI = 12.3 to 86.2 THEN 'Range of Values' 
WHEN BMXBMI IS NULL THEN NULL 
ELSE NULL 
 END as body_mass_index_kg_m_2,
CASE
    WHEN BMXLEG = 24.8 to 55 THEN 'Range of Values' 
WHEN BMXLEG IS NULL THEN NULL 
ELSE NULL 
 END as upper_leg_length_cm,
CASE
    WHEN BMILEG = 1 THEN 'Could not obtain' 
WHEN BMILEG IS NULL THEN NULL 
ELSE NULL 
 END as upper_leg_length_comment,
CASE
    WHEN BMXARML = 9.4 to 49.9 THEN 'Range of Values' 
WHEN BMXARML IS NULL THEN NULL 
ELSE NULL 
 END as upper_arm_length_cm,
CASE
    WHEN BMIARML = 1 THEN 'Could not obtain' 
WHEN BMIARML IS NULL THEN NULL 
ELSE NULL 
 END as upper_arm_length_comment,
CASE
    WHEN BMXARMC = 11.2 to 56.3 THEN 'Range of Values' 
WHEN BMXARMC IS NULL THEN NULL 
ELSE NULL 
 END as arm_circumference_cm,
CASE
    WHEN BMIARMC = 1 THEN 'Could not obtain' 
WHEN BMIARMC IS NULL THEN NULL 
ELSE NULL 
 END as arm_circumference_comment,
CASE
    WHEN BMXWAIST = 40 to 169.5 THEN 'Range of Values' 
WHEN BMXWAIST IS NULL THEN NULL 
ELSE NULL 
 END as waist_circumference_cm,
CASE
    WHEN BMIWAIST = 1 THEN 'Could not obtain' 
WHEN BMIWAIST IS NULL THEN NULL 
ELSE NULL 
 END as waist_circumference_comment,
CASE
    WHEN BMXHIP = 66.6 to 179 THEN 'Range of Values' 
WHEN BMXHIP IS NULL THEN NULL 
ELSE NULL 
 END as hip_circumference_cm,
CASE
    WHEN BMIHIP = 1 THEN 'Could not obtain' 
WHEN BMIHIP IS NULL THEN NULL 
ELSE NULL 
 END as hip_circumference_comment,
 FROM { ref('stg_body_measures_examination') }