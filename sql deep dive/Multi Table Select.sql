-- Multi Table Select.

----------------------------------------------------------------------------

-- DANGER: {DON'T RUN THIS QUERY}
-- Error: This SQL query causes huge "Memory requirement" to occur, causing the system to crash.

--  --  -- SELECT a.emp_no, b.salary FROM employees AS a, salaries AS b;

-- Reason: This happens because there was no link between the table 'A' & 'B'. Casuing Every single salary from salary table to combine with every single individual from employees table.

-- Fix: 'Where' clause is used to establish a relationship between the tables.

----------------------------------------------------------------------------

-- Safe version to run.

-- select a.emp_no, b.salary from employees as a, salaries as b
-- where a.emp_no = b.emp_no;

-- Same thing but with name.

-- SELECT a.emp_no,
-- concat(a.first_name, ' ',a.last_name) as "name", 
-- b.salary FROM employees AS a, salaries AS b
-- where a.emp_no = b.emp_no;

----------------------------------------------------------------------------

-- SELECT a.emp_no, b.salary FROM employees AS a, salaries AS b
-- WHERE a.emp_no = b.emp_no
-- order by a.emp_no;

SELECT a.emp_no, b.salary, b.from_date FROM employees AS a, salaries AS b
WHERE a.emp_no = b.emp_no
ORDER BY a.emp_no;
