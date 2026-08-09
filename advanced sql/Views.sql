-- Views:

-- Types of Views:

-- 1. System Defined Views.
-- 2. User Defined Views.

--------------------------------------

-- Types of System Defined Views:

-- 1. Information SCHEMA Views.
-- 2. CATALOG Views.
-- 3. Dynamic Management Views.

--------------------------------------

-- Types of User Defined Views:

-- 1. MATERIALIZED VIEWS (Indexed Views).
-- 2. Non-MATERIALIZED Views (Regular Views).

--------------------------------------

-- Types of Non-Materialized Views:

-- 1. SIMPLE Views.
-- 2. Complex Views.
-- 3. INLINE VIEWS (Sub-Queries).

--------------------------------------

-- Complete Map of Views:

-- 1. SYSTEM Defined VIEWS:

--     1. Information SCHEMA Views.
--     2. CATALOG Views.
--     3. Dynamic Management Views.

-- 2. USER Defined VIEWS:

--     1. MATERIALIZED VIEWS (Indexed VIEWS).

--     2. Non-MATERIALIZED Views.

--         1. SIMPLE Views.
--         2. Complex Views.
--         3. INLINE VIEWS (Sub-Queries).

----------------------------------------------------------------------------

-- Solving the current salary problem.

-- Question: Getting the recent date a employee got a salary bump.

-- We tried to solve a problem in the "group by mental model.sql" and "Solving the current salary problem (from Group by mental model)" (last example).
-- It Worked, but there are better ways to solve it.

----------------------------------------------------------------------------

-- Creating a View Named "last_salary_change"

-- CREATE VIEW last_salary_change as 
-- select emp_no, max(from_date)
-- from salaries
-- group by emp_no
-- order by emp_no;

----------------------------------------------------------------------------

-- Perfroming Operations on the created View.

-- select * from last_salary_change;

SELECT * FROM salaries
JOIN last_salary_change USING(emp_no)
WHERE from_date = max       -- max is column name XD.
ORDER BY emp_no;

----------------------------------------------------------------------------

-- Joining Other Tables in the View to get a Result.

-- Both give the same results.

SELECT s.emp_no, d.dept_name, s.from_date, s.salary 
FROM last_salary_change
JOIN salaries AS s USING(emp_no)
JOIN dept_emp AS de USING(emp_no)
JOIN departments AS d USING(dept_no)
WHERE max = s.from_date     -- max is column name XD.
ORDER BY emp_no;

