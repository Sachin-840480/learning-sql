-- Like and ILike Keyword excercise:-

-- DB: Employees
-- Table: employees

-- 1. Find the age of all employees who's name starts with M.

-- Sample output: https://imgur.com/vXs4093
-- Use EXTRACT (YEAR FROM AGE(birth_date)) we will learn about this in later parts of the course

-- SELECT ..., EXTRACT (YEAR FROM AGE(birth_date)) as "age" FROM employees;

-- 2. How many people's name start with A and end with R?
-- Expected output: 1846


-- DB: Store
-- Table: customers


-- 3. How many people's zipcode have a 2 in it?.
-- Expected output: 4211 


-- 4. How many people's zipcode start with 2 with the 3rd character being a 1.
-- Expected output: 109 


-- 5. Which states have phone numbers starting with 302?
-- Replace null values with "No State"                                                  
-- Expected output: https://imgur.com/AVe6G4c


----------------------------------------------------------------------------

-- Question 1:

-- SELECT emp_no, first_name, EXTRACT (YEAR FROM AGE(birth_date)) as "age" FROM employees
-- where first_name ilike 'M%';

----------------------------------------------------------------------------

-- Question 2:

-- select * from employees
-- where first_name ilike 'a%r';

----------------------------------------------------------------------------

-- Question 3:

SELECT * FROM customers
WHERE CAST(zip AS TEXT) LIKE '%2%';

----------------------------------------------------------------------------

-- Question 4:

SELECT * FROM customers
WHERE zip :: TEXT LIKE '2_1%';

----------------------------------------------------------------------------

-- Question 5:

SELECT COALESCE(state, 'No State') AS "state", phone FROM customers
WHERE phone :: TEXT LIKE '302%';