-- Group by Mental Model.


-- Getting the recent date a employee got a salary bump.

-- select emp_no, salary, from_date
-- from salaries;

-- SELECT emp_no , salary FROM salaries
-- GROUP BY emp_no, salary;

-- SELECT emp_no , salary, from_date FROM salaries
-- GROUP BY emp_no, salary, from_date;

-- SELECT emp_no , salary, max(from_date) FROM salaries
-- GROUP BY emp_no, salary;

-- SELECT emp_no, max(from_date) FROM salaries
-- GROUP BY emp_no, salary;

-- select emp_no, max(from_date) from salaries
-- group by emp_no;

-- SELECT emp_no, from_date FROM salaries
-- GROUP BY emp_no, from_date;

-- SELECT emp_no, max(from_date) FROM salaries
-- GROUP BY emp_no, from_date;


SELECT emp_no, max(salary) FROM salaries
GROUP BY emp_no;

SELECT emp_no, max(from_date), max(salary) FROM salaries
GROUP BY emp_no;


-- Doesn't work for now, but will later in the course.

-- SELECT emp_no, max(from_date), max(salary) FROM salaries
-- GROUP BY emp_no
-- having max(from_date);

----------------------------------------------------------------------------
-- UPDATE:- See the "Views.SQL" to see the working of the above Query.
-- UPDATE 2: See the "(Sub Queries) Solving the latest salary problem (from group by mental model)" to see another working of the above Query.

-- Basic Version: See the "Window Functions" for a minor try.
-- Earlier Versions: Solving the current salary problem (from Group by mental model).sql
----------------------------------------------------------------------------