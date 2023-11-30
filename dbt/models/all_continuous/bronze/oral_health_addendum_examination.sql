SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHAEXSTS AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Complete' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHAEXSTS AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Partial' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHAEXSTS AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Not Done' -- categorize numeric values
WHEN OHAEXSTS IS NULL THEN NULL 
ELSE SAFE_CAST(OHAEXSTS AS STRING) 
 END as overall_oral_health_exam_status, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHDDEST AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Complete' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHDDEST AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Partial' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHDDEST AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Not Done' -- categorize numeric values
WHEN OHDDEST IS NULL THEN NULL 
ELSE SAFE_CAST(OHDDEST AS STRING) 
 END as status_code_for_tooth_wear, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHDFCST AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Complete' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHDFCST AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Partial' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHDFCST AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Not Done' -- categorize numeric values
WHEN OHDFCST IS NULL THEN NULL 
ELSE SAFE_CAST(OHDFCST AS STRING) 
 END as status_code_for_contacts, 

CASE
    WHEN OHXMAXIN IS NULL THEN NULL 
ELSE SAFE_CAST(OHXMAXIN AS FLOAT64) 
 END as maximal_incisal_opening_mm, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCRZ1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'No functional contact' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCRZ1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Functional contact between two natural teeth' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCRZ1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Functional contact present between a natural / fixed prosthesis and denture tooth' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCRZ1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Functional contact present between two denture teeth' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCRZ1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Cannot assess' -- categorize numeric values
WHEN OHXFCRZ1 IS NULL THEN NULL 
ELSE SAFE_CAST(OHXFCRZ1 AS STRING) 
 END as posterior_right_foc_zone_1, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCRZ2 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'No functional contact' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCRZ2 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Functional contact present between two natural teeth' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCRZ2 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Functional contact present between a natural tooth / fixed prosthesis and a denture tooth' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCRZ2 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Functional contact present between two denture teeth' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCRZ2 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Cannot assess' -- categorize numeric values
WHEN OHXFCRZ2 IS NULL THEN NULL 
ELSE SAFE_CAST(OHXFCRZ2 AS STRING) 
 END as posterior_right_foc_zone_2, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCRZ3 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'No functional contact' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCRZ3 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Functional contact present between two natural teeth' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCRZ3 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Functional contact present between a natural tooth / fixed prosthesis and denture tooth' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCRZ3 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Functional contact present between two denture teeth' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCRZ3 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Cannot assess' -- categorize numeric values
WHEN OHXFCRZ3 IS NULL THEN NULL 
ELSE SAFE_CAST(OHXFCRZ3 AS STRING) 
 END as posterior_right_foc_zone_3, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCRZ4 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'No functional contact' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCRZ4 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Functional contact present between two natural teeth' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCRZ4 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Functional contact present between a natural tooth / fixed prosthesis and a denture tooth' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCRZ4 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Functional contact present between two denture teeth' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCRZ4 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Cannot assess' -- categorize numeric values
WHEN OHXFCRZ4 IS NULL THEN NULL 
ELSE SAFE_CAST(OHXFCRZ4 AS STRING) 
 END as posterior_right_foc_zone_4, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCRZ5 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'No functional contact' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCRZ5 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Functional contact present between two natural teeth' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCRZ5 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Functional contact present between a natural tooth / fixed prosthesis and a denture teeth' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCRZ5 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Functional contact present between two denture teeth' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCRZ5 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Cannot assess' -- categorize numeric values
WHEN OHXFCRZ5 IS NULL THEN NULL 
ELSE SAFE_CAST(OHXFCRZ5 AS STRING) 
 END as posterior_right_foc_zone_5, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCRZ6 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'No functional contact' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCRZ6 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Functional contact present between two natural teeth' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCRZ6 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Functional contact present between a natural tooth / fixed prosthesis and a denture tooth' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCRZ6 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Functional contact present between two denture teeth' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCRZ6 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Cannot assess' -- categorize numeric values
WHEN OHXFCRZ6 IS NULL THEN NULL 
ELSE SAFE_CAST(OHXFCRZ6 AS STRING) 
 END as posterior_right_foc_zone_6, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCRZ7 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'No functional contact' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCRZ7 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Functional contact present between two natural teeth' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCRZ7 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Functional contact present between a natural tooth / fixed prosthesis and a denture tooth' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCRZ7 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Functional contact present between two denture teeth' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCRZ7 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Cannot assess' -- categorize numeric values
