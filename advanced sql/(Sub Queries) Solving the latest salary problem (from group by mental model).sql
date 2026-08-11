-- Sub Queries.

-- Solving the current salary problem.

-- Question: Getting the recent date a employee got a salary bump.

-- We tried to solve a problem in the "group by mental model.sql" and "Solving the current salary problem (from Group by mental model)"  (last example).
-- It Worked, but there are better ways to solve it.

-- It Worked Perfectly in the "Views" ones.

----------------------------------------------------------------------------
-- 1. Getting the recent date a employee got a salary bump.
----------------------------------------------------------------------------

-- explain analyze
SELECT emp_no, salary, from_date FROM salaries AS s
WHERE from_date = (
    SELECT max(from_date) 
    FROM salaries AS s2
    WHERE s2.emp_no = s.emp_no
)
ORDER BY emp_no;

----------------------------------------------------------------------------

-- Solving the Same using "View".

-- explain analyze
SELECT * FROM salaries
JOIN last_salary_change USING(emp_no)
WHERE from_date = max       -- max is column name XD.
ORDER BY emp_no;

----------------------------------------------------------------------------

-- Solving the Same using "Window Functions".

-- explain analyze
SELECT emp_no, salary, from_date
FROM (
    SELECT *,
           ROW_NUMBER() OVER (
               PARTITION BY emp_no
               ORDER BY from_date DESC
           ) AS rn
    FROM salaries
) s
WHERE rn = 1
ORDER BY emp_no;

----------------------------------------------------------------------------

-- Using a Join with the Sub Query.

SELECT emp_no, salary, from_date
FROM salaries AS s
JOIN (
    SELECT emp_no, max(from_date) 
    FROM salaries AS s2
    GROUP BY emp_no
) AS ls USING(emp_no)
WHERE ls.max = s.from_date
ORDER BY emp_no;

-- Testing the Sub Query.

-- select emp_no, max(from_date) 
-- FROM salaries AS s2
-- GROUP BY emp_no;