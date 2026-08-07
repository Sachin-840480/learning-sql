-- Order By in Window Function:


-- Base Queries.
-- Both Queries are trying to get the number of salaries they got in their lifetime.

-- select emp_no, count(emp_no)
-- from salaries
-- group by emp_no
-- order by emp_no;
-- 
-- 
-- SELECT emp_no,
--        COUNT(salary) OVER(PARTITION BY emp_no)
-- FROM salaries;

----------------------------------------------------------------------------

-- But the "order by" in the 'Window_Function' behaves differently.

SELECT emp_no,
    count(salary) OVER()
FROM salaries;


-- It gives the 'Cummulative Sum or the Running Totals of the rows we have crossed.

SELECT emp_no,
    count(salary) OVER(
    ORDER BY emp_no
)
FROM salaries;

----------------------------------------------------------------------------

-- Same Query with more information.

SELECT emp_no,
salary,
count(salary) OVER(
    ORDER BY emp_no
    )
FROM salaries;

-- The Order by here gives cummulative sum (running total) for the number of rows present in the data. 
-- ORDER BY in the window function sorts the rows within the window frame.