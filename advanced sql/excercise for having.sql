-- Having clause Examples:

-- Database: Employees

-- 1. Show me all the employees, hired after 1991, that have had more than 2 titles
-- 2. Show me all the employees that have had more than 15 salary changes that work in the department development
-- 3. Show me all the employees that have worked for multiple departments

----------------------------------------------------------------------------

-- Question 1:
 
-- select e.emp_no, count(t.title) as "No of Titles"
-- from employees as e
-- inner join titles as t using(emp_no)
-- where extract(year from e.hire_date) > 1991
-- group by e.emp_no
-- having count(t.title) > 2
-- order by e.emp_no;

----------------------------------------------------------------------------

-- Question 2:

-- select e.emp_no, count(s.salary) as "No of Salary Changes"
-- from employees as e
-- inner join salaries as s using(emp_no)
-- inner join dept_emp as de using(emp_no)
-- where de.dept_no = 'd005'
-- group by e.emp_no
-- having count(s.salary) > 15
-- order by e.emp_no;

-- Better Version with 4 tables, if we want the department name as well.

-- SELECT e.emp_no, d.dept_name ,count(s.salary) AS "No of Salary Changes"
-- FROM employees AS e
-- INNER JOIN salaries AS s USING(emp_no)
-- INNER JOIN dept_emp AS de USING(emp_no)
-- inner join departments as d using(dept_no)
-- WHERE d.dept_name = 'Development'
-- GROUP BY e.emp_no, d.dept_name
-- HAVING count(s.salary) > 15
-- order by e.emp_no;

----------------------------------------------------------------------------

-- Question 3:

SELECT e.emp_no, count(de.dept_no) AS "Worked for # departments"
FROM employees AS e
INNER JOIN dept_emp AS de USING(emp_no)
GROUP BY e.emp_no
HAVING count(de.dept_no) > 1
ORDER BY e.emp_no;

----------------------------------------------------------------------------

-- If I want to display multiple values (e.g., all department names) in one grouped row, I need an aggregate that combines values (such as STRING_AGG()). Until then, I cannot correctly show all department names without changing the grouping.

----------------------------------------------------------------------------

-- If you want the department names too...

-- You can't simply add dept_name to the SELECT list because an employee may have multiple department names.

-- Instead, you need to aggregate them, for example:

-- SELECT e.emp_no,
--        COUNT(*) AS departments_worked,
--        STRING_AGG(d.dept_name, ', ' ORDER BY d.dept_name) AS departments
-- FROM employees e
-- JOIN dept_emp de USING (emp_no)
-- JOIN departments d USING (dept_no)
-- GROUP BY e.emp_no
-- HAVING COUNT(*) > 1
-- ORDER BY e.emp_no;