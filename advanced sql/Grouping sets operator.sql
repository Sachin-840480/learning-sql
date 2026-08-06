-- Grouping Sets Operator:

----------------------------------------------------------------------------

-- Base Query:

-- SELECT NULL AS "prod_id", sum(ol.quantity)
-- FROM orderlines AS ol
-- 
-- UNION all
-- 
-- SELECT prod_id AS "prod_id", sum(ol.quantity)
-- FROM orderlines AS ol
-- GROUP BY prod_id
-- ORDER BY prod_id DESC;

----------------------------------------------------------------------------

-- With Grouping Sets:

-- SELECT prod_id AS "prod_id", sum(ol.quantity)
-- FROM orderlines AS ol
-- GROUP BY 
-- grouping sets(
--     (),
--     (prod_id)
-- );


-- Also works with Order By, and we didn't really need the 'AS "prod_id"' part. 

-- SELECT prod_id, sum(ol.quantity)
-- FROM orderlines AS ol
-- GROUP BY 
-- GROUPING SETS(
--     (),
--     (prod_id)
-- )
-- order by prod_id desc;

----------------------------------------------------------------------------

-- SELECT prod_id, sum(ol.quantity)
-- FROM orderlines AS ol
-- GROUP BY 
-- GROUPING SETS(
--     (),
--     (prod_id),
--     (orderlineid)
-- );


-- SELECT prod_id, sum(ol.quantity)
-- FROM orderlines AS ol
-- GROUP BY 
-- GROUPING SETS(
--     (),
--     (prod_id),
--     (orderlineid)
-- )
-- order by prod_id;


-- SELECT prod_id, orderlineid, sum(ol.quantity)
-- FROM orderlines AS ol
-- GROUP BY 
-- GROUPING SETS(
--     (),
--     (prod_id),
--     (orderlineid)
-- )
-- ORDER BY prod_id;


FROM orderlines AS ol
GROUP BY 
GROUPING SETS(
    (),
    (prod_id),
    (orderlineid)
)
ORDER BY prod_id, orderlineid;


SELECT prod_id, orderlineid, sum(ol.quantity)
FROM orderlines AS ol
GROUP BY 
GROUPING SETS(
    (),
    (prod_id),
    (orderlineid)
)
ORDER BY prod_id DESC, orderlineid DESC;
