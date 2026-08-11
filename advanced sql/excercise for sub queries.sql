-- Sub Queries Excercise:

-- TRY: TRY TO WRITE THESE AS JOINS FIRST 

-- DB: Store
-- Table: orders

-- 1. Get all orders from customers who live in Ohio (OH), New York (NY) or Oregon (OR) state
-- ordered by orderid


-- DB: Employees
-- Table: employees

-- 2. Filter employees who have emp_no 110183 as a manager

----------------------------------------------------------------------------

-- Question 1:

-- Using Joins.

-- select o.orderid, c.customerid, c.firstname, c.lastname, c.state
-- from customers as c
-- inner join orders as O using(customerid)
-- where c.state in ('OH', 'NY', 'OR')
-- order by orderid;

--------------------------------------

-- Using Sub Queries.

-- My Version:

-- SELECT o.orderid, c.firstname, c.lastname, c.customerid, c.state 
-- FROM orders AS o, (
--     SELECT customerid, state, firstname, lastname
--     FROM customers
-- ) AS c
-- WHERE  o.customerid = c.customerid 
-- AND c.state IN ('NY', 'OH', 'OR')
-- ORDER BY o.orderid;

----------------------------------------------------------------------------

-- Question 2:

-- Using Joins:

SELECT e.emp_no, first_name, last_name
FROM employees AS e
JOIN dept_emp AS de USING(emp_no)
JOIN dept_manager AS dm USING(dept_no)
WHERE dm.emp_no = 110183;

--------------------------------------

-- Using Sub Queries:

SELECT emp_no, first_name, last_name
FROM employees AS e
WHERE emp_no IN (
    SELECT emp_no 
    FROM dept_emp
    WHERE dept_no = (
        SELECT dept_no
        FROM dept_manager
        WHERE emp_no = 110183
    )
)
ORDER BY emp_no;