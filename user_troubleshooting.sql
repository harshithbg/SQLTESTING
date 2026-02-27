-- ============================================
-- SCENARIO: User lookup production
-- KEYWORDS: user missing, user not found, account lookup
-- UNIQUE TABLE: prod_user_identity_master_x22
-- ============================================

SELECT *
FROM prod_user_identity_master_x22
WHERE user_account_id = :user_id;



-- ============================================
-- SCENARIO: Recently created users
-- KEYWORDS: new users, recent accounts
-- UNIQUE TABLE: prod_user_identity_master_x22
-- ============================================

SELECT *
FROM prod_user_identity_master_x22
WHERE created_time >= NOW() - INTERVAL '48 HOURS';
