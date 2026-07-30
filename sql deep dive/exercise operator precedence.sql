-- Exercise: Operator Precedence

-- 1. Select people either under 30 or over 50 with an income above 50000 that are from either Japan or Australia
-- 2. What was our total sales in June of 2004 for orders over 100 dollars?

----------------------------------------------------------------------------

-- Question 1: 

-- ZTM answer: 
-- SELECT firstname, income, age from customers
-- WHERE income > 50000 AND (age < 30 OR age >= 50)
-- and (country = 'Japan' OR country = 'Australia');

-- My Answer:
-- select firstname, lastname, age, income, country from customers
-- where (age < 30 or age >= 50) and income > 50000 
-- and (country = 'Japan' or country = 'Australia');

-- -- Better Answer (Purely subjected on the database.) (Mostly due to shortcuiting.)

----------------------------------------------------------------------------

-- Question 2: 

SELECT sum(totalamount) FROM orders
WHERE (orderdate >= '2004-06-01' AND orderdate <= '2004-06-30')
AND totalamount > 100;
