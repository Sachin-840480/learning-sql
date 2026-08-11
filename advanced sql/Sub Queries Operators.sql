-- Sub Queries Operators:

-- 1. Exists.
-- 2. In.
-- 3. Not In.
-- 4. Any.
-- 5. Some.
-- 6. All.
-- 7. Single Row Comparisons.

----------------------------------------------------------------------------

-- 1. Exists.

SELECT firstname, lastname, income
FROM customers AS c
WHERE EXISTS(
    SELECT * FROM orders AS o
    WHERE c.customerid = o.customerid AND o.totalamount > 400
) AND income > 90000;

----------------------------------------------------------------------------

-- 2. In.

SELECT prod_id FROM products
WHERE category IN (
    SELECT category FROM categories
    WHERE categoryname IN ('Comedy', 'Family', 'Classics')
);

----------------------------------------------------------------------------

-- 3. Not In.

SELECT prod_id FROM products
WHERE category IN (
    SELECT category FROM categories
    WHERE categoryname NOT IN ('Comedy', 'Family', 'Classics')
);

----------------------------------------------------------------------------

-- Note: "Any" and "Some" are Kind of Similiar.

-- 4. Any.

SELECT prod_id FROM products
WHERE category = ANY (
    SELECT category FROM categories
    WHERE categoryname IN ('Comedy', 'Family', 'Classics')
);

----------------------------------------------------------------------------

-- 5. Some.

SELECT prod_id FROM products
WHERE category = SOME (
    SELECT category FROM categories
    WHERE categoryname IN ('Comedy', 'Family', 'Classics')
);

----------------------------------------------------------------------------

-- 6. All.

SELECT prod_id, title, sales
FROM products
JOIN inventory AS i USING(prod_id)
WHERE i.sales > ALL (
    SELECT avg(sales) FROM inventory
    JOIN products AS p1 USING (prod_id)
    GROUP BY p1.category
);

-- Test Run for the subquery:

-- SELECT p1.category, avg(sales) FROM inventory
-- JOIN products AS p1 USING (prod_id)
-- GROUP BY p1.category;

----------------------------------------------------------------------------

-- 7. Single Row Comparison.

SELECT prod_id FROM products
WHERE category = (
    SELECT category FROM categories
    WHERE categoryname IN ('Comedy')
);