WHEN OHXFCRZ7 IS NULL THEN NULL 
ELSE SAFE_CAST(OHXFCRZ7 AS STRING) 
 END as posterior_right_foc_zone_7, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCRZ8 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'No functional contact' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCRZ8 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Functional contact present between two natural teeth' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCRZ8 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Functional contact present between a natural tooth / fixed prosthesis and a denture tooth' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCRZ8 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Functional contact present between two denture teeth' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCRZ8 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Cannot assess' -- categorize numeric values
WHEN OHXFCRZ8 IS NULL THEN NULL 
ELSE SAFE_CAST(OHXFCRZ8 AS STRING) 
 END as posterior_right_foc_zone_8, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCLZ1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'No functional contact' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCLZ1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Functional contact present between two natural teeth' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCLZ1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Functional contact present between a natural tooth / fixed prosthesis and a denture tooth' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCLZ1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Functional contact present between two denture teeth' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCLZ1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Cannot assess' -- categorize numeric values
WHEN OHXFCLZ1 IS NULL THEN NULL 
ELSE SAFE_CAST(OHXFCLZ1 AS STRING) 
 END as posterior_left_foc_zone_1, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCLZ2 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'No functional contact' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCLZ2 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Functional contact present between two natural teeth' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCLZ2 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Functional contact present between a natural tooth / fixed prosthesis and a denture tooth' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCLZ2 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Functional contact present between two denture teeth' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCLZ2 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Cannot assess' -- categorize numeric values
WHEN OHXFCLZ2 IS NULL THEN NULL 
ELSE SAFE_CAST(OHXFCLZ2 AS STRING) 
 END as posterior_left_foc_zone_2, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCLZ3 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'No functional contact' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCLZ3 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Functional contact present between two natural teeth' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCLZ3 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Functional contact present between a natural tooth / fixed prosthesis and a denture tooth' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCLZ3 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Functional contact present between two denture teeth' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCLZ3 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Cannot assess' -- categorize numeric values
WHEN OHXFCLZ3 IS NULL THEN NULL 
ELSE SAFE_CAST(OHXFCLZ3 AS STRING) 
 END as posterior_left_foc_zone_3, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCLZ4 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'No functional contact' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCLZ4 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Functional contact present between two natural teeth' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCLZ4 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Functional contact present between a natural tooth / fixed prosthesis and a denture tooth' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCLZ4 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Functional contact present between two denture teeth' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCLZ4 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Cannot assess' -- categorize numeric values
WHEN OHXFCLZ4 IS NULL THEN NULL 
ELSE SAFE_CAST(OHXFCLZ4 AS STRING) 
 END as posterior_left_foc_zone_4, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCLZ5 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'No Functional contact' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCLZ5 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Functional contact present between two natural teeth' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCLZ5 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Functional contact present between a natural tooth / fixed prosthesis and a denture tooth' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCLZ5 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Functional contact present between two denture teeth' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCLZ5 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Cannot assess' -- categorize numeric values
WHEN OHXFCLZ5 IS NULL THEN NULL 
ELSE SAFE_CAST(OHXFCLZ5 AS STRING) 
 END as posterior_left_foc_zone_5, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCLZ6 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'No functional contact' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCLZ6 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Functional contact present between two natural teeth' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCLZ6 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Functional contact present between a natural tooth / fixed prosthesis and a denture tooth' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCLZ6 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Functional contact present between two denture teeth' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCLZ6 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Cannot assess' -- categorize numeric values
WHEN OHXFCLZ6 IS NULL THEN NULL 
ELSE SAFE_CAST(OHXFCLZ6 AS STRING) 
 END as posterior_left_foc_zone_6, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCLZ7 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'No functional contact' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCLZ7 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Functional contact present between two natural teeth' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCLZ7 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Functional contact present between a natural tooth / fixed prosthesis and a denture tooth' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCLZ7 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Functional contact present between two denture teeth' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCLZ7 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Cannot assess' -- categorize numeric values
