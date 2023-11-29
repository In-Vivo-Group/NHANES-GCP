SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN WTANA6YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTANA6YR AS FLOAT64) 
 END as six_year_ssana_subsample_weights, 

CASE
    WHEN SSCYT IS NULL THEN NULL 
ELSE SAFE_CAST(SSCYT AS FLOAT64) 
 END as total_cytoplasm_intensity, 

CASE
    WHEN SSNUC IS NULL THEN NULL 
ELSE SAFE_CAST(SSNUC AS FLOAT64) 
 END as total_nucleus_intensity, 

CASE
    WHEN SSTOT IS NULL THEN NULL 
ELSE SAFE_CAST(SSTOT AS FLOAT64) 
 END as total_ana_intensity, 

CASE
    WHEN SS80 IS NULL THEN NULL 
ELSE SAFE_CAST(SS80 AS FLOAT64) 
 END as lab_1_80_dilution, 

CASE
    WHEN SS160 IS NULL THEN NULL 
ELSE SAFE_CAST(SS160 AS FLOAT64) 
 END as lab_1_160_dilution, 

CASE
    WHEN SS320 IS NULL THEN NULL 
ELSE SAFE_CAST(SS320 AS FLOAT64) 
 END as lab_1_320_dilution, 

CASE
    WHEN SS640 IS NULL THEN NULL 
ELSE SAFE_CAST(SS640 AS FLOAT64) 
 END as lab_1_640_dilution, 

CASE
    WHEN SS1280 IS NULL THEN NULL 
ELSE SAFE_CAST(SS1280 AS FLOAT64) 
 END as lab_1_1280_dilution_or_higher, 

CASE
    WHEN SSNUCPOS IS NULL THEN NULL 
ELSE SAFE_CAST(SSNUCPOS AS FLOAT64) 
 END as nuclear_nucleolar_positive, 

CASE
    WHEN SSNUCSIG IS NULL THEN NULL 
ELSE SAFE_CAST(SSNUCSIG AS FLOAT64) 
 END as nuclear_nucleolar_signal, 

CASE
    WHEN SSNUHOMP IS NULL THEN NULL 
ELSE SAFE_CAST(SSNUHOMP AS FLOAT64) 
 END as nuclear_homogenous_positive, 

CASE
    WHEN SSNUHOMS IS NULL THEN NULL 
ELSE SAFE_CAST(SSNUHOMS AS FLOAT64) 
 END as nuclear_homogenous_signal, 

CASE
    WHEN SSNUSPP IS NULL THEN NULL 
ELSE SAFE_CAST(SSNUSPP AS FLOAT64) 
 END as nuclear_speckles_positive, 

CASE
    WHEN SSNUSPS IS NULL THEN NULL 
ELSE SAFE_CAST(SSNUSPS AS FLOAT64) 
 END as nuclear_speckles_signal, 

CASE
    WHEN SSNUCENP IS NULL THEN NULL 
ELSE SAFE_CAST(SSNUCENP AS FLOAT64) 
 END as nuclear_centromere_positive, 

CASE
    WHEN SSNUCENS IS NULL THEN NULL 
ELSE SAFE_CAST(SSNUCENS AS FLOAT64) 
 END as nuclear_centromere_signal, 

CASE
    WHEN SSNUDOTP IS NULL THEN NULL 
ELSE SAFE_CAST(SSNUDOTP AS FLOAT64) 
 END as nuclear_dots_positive, 

CASE
    WHEN SSNUDOTS IS NULL THEN NULL 
ELSE SAFE_CAST(SSNUDOTS AS FLOAT64) 
 END as nuclear_dots_signal, 

CASE
    WHEN SSNUENVP IS NULL THEN NULL 
ELSE SAFE_CAST(SSNUENVP AS FLOAT64) 
 END as nuclear_envelope_positive, 

CASE
    WHEN SSNUENVS IS NULL THEN NULL 
ELSE SAFE_CAST(SSNUENVS AS FLOAT64) 
 END as nuclear_envelope_signal, 

CASE
    WHEN SSCYHOMP IS NULL THEN NULL 
ELSE SAFE_CAST(SSCYHOMP AS FLOAT64) 
 END as cytoplasmic_homogeneous_positive, 

CASE
    WHEN SSCYHOMS IS NULL THEN NULL 
ELSE SAFE_CAST(SSCYHOMS AS FLOAT64) 
 END as cytoplasmic_homogeneous_signal, 

CASE
    WHEN SSCYSPP IS NULL THEN NULL 
ELSE SAFE_CAST(SSCYSPP AS FLOAT64) 
 END as cytoplasmic_speckles_positive, 

