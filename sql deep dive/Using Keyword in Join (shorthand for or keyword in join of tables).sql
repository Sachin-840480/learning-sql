-- Using Keyword

-- It is a Shorthand for 'ON' keyword.

----------------------------------------------------------------------------

-- SELECT e.emp_no, e.first_name, de.dept_no
-- FROM employees AS e
-- INNER JOIN dept_emp AS de on de.emp_no = e.emp_no;

-- Same as This:-

-- select e.emp_no, e.first_name, de.dept_no
-- from employees as e
-- inner join dept_emp as de using(emp_no);

----------------------------------------------------------------------------

-- If we want to also have dept_names in the table.

SELECT e.emp_no, e.first_name, de.dept_no, d.dept_name 
FROM employees AS e
INNER JOIN dept_emp AS de USING(emp_no)
INNER JOIN departments AS d USING(dept_no);

