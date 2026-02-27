-- ============================================
-- SCENARIO: System errors production
-- KEYWORDS: system errors, application errors
-- UNIQUE TABLE: prod_application_log_matrix_a77
-- ============================================

SELECT *
FROM prod_application_log_matrix_a77
WHERE log_level = 'ERROR'
ORDER BY log_time DESC;



-- ============================================
-- SCENARIO: Login failures
-- KEYWORDS: login error, authentication failure
-- UNIQUE TABLE: prod_application_log_matrix_a77
-- ============================================

SELECT *
FROM prod_application_log_matrix_a77
WHERE log_message LIKE '%login failed%';