CASE
    WHEN SSCYSPS IS NULL THEN NULL 
ELSE SAFE_CAST(SSCYSPS AS FLOAT64) 
 END as cytoplasmic_speckles_signal, 

CASE
    WHEN SSCYMIP IS NULL THEN NULL 
ELSE SAFE_CAST(SSCYMIP AS FLOAT64) 
 END as cytoplasmic_mitochondria_like_positive, 

CASE
    WHEN SSCYMIS IS NULL THEN NULL 
ELSE SAFE_CAST(SSCYMIS AS FLOAT64) 
 END as cytoplasmic_mitochondria_like_signal, 

CASE
    WHEN SSCYGOP IS NULL THEN NULL 
ELSE SAFE_CAST(SSCYGOP AS FLOAT64) 
 END as cytoplasmic_golgi_complex_positive, 

CASE
    WHEN SSCYGOS IS NULL THEN NULL 
ELSE SAFE_CAST(SSCYGOS AS FLOAT64) 
 END as cytoplasmic_golgi_complex_signal, 

CASE
    WHEN SSCYCEP IS NULL THEN NULL 
ELSE SAFE_CAST(SSCYCEP AS FLOAT64) 
 END as cytoplasmic_centriole_positive, 

CASE
    WHEN SSCYCES IS NULL THEN NULL 
ELSE SAFE_CAST(SSCYCES AS FLOAT64) 
 END as cytoplasmic_centriole_signal, 

CASE
    WHEN SSCYGWP IS NULL THEN NULL 
ELSE SAFE_CAST(SSCYGWP AS FLOAT64) 
 END as cytoplasmic_gw_body_positive, 

CASE
    WHEN SSCYGWS IS NULL THEN NULL 
ELSE SAFE_CAST(SSCYGWS AS FLOAT64) 
 END as cytoplasmic_gw_body_signal, 

CASE
    WHEN SSCYCFP IS NULL THEN NULL 
ELSE SAFE_CAST(SSCYCFP AS FLOAT64) 
 END as cytoplasmic_cytofilament_positive, 

CASE
    WHEN SSCYCFS IS NULL THEN NULL 
ELSE SAFE_CAST(SSCYCFS AS FLOAT64) 
 END as cytoplasmic_cytofilament_signal, 

CASE
    WHEN SSCYRRP IS NULL THEN NULL 
ELSE SAFE_CAST(SSCYRRP AS FLOAT64) 
 END as cytoplasmic_rods_rings_positive, 

CASE
    WHEN SSCYRRS IS NULL THEN NULL 
ELSE SAFE_CAST(SSCYRRS AS FLOAT64) 
 END as cytoplasmic_rods_rings_signal, 

CASE
    WHEN SSCYLYP IS NULL THEN NULL 
ELSE SAFE_CAST(SSCYLYP AS FLOAT64) 
 END as cytoplasmic_lysosomes_positive, 

CASE
    WHEN SSCYLYS IS NULL THEN NULL 
ELSE SAFE_CAST(SSCYLYS AS FLOAT64) 
 END as cytoplasmic_lysosomes_signal, 

CASE
    WHEN SSMIHOMP IS NULL THEN NULL 
ELSE SAFE_CAST(SSMIHOMP AS FLOAT64) 
 END as mitotic_homogeneous_positive, 

CASE
    WHEN SSMIHOMS IS NULL THEN NULL 
ELSE SAFE_CAST(SSMIHOMS AS FLOAT64) 
 END as mitotic_homogeneous_signal, 

CASE
    WHEN SSMISPP IS NULL THEN NULL 
ELSE SAFE_CAST(SSMISPP AS FLOAT64) 
 END as mitotic_speckles_positive, 

CASE
    WHEN SSMISPS IS NULL THEN NULL 
ELSE SAFE_CAST(SSMISPS AS FLOAT64) 
 END as mitotic_speckles_signal, 

CASE
    WHEN SSMISAP IS NULL THEN NULL 
ELSE SAFE_CAST(SSMISAP AS FLOAT64) 
 END as mitotic_spindle_apparatus_positive, 

CASE
    WHEN SSMISAS IS NULL THEN NULL 
ELSE SAFE_CAST(SSMISAS AS FLOAT64) 
 END as mitotic_spindle_apparatus_signal, 

CASE
    WHEN SSMIMBP IS NULL THEN NULL 
ELSE SAFE_CAST(SSMIMBP AS FLOAT64) 
 END as mitotic_mid_body_positive, 

CASE
    WHEN SSMIMBS IS NULL THEN NULL 
ELSE SAFE_CAST(SSMIMBS AS FLOAT64) 
 END as mitotic_mid_body_signal, 

