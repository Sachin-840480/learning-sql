-- Join Excercise:

-- DB: Store
-- Table: orders

-- 1. Get all orders from customers who live in Ohio (OH), New York (NY) or Oregon (OR) state
-- ordered by orderid


-- DB: Store
-- Table: products

-- 2. Show me the inventory for each product


-- DB: Employees
-- Table: employees

-- 3. Show me for each employee which department they work in

----------------------------------------------------------------------------

-- Quesiton 1:

-- select o.orderid, c.customerid, c.firstname, c.lastname
-- from orders as o
-- inner join customers as c
-- on c.customerid = o.customerid
-- and c.state in ('OH', 'NY', 'OR')
-- order by o.orderid;

-- ZTM Answer:

-- SELECT c.firstname, c.lastname, o.orderid FROM orders AS o
-- INNER JOIN customers AS c ON o.customerid = c.customerid
-- WHERE c.state IN ('NY', 'OH', 'OR')
-- ORDER BY o.orderid;

----------------------------------------------------------------------------

-- Question 2:

-- select p.prod_id, i.*
-- from products as p
-- inner join inventory as i
-- on i.prod_id = p.prod_id;

-- ZTM Answer:

-- SELECT p.prod_id, i.quan_in_stock
-- FROM products as p
-- INNER JOIN inventory AS i oN p.prod_id = i.prod_id 

----------------------------------------------------------------------------

-- Question 3:

-- select de.emp_no, de.dept_no, d.dept_name
-- from dept_emp as de
-- inner join departments as d
-- on d.dept_no = de.dept_no;

-- Better Verison:

SELECT de.emp_no, 
concat(e.first_name, ' ', e.last_name) AS "Name", 
de.dept_no, d.dept_name
FROM dept_emp AS de
INNER JOIN employees AS e ON de.emp_no = e.emp_no
INNER JOIN departments AS d ON d.dept_no = de.dept_no;


SELECT e.first_name, dp.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de ON de.emp_no = e.emp_no
INNER JOIN departments AS dp ON dp.dept_no = de.dept_no;

