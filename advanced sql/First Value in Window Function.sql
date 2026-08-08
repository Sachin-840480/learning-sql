-- "First_Value" window Function:

-- Question: Wanting to know how my price compares to the item with the lowest price in the same category.

-- It is always better to "MIN", "MAX", "AVG" rather than "first_value", "last_value".

----------------------------------------------------------------------------

-- Getting Info About the Table.

-- select category, title, price from products
-- order by price desc;

-- SELECT category, min(price) FROM products
-- GROUP BY category
-- ORDER BY category;

----------------------------------------------------------------------------

-- Solution:-

-- My try: (YES It's Correct).

SELECT category, title, price,
    min(price) OVER (
        PARTITION BY category
)
FROM products;

----------------------------------------------------------------------------

-- ZTM Answer:

SELECT
    prod_id,
    price,
    category,
    first_value(price) OVER(
        PARTITION BY category
        ORDER BY price
    )
FROM products;


-- ZTM Answer: Longer Version:

SELECT
    prod_id,
    price,
    category,
    first_value(price) OVER(
        PARTITION BY category
        ORDER BY price
        RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
    )
FROM products;

----------------------------------------------------------------------------

-- Major Differences when used with "Last_Value"

-- Until the data window is small (here, last + till current), it fails to capture the complete information.

SELECT
    prod_id,
    price,
    category,
    last_value(price) OVER(
        PARTITION BY category
        ORDER BY price
    )
FROM products;


-- It is fixed, when we incresase the data window to the whole partition.

SELECT
    prod_id,
    price,
    category,
    last_value(price) OVER(
        PARTITION BY category
        ORDER BY price
        RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
    )
FROM products;