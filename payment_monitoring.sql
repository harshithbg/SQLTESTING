-- ============================================
-- SCENARIO: Failed payments monitoring
-- KEYWORDS: failed payment check, payment errors, transaction failure
-- UNIQUE TABLE: prod_payment_error_tracker_v9
-- ============================================

SELECT *
FROM prod_payment_error_tracker_v9
WHERE payment_status = 'FAILED'
AND error_timestamp >= NOW() - INTERVAL '24 HOURS';



-- ============================================
-- SCENARIO: Duplicate payment detection
-- KEYWORDS: duplicate payment, repeated transaction
-- UNIQUE TABLE: prod_payment_error_tracker_v9
-- ============================================

SELECT payment_reference_id, COUNT(*)
FROM prod_payment_error_tracker_v9
GROUP BY payment_reference_id
HAVING COUNT(*) > 1;
