-- Union, Union All, Grouping sets excercise:

-- DATABASE: Employees
-- TABLE: Employees

-- 1. Calculate the total amount of employees per department and the total using grouping sets.
-- 2. Calculate the total average salary per department and the total using grouping sets.

----------------------------------------------------------------------------

-- Question 1:

SELECT dept_no, count(emp_no)
FROM dept_emp
GROUP BY
GROUPING SETS(
    (),
    (dept_no)
)
ORDER BY dept_no DESC;

----------------------------------------------------------------------------

-- Question 2:``

SELECT de.dept_no, avg(s.salary)
FROM dept_emp AS de
INNER JOIN salaries AS s USING(emp_no)
GROUP BY
GROUPING SETS(
    (),
    (dept_no)
)
ORDER BY dept_no DESC;