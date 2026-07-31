-- DB: Store
-- Table: customers

-- Question 1. Adjust the following query to display the null values as "No Address".

-- SELECT address2 
-- FROM customers

-- Question 2. Fix the following query to apply proper 3VL.

-- SELECT *
-- FROM customers
-- WHERE COALESCE(address2, null) IS NOT null;

-- Question 3. Fix the following query to apply proper 3VL.

-- SELECT coalesce(lastName, 'Empty'), * from customers
-- where (age = null);

----------------------------------------------------------------------------

-- Question 1:

-- select COALESCE(address2, 'NO Address') from customers;

----------------------------------------------------------------------------

-- Question 2:

-- select * from customers
-- where address2 is not null;

----------------------------------------------------------------------------

-- Question 3:

SELECT COALESCE(lastName, 'Empty'), * FROM customers
WHERE age IS NULL;
