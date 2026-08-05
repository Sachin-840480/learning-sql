-- Having clause.

-- Base Example.

-- select d.dept_name, count(e.emp_no) as "# of employees"
-- from employees as e
-- inner join dept_emp as de on de.emp_no = e.emp_no
-- inner join departments as d on de.dept_no = d.dept_no
-- group by d.dept_name;

----------------------------------------------------------------------------

-- ERROR:  aggregate functions are not allowed in WHERE
-- Checking no of employees using 'WHERE' clause.

-- SELECT d.dept_name, count(e.emp_no) AS "# of employees"
-- FROM employees AS e
-- INNER JOIN dept_emp AS de ON de.emp_no = e.emp_no
-- INNER JOIN departments AS d ON de.dept_no = d.dept_no
-- where count(e.emp_no) > 25000       -- Cannot perform aggerate functions in where clause.
-- GROUP BY d.dept_name;

----------------------------------------------------------------------------

-- Employees are only females.

-- SELECT d.dept_name, count(e.emp_no) AS "# of employees"
-- FROM employees AS e
-- INNER JOIN dept_emp AS de ON de.emp_no = e.emp_no
-- INNER JOIN departments AS d ON de.dept_no = d.dept_no
-- where e.gender = 'F'
-- GROUP BY d.dept_name;

----------------------------------------------------------------------------

-- Having Certain number of employees.

-- SELECT d.dept_name, count(e.emp_no) AS "# of employees"
-- FROM employees AS e
-- INNER JOIN dept_emp AS de ON de.emp_no = e.emp_no
-- INNER JOIN departments AS d ON de.dept_no = d.dept_no
-- GROUP BY d.dept_name
-- having count(e.emp_no) > 20000;

----------------------------------------------------------------------------

-- ERROR:  column "e.gender" must appear in the GROUP BY clause or be used in an aggregate function
-- Using Having to filter out females.

-- SELECT d.dept_name, count(e.emp_no) AS "# of employees"
-- FROM employees AS e
-- INNER JOIN dept_emp AS de ON de.emp_no = e.emp_no
-- INNER JOIN departments AS d ON de.dept_no = d.dept_no
-- GROUP BY d.dept_name
-- HAVING count(e.emp_no) > 20000 and e.gender = 'F';      -- Cannot interchange 'Where' & 'Having'.


-- FIX: We used it inside the 'groupby' as well.

SELECT d.dept_name, count(e.emp_no) AS "# of employees"
FROM employees AS e
INNER JOIN dept_emp AS de ON de.emp_no = e.emp_no
INNER JOIN departments AS d ON de.dept_no = d.dept_no
GROUP BY d.dept_name, e.gender
HAVING count(e.emp_no) > 20000 AND e.gender = 'F';      

----------------------------------------------------------------------------

-- Only Female employees and certain number of people.

SELECT d.dept_name, count(e.emp_no) AS "# of employees"
FROM employees AS e
INNER JOIN dept_emp AS de ON de.emp_no = e.emp_no
INNER JOIN departments AS d ON de.dept_no = d.dept_no
WHERE e.gender = 'F'
GROUP BY d.dept_name
HAVING count(e.emp_no) > 20000;

