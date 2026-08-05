-- Sorting with Grouped Data.

-- Order by dept_name.

SELECT d.dept_name, count(e.emp_no) AS "# of employees"
FROM employees AS e
INNER JOIN dept_emp AS de ON de.emp_no = e.emp_no
INNER JOIN departments AS d ON de.dept_no = d.dept_no
GROUP BY d.dept_name
ORDER BY d.dept_name;


-- Order by emp_no.

SELECT d.dept_name, count(e.emp_no) AS "# of employees"
FROM employees AS e
INNER JOIN dept_emp AS de ON de.emp_no = e.emp_no
INNER JOIN departments AS d ON de.dept_no = d.dept_no
GROUP BY d.dept_name
ORDER BY count(e.emp_no) DESC;