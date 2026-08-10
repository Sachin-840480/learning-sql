-- Sub Queries:

-- Types of Sub Queries:

-- 1. Single Row Sub-Queries.
-- 2. Multiple Row Sub-Queries.
-- 3. Multiple Columns Sub-Queries.
-- 4. Correlated Sub-Queries.
-- 5. Nested Sub-Queries.

----------------------------------------------------------------------------

-- 1. Single Row.

-- Database: Employees
-- Table: Salaries

-- In the "Where" Clause.

-- select emp_no, salary from salaries
-- where salary = (
--     select max(salary) from salaries);

--------------------------------------

-- In the "Select" Clause.
-- It is Operating, just like a Window Function.

-- SELECT emp_no, salary, (
--     SELECT max(salary) FROM salaries) as "Average Salary"
-- FROM salaries;

----------------------------------------------------------------------------

-- 2. Multiple Rows.

-- Database: Store
-- Table: Products

-- select title, price, category
-- from products
-- where category in (
--     select category from categories
--     where categoryname in ('Comedy', 'Family', 'Classics')
-- );


-- Sub Query Result:

-- select category from categories
-- where categoryname in ('Comedy', 'Family', 'Classics');

----------------------------------------------------------------------------

-- 3. Multiple Columns.

-- Database: Employees

-- select emp_no, salary, dea.avg as "Department Average Salary"
-- from salaries as s
-- join dept_emp as de using(emp_no)
-- join(
--     select dept_no, avg(salary) from salaries as s2
--     join dept_emp as de2 using(emp_no)
--     group by dept_no
-- )as dea using (dept_no)
-- where salary > dea.avg;


-- Sub Query Result:

-- select dept_no, avg(salary) from salaries as s2
-- join dept_emp as de2 using(emp_no)
-- group by dept_no;

----------------------------------------------------------------------------

-- 4. Correlated.

-- Database: Employees

-- select emp_no, salary, from_date from salaries as s
-- where from_date = (
--     select max(s2.from_date) as max from salaries as s2
--     where s2.emp_no = s.emp_no
-- )order by emp_no;


-- Sub Query Result:

-- SELECT max(s2.from_date) AS max FROM salaries AS s2
-- WHERE s2.emp_no = 10001;

----------------------------------------------------------------------------

-- 5. Nested.

-- Database: Store

SELECT orderlineid, prod_id, quantity
FROM orderlines
JOIN(
    SELECT prod_id
    FROM products
    WHERE category IN (
        SELECT category FROM categories
            WHERE categoryname IN ('Comedy', 'Family', 'Classics')
    )
)
AS limited USING (prod_id);