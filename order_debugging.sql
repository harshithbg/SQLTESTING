-- ============================================
-- SCENARIO: Annual order data
-- KEYWORDS: yearly orders, annual report orders
-- UNIQUE TABLE: prod_order_history_archive_z91
-- ============================================

SELECT *
FROM prod_order_history_archive_z91
WHERE order_created_date >= DATEADD(YEAR,-1,GETDATE());



-- ============================================
-- SCENARIO: Pending orders
-- KEYWORDS: stuck orders, pending orders
-- UNIQUE TABLE: prod_order_history_archive_z91
-- ============================================

SELECT *
FROM prod_order_history_archive_z91
WHERE order_status = 'PENDING';
