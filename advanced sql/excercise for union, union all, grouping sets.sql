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

-- ZTM Answer:

SELECT GROUPING(e.dept_no), e.dept_no, COUNT(e.emp_no)
FROM public.dept_emp AS e
GROUP BY
	GROUPING SETS (
		(e.dept_no),
     		()
	)
ORDER BY e.dept_no;

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

-- ZTM Answer:

SELECT GROUPING(de.dept_no), de.dept_no, AVG(e.salary)
FROM public.salaries AS e
JOIN public.dept_emp AS de USING (emp_no)
GROUP BY
	GROUPING SETS (
		(de.dept_no),
     	()
	)
ORDER BY de.dept_no;