CASE
    WHEN SSMICHP IS NULL THEN NULL 
ELSE SAFE_CAST(SSMICHP AS FLOAT64) 
 END as mitotic_chromosomes_positive, 

CASE
    WHEN SSMICHS IS NULL THEN NULL 
ELSE SAFE_CAST(SSMICHS AS FLOAT64) 
 END as mitotic_chromosomes_signal, 

CASE
    WHEN SSU1RNP IS NULL THEN NULL 
ELSE SAFE_CAST(SSU1RNP AS FLOAT64) 
 END as u1_small_nuclear_ribonucleoprotein, 

CASE
    WHEN SSSM IS NULL THEN NULL 
ELSE SAFE_CAST(SSSM AS FLOAT64) 
 END as sm_antigen, 

CASE
    WHEN SSRIBOP IS NULL THEN NULL 
ELSE SAFE_CAST(SSRIBOP AS FLOAT64) 
 END as ribosomal_p_protein, 

CASE
    WHEN SSROSSA IS NULL THEN NULL 
ELSE SAFE_CAST(SSROSSA AS FLOAT64) 
 END as ro_ss_a_60kda_antigen, 

CASE
    WHEN SSLASSB IS NULL THEN NULL 
ELSE SAFE_CAST(SSLASSB AS FLOAT64) 
 END as la_ss_b_antigen, 

CASE
    WHEN SSSUAR2 IS NULL THEN NULL 
ELSE SAFE_CAST(SSSUAR2 AS FLOAT64) 
 END as su_antigen_argonaute2_ago2_protein, 

CASE
    WHEN SSRPA IS NULL THEN NULL 
ELSE SAFE_CAST(SSRPA AS FLOAT64) 
 END as replication_protein_a, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SSJO_1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN '0' -- categorize numeric values
WHEN SSJO_1 IS NULL THEN NULL 
ELSE SAFE_CAST(SSJO_1 AS STRING) 
 END as jo_1_antigen, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SSPL_7 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN '0' -- categorize numeric values
WHEN SSPL_7 IS NULL THEN NULL 
ELSE SAFE_CAST(SSPL_7 AS STRING) 
 END as pl_7_antigen, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SSPL_12 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN '0' -- categorize numeric values
WHEN SSPL_12 IS NULL THEN NULL 
ELSE SAFE_CAST(SSPL_12 AS STRING) 
 END as pl_12_antigen, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SSEJ AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN '0' -- categorize numeric values
WHEN SSEJ IS NULL THEN NULL 
ELSE SAFE_CAST(SSEJ AS STRING) 
 END as ej_antigen, 

CASE
    WHEN SSOJ IS NULL THEN NULL 
ELSE SAFE_CAST(SSOJ AS FLOAT64) 
 END as oj_antigen, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SSSRP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN '0' -- categorize numeric values
WHEN SSSRP IS NULL THEN NULL 
ELSE SAFE_CAST(SSSRP AS STRING) 
 END as signal_recognition_particle, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SSKU AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN '0' -- categorize numeric values
WHEN SSKU IS NULL THEN NULL 
ELSE SAFE_CAST(SSKU AS STRING) 
 END as ku_antigen, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SSPM_SCL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN '0' -- categorize numeric values
WHEN SSPM_SCL IS NULL THEN NULL 
ELSE SAFE_CAST(SSPM_SCL AS STRING) 
 END as pm_scl_antigen, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SSMI_2 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN '0' -- categorize numeric values
WHEN SSMI_2 IS NULL THEN NULL 
ELSE SAFE_CAST(SSMI_2 AS STRING) 
 END as mi_2_antigen, 

CASE
    WHEN SSTOPOI IS NULL THEN NULL 
ELSE SAFE_CAST(SSTOPOI AS FLOAT64) 
 END as topoisomerase_i, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SSRNAPOL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN '0' -- categorize numeric values
WHEN SSRNAPOL IS NULL THEN NULL 
ELSE SAFE_CAST(SSRNAPOL AS STRING) 
 END as rna_polymerase_i_and_iii, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SSU3RNP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN '0' -- categorize numeric values
WHEN SSU3RNP IS NULL THEN NULL 
ELSE SAFE_CAST(SSU3RNP AS STRING) 
 END as u3_small_nuclear_ribonucleoprotein, 

CASE
    WHEN SSNOR_90 IS NULL THEN NULL 
ELSE SAFE_CAST(SSNOR_90 AS FLOAT64) 
 END as nucleolar_organizer_region_antigen_90kda, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_autoantibodies_immunofluorescence_immunoprecipitation_analyses_surplus_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/SSANA_A.htm
*/