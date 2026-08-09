-- Views Excercise:

-- Database: Employees

-- 1. Create a view "90-95" that:
-- 1. Shows me all the employees, hired between 1990 and 1995.

-- 2. Create a view "bigbucks" that:
-- 2. Shows me all employees that have ever had a salary over 80000.

----------------------------------------------------------------------------

-- Question 1:

-- create view "90-95" as
-- select * from employees
-- where extract(year from hire_date) between 1990 and 1995;

-- Verifying the Created View.

SELECT * FROM "90-95";

----------------------------------------------------------------------------

-- Question 2:

-- MY Answer: Runs Perfectly

-- CREATE view "bigbucks" as
-- select emp_no, max(salary) as "Highest Salary" from salaries
-- group by emp_no
-- having max(salary) > 80000
-- order by emp_no;

SELECT * FROM "bigbucks";

--------------------------------------

-- ZTM Answer: Correct, but it has Duplicates.
  
-- CREATE VIEW "bigbucks" AS
-- SELECT e.emp_no, s.salary
-- FROM employees as e
-- JOIN salaries as s USING(emp_no)
-- WHERE s.salary > 80000
-- ORDER BY s.salary;
-- 
-- SELECT * FROM "bigbucks";