WHEN OHXFCLZ7 IS NULL THEN NULL 
ELSE SAFE_CAST(OHXFCLZ7 AS STRING) 
 END as posterior_left_foc_zone_7, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCLZ8 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'No functional contact' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCLZ8 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Functional contact present between two natural teeth' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCLZ8 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Functional contact present between a natural tooth / fixed prosthesis and a denture teeth' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCLZ8 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Functional contact present between two denture teeth' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCLZ8 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Cannot assess' -- categorize numeric values
WHEN OHXFCLZ8 IS NULL THEN NULL 
ELSE SAFE_CAST(OHXFCLZ8 AS STRING) 
 END as posterior_left_foc_zone_8, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCANT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'No anterior functional contact' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCANT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Functional contact present between two natural teeth' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCANT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Functional contact present between a natural tooth / fixed prosthesis and a denture tooth' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCANT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Functional contact present between two denture teeth' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHXFCANT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Cannot assess' -- categorize numeric values
WHEN OHXFCANT IS NULL THEN NULL 
ELSE SAFE_CAST(OHXFCANT AS STRING) 
 END as anterior_foc_zone, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX08ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Sound; Any wear restricted to enamel only' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX08ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel just exposing dentin' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX08ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel and extensive loss of dentin (see notes for surface details for scoring)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX08ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Complete loss of enamel on a surface; pulp exposure or exposure of secondary dentin where pulp used' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX08ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(8 AS FLOAT64),0) AS INT64) THEN 'Loss due to trauma and not wear' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX08ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Could not assess' -- categorize numeric values
WHEN OHX08ESL IS NULL THEN NULL 
ELSE SAFE_CAST(OHX08ESL AS STRING) 
 END as lingual_surface_code_for_erosion, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX08ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Sound; Any wear restricted to enamel only' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX08ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel just exposing dentin' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX08ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel and extensive loss of dentin (see notes for surface details for scoring)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX08ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Complete loss of enamel on a surface; pulp exposure or exposure of secondary dentin where pulp used' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX08ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(8 AS FLOAT64),0) AS INT64) THEN 'Loss due to trauma and not wear' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX08ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Could not assess' -- categorize numeric values
WHEN OHX08ESF IS NULL THEN NULL 
ELSE SAFE_CAST(OHX08ESF AS STRING) 
 END as facial_surface_code_for_erosion, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX08ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Sound; Any wear restricted to enamel only' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX08ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel just exposing dentin' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX08ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel and extensive loss of dentin (see notes for surface details for scoring)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX08ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Complete loss of enamel on a surface; pulp exposure or exposure of secondary dentin where pulp used' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX08ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(8 AS FLOAT64),0) AS INT64) THEN 'Loss due to trauma and not wear' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX08ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Could not assess' -- categorize numeric values
WHEN OHX08ESI IS NULL THEN NULL 
ELSE SAFE_CAST(OHX08ESI AS STRING) 
 END as incisal_surface_code_for_erosion, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX07ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Sound; Any wear restricted to enamel only' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX07ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel just exposing dentin' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX07ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel and extensive loss of dentin (see notes for surface details for scoring)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX07ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Complete loss of enamel on a surface; pulp exposure or exposure of secondary dentin where pulp used' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX07ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(8 AS FLOAT64),0) AS INT64) THEN 'Loss due to trauma and not wear' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX07ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Could not assess' -- categorize numeric values
WHEN OHX07ESL IS NULL THEN NULL 
ELSE SAFE_CAST(OHX07ESL AS STRING) 
 END as lingual_surface_code_for_erosion_OHX07ESL, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX07ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Sound; Any wear restricted to enamel only' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX07ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel just exposing dentin' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX07ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel and extensive loss of dentin (see notes for surface details for scoring)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX07ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Complete loss of enamel on a surface; pulp exposure or exposure of secondary dentin where pulp used' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX07ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(8 AS FLOAT64),0) AS INT64) THEN 'Loss due to trauma and not wear' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX07ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Could not assess' -- categorize numeric values
WHEN OHX07ESF IS NULL THEN NULL 
ELSE SAFE_CAST(OHX07ESF AS STRING) 
 END as facial_surface_code_for_erosion_OHX07ESF, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX07ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Sound; Any wear restricted to enamel only' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX07ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel just exposing dentin' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX07ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel and extensive loss of dentin (see notes for surface details for scoring)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX07ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Complete loss of enamel on a surface; pulp exposure or exposure of secondary dentin where pulp used' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX07ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(8 AS FLOAT64),0) AS INT64) THEN 'Loss due to trauma and not wear' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX07ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Could not assess' -- categorize numeric values
