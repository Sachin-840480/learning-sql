-- In Keyword Excercise:

-- DB: Store
-- Table: orders
-- 1. How many orders were made by customer 7888, 1082, 12808, 9623.

-- DB: World
-- Table: city
-- 2. How many cities are in the district of Zuid-Holland, Noord-Brabant and Utrecht?

----------------------------------------------------------------------------

-- Question 1:

-- select count(orderid) from orders
-- where customerid in (788, 1082, 12808, 9623);

----------------------------------------------------------------------------

-- Question 2:

SELECT count(id) FROM city
WHERE district IN ('Zuid-Holland', 'Noord-Brabant', 'Utrecht');