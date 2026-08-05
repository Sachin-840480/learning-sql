-- Group By Excercise:

-- Database: Employees
-- Table: Employees

-- 1. How many people were hired on any given hire date?
-- 2. Show me all the employees, hired after 1991 and count the amount of positions they've had.
-- 3. Show me all the employees that work in the department development and the from and to date.

----------------------------------------------------------------------------

-- Question 1:

-- select hire_date, count(emp_no)
-- from employees
-- group BY hire_date;

-- Better answers:

-- select hire_date, count(emp_no) as Amount
-- from employees
-- group by hire_date
-- order by amount desc;

----------------------------------------------------------------------------

-- Question 2:

-- select e.emp_no, e.first_name, count(t.title) as "No of titles"
-- from employees as e
-- join titles as t 
-- on t.emp_no = e.emp_no
-- where extract(year from e.hire_date) >= '1991'
-- group by e.emp_no
-- order by e.emp_no;

----------------------------------------------------------------------------

-- Question 3:

-- select e.emp_no, e.first_name ,d.dept_no, d.dept_name, de.from_date, de.to_date
-- from employees as e
-- inner join dept_emp as de on e.emp_no = de.emp_no
-- inner join departments as d on d.dept_no = de.dept_no
-- where d.dept_name = 'Development';


-- With Group by: (My Answer) (Correct)


-- SELECT e.emp_no, e.first_name, de.from_date, de.to_date
-- FROM employees AS e
-- INNER JOIN dept_emp AS de ON e.emp_no = de.emp_no
-- INNER JOIN departments AS d ON d.dept_no = de.dept_no
-- WHERE d.dept_name = 'Development'
-- GROUP BY e.emp_no, de.from_date, de.to_date
-- ORDER BY de.from_date, de.to_date;


-- Fix: BELOW

-- select e.emp_no, de.from_date, de.to_date
-- from employees as e
-- join dept_emp as de using(emp_no)
-- where de.dept_no = 'd005';

----------------------------------------------------------------------------

-- With Order By:

-- SELECT e.emp_no, de.from_date, de.to_date
-- FROM employees AS e
-- JOIN dept_emp AS de USING(emp_no)
-- WHERE de.dept_no = 'd005'
-- order by de.from_date, de.to_date;

----------------------------------------------------------------------------


-- With Group By;

-- SELECT e.emp_no, de.from_date, de.to_date
-- FROM employees AS e
-- JOIN dept_emp AS de USING(emp_no)
-- WHERE de.dept_no = 'd005'
-- GROUP BY e.emp_no, de.from_date, de.to_date;

----------------------------------------------------------------------------

-- Final FIX: (Best Answer)
-- With Group By and Order by:

SELECT e.emp_no, de.from_date, de.to_date
FROM employees AS e
JOIN dept_emp AS de USING(emp_no)
WHERE de.dept_no = 'd005'
GROUP BY e.emp_no, de.from_date, de.to_date
ORDER BY de.from_date, de.to_date;