WHEN OHX07ESI IS NULL THEN NULL 
ELSE SAFE_CAST(OHX07ESI AS STRING) 
 END as incisial_surface_code_for_erosion, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX06ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Sound; Any wear restricted to enamel only' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX06ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel just exposing dentin' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX06ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel and extensive loss of dentin (see notes for surface details for scoring)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX06ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Complete loss of enamel on a surface; pulp exposure or exposure of secondary dentin where pulp used' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX06ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(8 AS FLOAT64),0) AS INT64) THEN 'Loss due to trauma and not wear' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX06ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Could not assess' -- categorize numeric values
WHEN OHX06ESL IS NULL THEN NULL 
ELSE SAFE_CAST(OHX06ESL AS STRING) 
 END as lingual_surface_code_for_erosion_OHX06ESL, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX06ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Sound; Any wear restricted to enamel only' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX06ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel just exposing dentin' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX06ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel and extensive loss of dentin (see notes for surface details for scoring)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX06ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Complete loss of enamel on a surface; pulp exposure or exposure of secondary dentin where pulp used' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX06ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(8 AS FLOAT64),0) AS INT64) THEN 'Loss due to trauma and not wear' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX06ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Could not assess' -- categorize numeric values
WHEN OHX06ESF IS NULL THEN NULL 
ELSE SAFE_CAST(OHX06ESF AS STRING) 
 END as facial_surface_code_for_erosion_OHX06ESF, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX06ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Sound; Any wear restricted to enamel only' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX06ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel just exposing dentin' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX06ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel and extensive loss of dentin (see notes for surface details for scoring)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX06ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Complete loss of enamel on a surface; pulp exposure or exposure of secondary dentin where pulp used' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX06ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(8 AS FLOAT64),0) AS INT64) THEN 'Loss due to trauma and not wear' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX06ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Could not assess' -- categorize numeric values
WHEN OHX06ESI IS NULL THEN NULL 
ELSE SAFE_CAST(OHX06ESI AS STRING) 
 END as incisial_surface_code_for_erosion_OHX06ESI, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX03ESO AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Sound; Any wear restricted to enamel only' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX03ESO AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel just exposing dentin' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX03ESO AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel and extensive loss of dentin (see notes for surface details for scoring)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX03ESO AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Complete loss of enamel on a surface; pulp exposure or exposure of secondary dentin where pulp used' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX03ESO AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(8 AS FLOAT64),0) AS INT64) THEN 'Loss due to trauma and not wear' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX03ESO AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Could not assess' -- categorize numeric values
WHEN OHX03ESO IS NULL THEN NULL 
ELSE SAFE_CAST(OHX03ESO AS STRING) 
 END as occlusal_surface_code_for_erosion, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX09ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Sound; Any wear restricted to enamel only' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX09ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel just exposing dentin' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX09ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel and extensive loss of dentin (see notes for surface details for scoring)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX09ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Complete loss of enamel on a surface; pulp exposure or exposure of secondary dentin where pulp used' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX09ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(8 AS FLOAT64),0) AS INT64) THEN 'Loss due to trauma and not wear' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX09ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Could not assess' -- categorize numeric values
WHEN OHX09ESL IS NULL THEN NULL 
ELSE SAFE_CAST(OHX09ESL AS STRING) 
 END as lingual_surface_code_for_erosion_OHX09ESL, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX09ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Sound; Any wear restricted to enamel only' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX09ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel just exposing dentin' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX09ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel and extensive loss of dentin (see notes for surface details for scoring)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX09ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Complete loss of enamel on a surface; pulp exposure or exposure of secondary dentin where pulp used' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX09ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(8 AS FLOAT64),0) AS INT64) THEN 'Loss due to trauma and not wear' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX09ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Could not assess' -- categorize numeric values
WHEN OHX09ESF IS NULL THEN NULL 
ELSE SAFE_CAST(OHX09ESF AS STRING) 
 END as facial_surface_code_for_erosion_OHX09ESF, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX09ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Sound; Any wear restricted to enamel only' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX09ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel just exposing dentin' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX09ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel and extensive loss of dentin (see notes for surface details for scoring)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX09ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Complete loss of enamel on a surface; pulp exposure or exposure of secondary dentin where pulp used' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX09ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(8 AS FLOAT64),0) AS INT64) THEN 'Loss due to trauma and not wear' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX09ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Could not assess' -- categorize numeric values
