-- Inner Join.

----------------------------------------------------------------------------

-- Our Basic Inner join (wihtout join keyword)

-- SELECT a.emp_no, b.salary FROM employees AS a, salaries AS b
-- WHERE a.emp_no = b.emp_no
-- ORDER BY a.emp_no;

----------------------------------------------------------------------------

-- select a.emp_no,
-- concat(a.first_name, a.last_name) as "name",
-- b.salary
-- from employees as a inner join salaries as b on a.emp_no = b.emp_no;


-- SELECT a.emp_no,
-- concat(a.first_name, a.last_name) AS "name",
-- b.salary
-- FROM employees AS a INNER JOIN salaries AS b ON b.emp_no = a.emp_no;

----------------------------------------------------------------------------

-- Always try to do 'Order By' because the results are always unsorted.

SELECT a.emp_no,
concat(a.first_name, a.last_name) AS "name",
b.salary
FROM employees AS a INNER JOIN salaries AS b ON a.emp_no = b.emp_no
ORDER BY a.emp_no ASC;