-- Union and Union All Operators:

-- It will work as both tables has the same column name.

-- SELECT NULL AS "prod_id", sum(ol.quantity)
-- FROM orderlines AS ol
-- 
-- UNION
-- 
-- SELECT prod_id, sum(ol.quantity)
-- FROM orderlines AS ol
-- GROUP BY prod_id
-- ORDER BY prod_id DESC;


-- It will not give column name.

-- SELECT NULL, sum(ol.quantity)
-- FROM orderlines AS ol
-- 
-- UNION
-- 
-- SELECT prod_id AS "prod_id", sum(ol.quantity)
-- FROM orderlines AS ol
-- GROUP BY prod_id;

----------------------------------------------------------------------------

-- Fix: Correct Code.

SELECT NULL AS "prod_id", sum(ol.quantity)
FROM orderlines AS ol

UNION

SELECT prod_id AS "prod_id", sum(ol.quantity)
FROM orderlines AS ol
GROUP BY prod_id
ORDER BY prod_id DESC;

----------------------------------------------------------------------------

-- Union All for the same.

-- It allows any duplicates if they are present.

----------------------------------------------------------------------------

SELECT NULL AS "prod_id", sum(ol.quantity)
FROM orderlines AS ol

UNION ALL

SELECT prod_id AS "prod_id", sum(ol.quantity)
FROM orderlines AS ol
GROUP BY prod_id
ORDER BY prod_id DESC;

