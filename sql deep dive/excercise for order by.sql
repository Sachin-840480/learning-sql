-- Excercise Order By:
-- 
-- DB: Employees
-- Table: employees
-- 
-- 1. Sort employees by first name ascending and last name descending.
-- 2. Sort employees by age.
-- 3. Sort employees who's name starts with a "k" by hire_date.

----------------------------------------------------------------------------

-- Question 1:

-- select * from employees
-- order by first_name asc, last_name desc;

----------------------------------------------------------------------------

-- Question 2:

-- select * from employees
-- order by extract(year from age(birth_date)) asc;

-- ZTM answer:
-- select * from employees
-- order by birth_date;
-- 
----------------------------------------------------------------------------

-- Question 3:

SELECT * FROM employees
WHERE first_name LIKE 'K%'
ORDER BY hire_date;