WHEN OHX09ESI IS NULL THEN NULL 
ELSE SAFE_CAST(OHX09ESI AS STRING) 
 END as incisial_surface_code_for_erosion_OHX09ESI, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX10ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Sound; Any wear restricted to enamel only' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX10ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel just exposing dentin' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX10ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel and extensive loss of dentin (see notes for surface details for scoring)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX10ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Complete loss of enamel on a surface; pulp exposure or exposure of secondary dentin where pulp used' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX10ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(8 AS FLOAT64),0) AS INT64) THEN 'Loss due to trauma and not wear' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX10ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Could not assess' -- categorize numeric values
WHEN OHX10ESL IS NULL THEN NULL 
ELSE SAFE_CAST(OHX10ESL AS STRING) 
 END as lingual_surface_code_for_erosion_OHX10ESL, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX10ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Sound; Any wear restricted to enamel only' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX10ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel just exposing dentin' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX10ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel and extensive loss of dentin (see notes for surface details for scoring)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX10ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Complete loss of enamel on a surface; pulp exposure or exposure of secondary dentin where pulp used' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX10ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(8 AS FLOAT64),0) AS INT64) THEN 'Loss due to trauma and not wear' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX10ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Could not assess' -- categorize numeric values
WHEN OHX10ESF IS NULL THEN NULL 
ELSE SAFE_CAST(OHX10ESF AS STRING) 
 END as facial_surface_code_for_erosion_OHX10ESF, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX10ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Sound; Any wear restricted to enamel only' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX10ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel just exposing dentin' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX10ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel and extensive loss of dentin (see notes for surface details for scoring)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX10ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Complete loss of enamel on a surface; pulp exposure or exposure of secondary dentin where pulp used' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX10ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(8 AS FLOAT64),0) AS INT64) THEN 'Loss due to trauma and not wear' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX10ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Could not assess' -- categorize numeric values
WHEN OHX10ESI IS NULL THEN NULL 
ELSE SAFE_CAST(OHX10ESI AS STRING) 
 END as incisial_surface_code_for_erosion_OHX10ESI, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX11ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Sound; Any wear restricted to enamel only' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX11ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel just exposing dentin' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX11ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel and extensive loss of dentin (see notes for surface details for scoring)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX11ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Complete loss of enamel on a surface; pulp exposure or exposure of secondary dentin where pulp used' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX11ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(8 AS FLOAT64),0) AS INT64) THEN 'Loss due to trauma and not wear' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX11ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Could not assess' -- categorize numeric values
WHEN OHX11ESL IS NULL THEN NULL 
ELSE SAFE_CAST(OHX11ESL AS STRING) 
 END as lingual_surface_code_for_erosion_OHX11ESL, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX11ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Sound; Any wear restricted to enamel only' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX11ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel just exposing dentin' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX11ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel and extensive loss of dentin (see notes for surface details for scoring)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX11ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Complete loss of enamel on a surface; pulp exposure or exposure of secondary dentin where pulp used' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX11ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(8 AS FLOAT64),0) AS INT64) THEN 'Loss due to trauma and not wear' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX11ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Could not assess' -- categorize numeric values
WHEN OHX11ESF IS NULL THEN NULL 
ELSE SAFE_CAST(OHX11ESF AS STRING) 
 END as facial_surface_code_for_erosion_OHX11ESF, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX11ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Sound; Any wear restricted to enamel only' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX11ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel just exposing dentin' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX11ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel and extensive loss of dentin (see notes for surface details for scoring)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX11ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Complete loss of enamel on a surface; pulp exposure or exposure of secondary dentin where pulp used' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX11ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(8 AS FLOAT64),0) AS INT64) THEN 'Loss due to trauma and not wear' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX11ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Could not assess' -- categorize numeric values
WHEN OHX11ESI IS NULL THEN NULL 
ELSE SAFE_CAST(OHX11ESI AS STRING) 
 END as incisial_surface_code_for_erosion_OHX11ESI, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX14ESO AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Sound; Any wear restricted to enamel only' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX14ESO AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel just exposing dentin' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX14ESO AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel and extensive loss of dentin (see notes for surface details for scoring)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX14ESO AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Complete loss of enamel on a surface; pulp exposure or exposure of secondary dentin where pulp used' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX14ESO AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(8 AS FLOAT64),0) AS INT64) THEN 'Loss due to trauma and not wear' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX14ESO AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Could not assess' -- categorize numeric values
