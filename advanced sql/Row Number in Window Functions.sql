-- "Row_Number()" window Function:

-- Question: Wanting to know where my product is positioned in the category by price.

----------------------------------------------------------------------------

-- Getting Info About the Table.

SELECT * FROM products;

----------------------------------------------------------------------------

-- Solution:-

-- My try: (YES It's Correct).

-- What is the product's position in its category by product ID?

SELECT prod_id,
    title,
    category,
    price,
    row_number() OVER(
        PARTITION BY category
        ORDER BY prod_id
    )
FROM products;


-- Where is my product positioned by price?
-- Or Ordering them using "price". (Much Better)

SELECT prod_id,
    title,
    category,
    price,
    row_number() OVER(
        PARTITION BY category
        ORDER BY price
    )
FROM products;

----------------------------------------------------------------------------

-- Same as above, but just giving it a name for better Output.

SELECT prod_id,
    title,
    category,
    price,
    row_number() OVER(
        PARTITION BY category
        ORDER BY price
    ) AS "Position in Category by Price"
FROM products;

----------------------------------------------------------------------------

-- Even if we try to force "Framing" on it, it doesn't take it into account.

-- It only cares about the current row.

SELECT prod_id,
    title,
    category,
    price,
    row_number() OVER(
        PARTITION BY category
        ORDER BY price
        RANGE BETWEEN CURRENT ROW AND CURRENT ROW
    ) AS "Position in Category by Price"
FROM products;