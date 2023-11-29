SELECT
*
FROM
ML.EXPLAIN_PREDICT(MODEL `nhanes.grip_strength_to_depression_logistic_regression`,
  (
  SELECT
    combined_grip_strength,
    has_clinically_relevant_depression
FROM (
    SELECT DISTINCT
    a.MGDCGSZ as combined_grip_strength,
    CASE
    WHEN ((CASE WHEN b.DPQ010 <= 3 THEN b.DPQ010 ELSE 0 END ) +
    (CASE WHEN b.DPQ020 <= 3 THEN b.DPQ020 ELSE 0 END ) +
    (CASE WHEN b.DPQ030 <= 3 THEN b.DPQ030 ELSE 0 END ) +
    (CASE WHEN b.DPQ040 <= 3 THEN b.DPQ040 ELSE 0 END ) +
    (CASE WHEN b.DPQ050 <= 3 THEN b.DPQ050 ELSE 0 END ) +
    (CASE WHEN b.DPQ060 <= 3 THEN b.DPQ060 ELSE 0 END ) +
    (CASE WHEN b.DPQ070 <= 3 THEN b.DPQ070 ELSE 0 END ) +
    (CASE WHEN b.DPQ080 <= 3 THEN b.DPQ080 ELSE 0 END ) +
    (CASE WHEN b.DPQ090 <= 3 THEN b.DPQ090 ELSE 0 END )) >= 10 THEN 1 ELSE 0 END as has_clinically_relevant_depression
    FROM `nhanes-genai.nhanes.muscle_strength_grip_test_examination` as a
    INNER JOIN `nhanes-genai.nhanes.mental_health_depression_screener_questionnaire` as b ON a.SEQN = b.SEQN
    WHERE a.MGDCGSZ IS NOT NULL 
)),
  STRUCT(3 AS top_k_features, 0.35 AS threshold))