WHEN OHX14ESO IS NULL THEN NULL 
ELSE SAFE_CAST(OHX14ESO AS STRING) 
 END as occlusal_surface_code_for_erosion_OHX14ESO, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX25ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Sound; Any wear restricted to enamel only' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX25ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel just exposing dentin' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX25ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel and extensive loss of dentin (see notes for surface details for scoring)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX25ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Complete loss of enamel on a surface; pulp exposure or exposure of secondary dentin where pulp used' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX25ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(8 AS FLOAT64),0) AS INT64) THEN 'Loss due to trauma and not wear' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX25ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Could not assess' -- categorize numeric values
WHEN OHX25ESL IS NULL THEN NULL 
ELSE SAFE_CAST(OHX25ESL AS STRING) 
 END as lingual_surface_code_for_erosion_OHX25ESL, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX25ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Sound; Any wear restricted to enamel only' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX25ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel just exposing dentin' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX25ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel and extensive loss of dentin (see notes for surface details for scoring)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX25ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Complete loss of enamel on a surface; pulp exposure or exposure of secondary dentin where pulp used' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX25ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(8 AS FLOAT64),0) AS INT64) THEN 'Loss due to trauma and not wear' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX25ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Could not assess' -- categorize numeric values
WHEN OHX25ESF IS NULL THEN NULL 
ELSE SAFE_CAST(OHX25ESF AS STRING) 
 END as facial_surface_code_for_erosion_OHX25ESF, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX25ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Sound; Any wear restricted to enamel only' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX25ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel just exposing dentin' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX25ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel and extensive loss of dentin (see notes for surface details for scoring)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX25ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Complete loss of enamel on a surface; pulp exposure or exposure of secondary dentin where pulp used' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX25ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(8 AS FLOAT64),0) AS INT64) THEN 'Loss due to trauma and not wear' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX25ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Could not assess' -- categorize numeric values
WHEN OHX25ESI IS NULL THEN NULL 
ELSE SAFE_CAST(OHX25ESI AS STRING) 
 END as incisial_surface_code_for_erosion_OHX25ESI, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX26ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Sound; Any wear restricted to enamel only' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX26ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel just exposing dentin' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX26ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel and extensive loss of dentin (see notes for surface details for scoring)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX26ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Complete loss of enamel on a surface; pulp exposure or exposure of secondary dentin where pulp used' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX26ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(8 AS FLOAT64),0) AS INT64) THEN 'Loss due to trauma and not wear' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX26ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Could not assess' -- categorize numeric values
WHEN OHX26ESL IS NULL THEN NULL 
ELSE SAFE_CAST(OHX26ESL AS STRING) 
 END as lingual_surface_code_for_erosion_OHX26ESL, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX26ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Sound; Any wear restricted to enamel only' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX26ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel just exposing dentin' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX26ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel and extensive loss of dentin (see notes for surface details for scoring)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX26ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Complete loss of enamel on a surface; pulp exposure or exposure of secondary dentin where pulp used' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX26ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(8 AS FLOAT64),0) AS INT64) THEN 'Loss due to trauma and not wear' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX26ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Could not assess' -- categorize numeric values
WHEN OHX26ESF IS NULL THEN NULL 
ELSE SAFE_CAST(OHX26ESF AS STRING) 
 END as facial_surface_code_for_erosion_OHX26ESF, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX26ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Sound; Any wear restricted to enamel only' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX26ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel just exposing dentin' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX26ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel and extensive loss of dentin (see notes for surface details for scoring)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX26ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Complete loss of enamel on a surface; pulp exposure or exposure of secondary dentin where pulp used' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX26ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(8 AS FLOAT64),0) AS INT64) THEN 'Loss due to trauma and not wear' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX26ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Could not assess' -- categorize numeric values
WHEN OHX26ESI IS NULL THEN NULL 
ELSE SAFE_CAST(OHX26ESI AS STRING) 
 END as incisial_surface_code_for_erosion_OHX26ESI, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX27ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Sound; Any wear restricted to enamel only' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX27ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel just exposing dentin' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX27ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel and extensive loss of dentin (see notes for surface details for scoring)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX27ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Complete loss of enamel on a surface; pulp exposure or exposure of secondary dentin where pulp used' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX27ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(8 AS FLOAT64),0) AS INT64) THEN 'Loss due to trauma and not wear' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX27ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Could not assess' -- categorize numeric values
