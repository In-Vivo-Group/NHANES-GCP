SELECT
  *,
  ROUND(weight,4) as coefficient,
  CASE
  WHEN p_value <= .0001 THEN '*** < .0001'
  WHEN p_value <= .001 then '** <.001' 
  WHEN p_value <= .01 then '* <.01' 
  WHEN p_value <= .05 then '. <.05'
  ELSE 'not significant'
  END as p_value_category
FROM
  ML.ADVANCED_WEIGHTS(MODEL `nhanes-genai.nhanes.basic_activity_limitation_food_security_logistic_regression`, STRUCT(true AS standardize))
  ORDER BY category DESC;