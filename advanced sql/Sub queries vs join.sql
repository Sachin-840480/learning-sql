-- Sub Queries vs Joins

--------------------------------------

-- Sub Queries:

-- select title, price, (select avg(price) from products) as "Global Average Price"
-- from products;

-- The Inner Query (sub-query) can be run as itself also.

-- select avg(price) from products;

--------------------------------------

-- Joins:

-- select prod_id, title, price, quan_in_stock
-- from products
-- join inventory using(prod_id);

-- but joins cannot run standalone.

-- JOIN inventory USING(prod_id);

----------------------------------------------------------------------------

-- Sub Queries:

-- It can retrun a single result or a row set.

SELECT title, price, (SELECT avg(price) FROM products) AS "Global Average Price"
FROM products;

--------------------------------------

-- It causes an Error.

-- -- ERROR:  more than one row returned by a subquery used as an expression
-- SELECT title, price, (SELECT price FROM products) AS "Global Average Price"
-- FROM products;

--------------------------------------

-- But this works when, run in the "From" Clause

SELECT title, price, (SELECT avg(price) FROM products) AS "Global Average Price"
FROM (
    SELECT * FROM products
) AS "prodcuts_sub";

--------------------------------------

-- Usage with "Where" in sub-query.

SELECT title, price, (SELECT avg(price) FROM products) AS "Global Average Price"
FROM (
    SELECT * FROM products
    WHERE price > 20
) AS "prodcuts_sub";

