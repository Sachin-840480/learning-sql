-- Conditional Expressions:

-- Case Clause:

----------------------------------------------------------------------------

-- True Case.

-- select 2,
--     case 
--         when 1 = 2 then 'one'
--         when 2 = 2 then 'two'
--     end
-- ;


-- If all "False" and no "Else", then it gives 'NULL'.

-- SELECT 2,
--     CASE 
--         WHEN 1 = 2 THEN 'one'
--         WHEN 3 = 2 THEN 'two'
--     END
-- ;


-- If all "False" but "Else" condition is present, it gives the 'Else's' output.

-- SELECT 2,
--     CASE 
--         WHEN 1 = 2 THEN 'one'
--         when 2 = 3 then 'two'
--         else 'other'
--     END
-- ;

----------------------------------------------------------------------------

-- Rendering Custom Row Data.

-- select 
--     orderid,
--     customerid,
--     CASE
--         when customerid = 2
--         then 'My First Cusomter'
--         else 'Not My First Customer'
--     end,
--     netamount
-- from orders
-- order by customerid;

----------------------------------------------------------------------------

-- Filtering in a Where Clause

-- select
--     orderid,
--     customerid,
--     netamount
-- from orders
-- where case
--         when customerid > 10 then netamount < 100
--         else netamount > 100
--     end
-- order by customerid;


-- Same but with different conditions.

-- SELECT
--     orderid,
--     customerid,
--     netamount
-- FROM orders
-- WHERE CASE
--         WHEN customerid < 10 THEN netamount > 100
--         ELSE netamount > 100
--     END
-- order by customerid;

----------------------------------------------------------------------------

-- Using in an Aggregate Function.

SELECT
    sum(
        CASE
            WHEN netamount < 100 THEN -100
            ELSE netamount
        END
    ) AS "Retruns",
    sum(netamount) AS "Normal Total"
FROM orders;
