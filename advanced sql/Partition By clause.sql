-- Partition By Clause:


-- Getting the 'avgerage salary' of the entire table 'along each row'.

-- SELECT *, 
-- avg(salary) OVER () 
-- FROM salaries;

-- Getting the 'avg salary' of the departments.

-- SELECT *, 
-- avg(salary) OVER () 
-- FROM salaries
-- join dept_emp using(emp_no);

-- Getting the same as above with department names as well.

-- SELECT *,
-- d.dept_name,
-- avg(salary) OVER () 
-- FROM salaries
-- JOIN dept_emp as de USING(emp_no)
-- join departments as d using(dept_no);

----------------------------------------------------------------------------

-- Now add partitions to the data.

-- Seeing the average salary for each department for each employee.

-- SELECT *,
-- d.dept_name,
-- avg(salary) OVER (
--     PARTITION by d.dept_name
-- ) 
-- FROM salaries
-- JOIN dept_emp AS de USING(emp_no)
-- JOIN departments AS d USING(dept_no);


-- Seeing the average salary for each department for each employee.

SELECT *,
avg(salary) OVER (
    PARTITION BY d.dept_name
) 
FROM salaries
JOIN dept_emp USING(emp_no)
JOIN departments AS d USING(dept_no);

----------------------------------------------------------------------------

-- To better get the idea what happened here, 'USE this Code' to get "The Whole Picture":

-- SELECT *,
-- avg(salary) OVER (
--     PARTITION BY d.dept_name
-- ) 
-- FROM salaries
-- JOIN dept_emp USING(emp_no)
-- JOIN departments AS d USING(dept_no)
-- order by random()
-- limit 100;