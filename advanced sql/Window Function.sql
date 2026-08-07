-- Window Function:

-- We tried to solve a problem in the "group by mental model.sql" (last example).
-- But it was still unfinished and didn't produced an output.

-- select emp_no, max(salary) from salaries
-- group by emp_no;

----------------------------------------------------------------------------

-- Working version for getting the max salary and max date.

SELECT *, 
max(salary) OVER () 
FROM salaries;


-- Even after applying a limit we still get the max data, because the window function i.e "max()" here is applied over the window of data, i.e the 'whole table' here.

SELECT *, 
max(salary) OVER () 
FROM salaries
LIMIT 100;


-- If we try to restrict the window function with a where clause, it still finds and gives us a output based on the set filters.

SELECT *, 
max(salary) OVER () 
FROM salaries
WHERE salary < 70000;

-- the window of data refers to data that the Querey calculated out, not what limit cuts off.