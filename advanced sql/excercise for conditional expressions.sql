-- Excercise for Conditional Expressions:

-- Database: Store
-- Table: products

-- 1. Create a case statement that's named "price class" where if a product is over 20 dollars you show 'expensive'. 
-- if it's between 10 and 20 you show 'average'.
-- and of is lower than or equal to 10 you show 'cheap'.

----------------------------------------------------------------------------

SELECT prod_id, category, title, price,
    CASE 
        WHEN price > 20 THEN 'Expensive'
        WHEN price BETWEEN 10 AND 20 THEN 'Average'
        ELSE 'Cheap'
    END AS "Price Class"
FROM products;