WHEN OHX27ESL IS NULL THEN NULL 
ELSE SAFE_CAST(OHX27ESL AS STRING) 
 END as lingual_surface_code_for_erosion_OHX27ESL, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX27ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Sound; Any wear restricted to enamel only' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX27ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel just exposing dentin' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX27ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel and extensive loss of dentin (see notes for surface details for scoring)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX27ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Complete loss of enamel on a surface; pulp exposure or exposure of secondary dentin where pulp used' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX27ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(8 AS FLOAT64),0) AS INT64) THEN 'Loss due to trauma and not wear' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX27ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Could not assess' -- categorize numeric values
WHEN OHX27ESF IS NULL THEN NULL 
ELSE SAFE_CAST(OHX27ESF AS STRING) 
 END as facial_surface_code_for_erosion_OHX27ESF, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX27ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Sound; Any wear restricted to enamel only' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX27ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel just exposing dentin' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX27ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel and extensive loss of dentin (see notes for surface details for scoring)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX27ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Complete loss of enamel on a surface; pulp exposure or exposure of secondary dentin where pulp used' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX27ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(8 AS FLOAT64),0) AS INT64) THEN 'Loss due to trauma and not wear' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX27ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Could not assess' -- categorize numeric values
WHEN OHX27ESI IS NULL THEN NULL 
ELSE SAFE_CAST(OHX27ESI AS STRING) 
 END as incisial_surface_code_for_erosion_OHX27ESI, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX30ESO AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Sound; Any wear restricted to enamel only' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX30ESO AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel just exposing dentin' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX30ESO AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel and extensive loss of dentin (see notes for surface details for scoring)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX30ESO AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Complete loss of enamel on a surface; pulp exposure or exposure of secondary dentin where pulp used' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX30ESO AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(8 AS FLOAT64),0) AS INT64) THEN 'Loss due to trauma and not wear' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX30ESO AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Could not assess' -- categorize numeric values
WHEN OHX30ESO IS NULL THEN NULL 
ELSE SAFE_CAST(OHX30ESO AS STRING) 
 END as occlusal_surface_code_for_erosion_OHX30ESO, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX24ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Sound; Any wear restricted to enamel only' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX24ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel just exposing dentin' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX24ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel and extensive loss of dentin (see notes for surface details for scoring)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX24ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Complete loss of enamel on a surface; pulp exposure or exposure of secondary dentin where pulp used' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX24ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(8 AS FLOAT64),0) AS INT64) THEN 'Loss due to trauma and not wear' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX24ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Could not assess' -- categorize numeric values
WHEN OHX24ESL IS NULL THEN NULL 
ELSE SAFE_CAST(OHX24ESL AS STRING) 
 END as lingual_surface_code_for_erosion_OHX24ESL, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX24ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Sound; Any wear restricted to enamel only' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX24ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel just exposing dentin' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX24ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel and extensive loss of dentin (see notes for surface details for scoring)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX24ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Complete loss of enamel on a surface; pulp exposure or exposure of secondary dentin where pulp used' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX24ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(8 AS FLOAT64),0) AS INT64) THEN 'Loss due to trauma and not wear' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX24ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Could not assess' -- categorize numeric values
WHEN OHX24ESF IS NULL THEN NULL 
ELSE SAFE_CAST(OHX24ESF AS STRING) 
 END as facial_surface_code_for_erosion_OHX24ESF, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX24ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Sound; Any wear restricted to enamel only' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX24ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel just exposing dentin' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX24ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel and extensive loss of dentin (see notes for surface details for scoring)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX24ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Complete loss of enamel on a surface; pulp exposure or exposure of secondary dentin where pulp used' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX24ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(8 AS FLOAT64),0) AS INT64) THEN 'Loss due to trauma and not wear' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX24ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Could not assess' -- categorize numeric values
WHEN OHX24ESI IS NULL THEN NULL 
ELSE SAFE_CAST(OHX24ESI AS STRING) 
 END as incisial_surface_code_for_erosion_OHX24ESI, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX23ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Sound; Any wear restricted to enamel only' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX23ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel just exposing dentin' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX23ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel and extensive loss of dentin (see notes for surface details for scoring)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX23ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Complete loss of enamel on a surface; pulp exposure or exposure of secondary dentin where pulp used' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX23ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(8 AS FLOAT64),0) AS INT64) THEN 'Loss due to trauma and not wear' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX23ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Could not assess' -- categorize numeric values
