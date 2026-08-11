-- Solving the current salary problem.

-- Question: Getting the recent date a employee got a salary bump.

-- We tried to solve a problem in the "group by mental model.sql" (last example).
-- But it was still unfinished and didn't produced an output.

----------------------------------------------------------------------------

-- The Base Query doesn't work.

-- select emp_no, max(salary) from salaries
-- group by emp_no;


-- Doesn't work for now, but we found a solution for it.

-- SELECT emp_no, max(from_date), max(salary) FROM salaries
-- GROUP BY emp_no
-- having max(from_date);

----------------------------------------------------------------------------

-- It also doesn't work.

-- select e.emp_no, e.first_name, d.dept_name, 
--     max(s.salary) from salaries as s
-- join employees as e using(emp_no)
-- join dept_emp as de using(emp_no)
-- join departments as d using(dept_no)
-- group by e.emp_no, e.first_name, d.dept_name
-- order by e.emp_no;

-- It also doesn't work.

-- SELECT e.emp_no, e.first_name, d.dept_name, 
--     max(s.from_date) FROM salaries AS s
-- JOIN employees AS e USING(emp_no)
-- JOIN dept_emp AS de USING(emp_no)
-- JOIN departments AS d USING(dept_no)
-- GROUP BY e.emp_no, e.first_name, d.dept_name
-- ORDER BY e.emp_no;
-- 
----------------------------------------------------------------------------

-- FIX: We use the Window Functions to solve this Query. (BOTH: ZTM Answer) 

-- My Try (didn't work.)

-- select emp_no, from_date, max(salary) over(
--     PARTITION by emp_no
--     order by from_date
--     range between unbounded PRECEDING and unbounded FOLLOWING
-- )
-- from salaries;

-------------------------------------

-- ZTM Answer (Shorter Version):

SELECT DISTINCT emp_no,
    LAST_VALUE(salary) OVER (
        PARTITION BY emp_no
        ORDER BY from_date
        RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING 
    )
FROM salaries;

-------------------------------------

-- ZTM Answer: Also seeing the From_date.

SELECT DISTINCT emp_no,
    LAST_VALUE(from_date) OVER (
        PARTITION BY emp_no
        ORDER BY from_date
        RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING 
    ),
    LAST_VALUE(salary) OVER (
        PARTITION BY emp_no
        ORDER BY from_date
        RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING 
    )
FROM salaries;

-------------------------------------

-- ZTM Answer if we remove the Frame Clause (DOES'nt Give the Correct Output.)

-- SELECT DISTINCT emp_no,
--     LAST_VALUE(from_date) OVER (
--         PARTITION BY emp_no
--         ORDER BY from_date
--     ),
--     LAST_VALUE(salary) OVER (
--         PARTITION BY emp_no
--         ORDER BY from_date
--     )
-- FROM salaries;

-------------------------------------

-- ZTM Answer: (Uselessly Too Large)

-- SELECT DISTINCT e.emp_no,
--     e.first_name,
--     d.dept_name,
--     LAST_VALUE(s.salary) OVER (
--         PARTITION BY e.emp_no
--         ORDER BY s.from_date
--         RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING 
--     ) AS "Current Salary"
-- FROM salaries AS s
-- 
-- JOIN employees AS e USING(emp_no)
-- JOIN dept_emp AS de USING(emp_no)
-- JOIN departments AS d USING(dept_no)
-- 
-- ORDER BY e.emp_no;