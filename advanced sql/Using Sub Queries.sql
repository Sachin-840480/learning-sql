-- Using Subqueries:

-- 1. Show all employees older than the average age.

-- select 
--     emp_no, 
--     concat(first_name, ' ',last_name) as "name", 
--     birth_date,
--     age(birth_date),
--     (select avg(age(birth_date)) from employees)
-- from employees
-- where age(birth_date) > (
--     select avg(age(birth_date)) from employees
-- );

-- If we want for a particular Gender.
-- ) and gender = 'M';

----------------------------------------------------------------------------

-- 2. Show the title by salary for each employee.

--------------------------------------

-- base Query from "Inner Join (Multiple Tables)"

-- SELECT a.emp_no, b.salary, b.from_date, c.title
-- FROM employees AS a 
-- INNER JOIN salaries AS b ON a.emp_no = b.emp_no
-- INNER JOIN titles AS c ON c.emp_no = a.emp_no AND (c.from_date = b.from_date
--     OR (b.from_date + INTERVAL '2 days') = c.from_date
-- )
-- ORDER BY a.emp_no ASC, b.from_date ASC;

--------------------------------------

-- Main Query:

SELECT emp_no, salary, from_date,
    (SELECT title FROM titles AS t 
        WHERE s.emp_no = t.emp_no       -- Referencing Outside -> Coreelated SubQuery.
            AND (t.from_date = s.from_date OR t.from_date = s.from_date + INTERVAL '2 Days')
)
FROM salaries AS s
ORDER BY emp_no;

--------------------------------------

-- Other Type With Join: Both Show Title Changes.

-- select s.emp_no, s.salary, s.from_date, t.title
-- from salaries as s
-- left outer join titles as t on t.emp_no = s.emp_no
--     AND (s.from_date = t.from_date OR t.from_date = s.from_date + INTERVAL '2 Days')
-- order by s.emp_no;

--------------------------------------

-- With Normal Join:

-- SELECT s.emp_no, s.salary, s.from_date, t.title
-- FROM salaries AS s
-- JOIN titles AS t ON t.emp_no = s.emp_no
--     AND (s.from_date = t.from_date OR t.from_date = s.from_date + INTERVAL '2 Days')
-- ORDER BY emp_no;