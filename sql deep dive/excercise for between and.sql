-- BETWEEN AND excercise:

-- 1. Who between the ages of 30 and 50 has an income less than 50 000?  
-- (include 30 and 50 in the results)

-- 2. What is the average income between the ages of 20 and 50? 
-- (Including 20 and 50)

----------------------------------------------------------------------------

-- Question 1:

-- select * from customers
-- where income < 50000 and (age between 30 and 50);

----------------------------------------------------------------------------

-- Question 2:

SELECT avg(income) FROM customers
WHERE age BETWEEN 20 AND 50;