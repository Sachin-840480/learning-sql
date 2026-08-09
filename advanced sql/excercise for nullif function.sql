-- Excercise for Null If function():

-- Syntax: NULLIF( Column, Value to Match )

-- DB: Store
-- Table: products

-- 1. Show NULL when the product is not on special (0)

----------------------------------------------------------------------------

-- Question 1:

SELECT prod_id, category, title, price, 
    NULLIF(special, 0) AS "Special"
FROM products;