WHEN OHX23ESL IS NULL THEN NULL 
ELSE SAFE_CAST(OHX23ESL AS STRING) 
 END as lingual_surface_code_for_erosion_OHX23ESL, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX23ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Sound; Any wear restricted to enamel only' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX23ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel just exposing dentin' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX23ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel and extensive loss of dentin (see notes for surface details for scoring)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX23ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Complete loss of enamel on a surface; pulp exposure or exposure of secondary dentin where pulp used' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX23ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(8 AS FLOAT64),0) AS INT64) THEN 'Loss due to trauma and not wear' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX23ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Could not assess' -- categorize numeric values
WHEN OHX23ESF IS NULL THEN NULL 
ELSE SAFE_CAST(OHX23ESF AS STRING) 
 END as facial_surface_code_for_erosion_OHX23ESF, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX23ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Sound; Any wear restricted to enamel only' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX23ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel just exposing dentin' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX23ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel and extensive loss of dentin (see notes for surface details for scoring)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX23ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Complete loss of enamel on a surface; pulp exposure or exposure of secondary dentin where pulp used' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX23ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(8 AS FLOAT64),0) AS INT64) THEN 'Loss due to trauma and not wear' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX23ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Could not assess' -- categorize numeric values
WHEN OHX23ESI IS NULL THEN NULL 
ELSE SAFE_CAST(OHX23ESI AS STRING) 
 END as incisial_surface_code_for_erosion_OHX23ESI, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX22ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Sound; Any wear restricted to enamel only' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX22ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel just exposing dentin' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX22ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel and extensive loss of dentin (see notes for surface details for scoring)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX22ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Complete loss of enamel on a surface; pulp exposure or exposure of secondary dentin where pulp used' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX22ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(8 AS FLOAT64),0) AS INT64) THEN 'Loss due to trauma and not wear' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX22ESL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Could not assess' -- categorize numeric values
WHEN OHX22ESL IS NULL THEN NULL 
ELSE SAFE_CAST(OHX22ESL AS STRING) 
 END as lingual_surface_code_for_erosion_OHX22ESL, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX22ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Sound; Any wear restricted to enamel only' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX22ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel just exposing dentin' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX22ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel and extensive loss of dentin (see notes for surface details for scoring)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX22ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Complete loss of enamel on a surface; pulp exposure or exposure of secondary dentin where pulp used' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX22ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(8 AS FLOAT64),0) AS INT64) THEN 'Loss due to trauma and not wear' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX22ESF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Could not assess' -- categorize numeric values
WHEN OHX22ESF IS NULL THEN NULL 
ELSE SAFE_CAST(OHX22ESF AS STRING) 
 END as facial_surface_code_for_erosion_OHX22ESF, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX22ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Sound; Any wear restricted to enamel only' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX22ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel just exposing dentin' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX22ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel and extensive loss of dentin (see notes for surface details for scoring)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX22ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Complete loss of enamel on a surface; pulp exposure or exposure of secondary dentin where pulp used' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX22ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(8 AS FLOAT64),0) AS INT64) THEN 'Loss due to trauma and not wear' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX22ESI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Could not assess' -- categorize numeric values
WHEN OHX22ESI IS NULL THEN NULL 
ELSE SAFE_CAST(OHX22ESI AS STRING) 
 END as incisial_surface_code_for_erosion_OHX22ESI, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX19ESO AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Sound; Any wear restricted to enamel only' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX19ESO AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel just exposing dentin' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX19ESO AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Loss of enamel and extensive loss of dentin (see notes for surface details for scoring)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX19ESO AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Complete loss of enamel on a surface; pulp exposure or exposure of secondary dentin where pulp used' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX19ESO AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(8 AS FLOAT64),0) AS INT64) THEN 'Loss due to trauma and not wear' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(OHX19ESO AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Could not assess' -- categorize numeric values
WHEN OHX19ESO IS NULL THEN NULL 
ELSE SAFE_CAST(OHX19ESO AS STRING) 
 END as occlusal_surface_code_for_erosion_OHX19ESO, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_oral_health_addendum_examination') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/OHXADD_C.htm
*/
