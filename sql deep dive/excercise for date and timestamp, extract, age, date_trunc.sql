-- Date and Timestamp Excercise:

-- DB: Employees
-- Table: employees

-- 1. Get me all the employees above 60, use the appropriate date functions.
-- 2. How many employees where hired in February?
-- 3. How many employees were born in november?
-- 4. Who is the oldest employee? (Use the analytical function MAX)

-- DB: Store
-- Table: orders

-- 5. How many orders were made in January 2004?

----------------------------------------------------------------------------

-- Question 1:

-- select age(birth_date), * from employees
-- where (extract(year from age(birth_date))) > 60;

-- alternative
-- SELECT count(birth_date) FROM employees
-- WHERE birth_date < now() - interval '61 years' -- 61 years before the current date

----------------------------------------------------------------------------

-- Question 2:

-- SELECT COUNT(emp_no) FROM employees      -- to get numerical value
-- select * from employees
-- where extract(month from hire_date) = 2;

----------------------------------------------------------------------------

-- Question 3:

-- SELECT COUNT(emp_no) FROM employees      -- to get numerical value
-- select * from employees
-- where extract(month from birth_date) = 11;

----------------------------------------------------------------------------

-- Question 4:

-- select max(age(birth_date)) from employees;  -- to get the person age.

-- select max(birth_date) from employees; 

----------------------------------------------------------------------------

-- Question 5:

-- select (count(orderid)) from orders      -- to get the number of orders.

SELECT * FROM orders
WHERE EXTRACT(YEAR FROM orderdate) = 2004 AND EXTRACT(MONTH FROM orderdate) = 1;


-- Alternate method.

-- select * from orders
-- where date_trunc('month', orderdate) = '2004-01-01';