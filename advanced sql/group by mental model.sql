-- Group by Mental Model.


-- Getting the recent date a employee got a salary bump.

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


SELECT emp_no, max(salary) FROM salaries
GROUP BY emp_no;

SELECT emp_no, max(from_date), max(salary) FROM salaries
GROUP BY emp_no;


-- Doesn't work for now, but will later in the course.

-- SELECT emp_no, max(from_date), max(salary) FROM salaries
-- GROUP BY emp_no
-- having max(from_date);
