-- Outer Joins

-- Types of Outer Joins:-
-- 1. Left Join / Left Outer Join
-- 2. Right Join / Right Outer Join

----------------------------------------------------------------------------

-- 1. Left Join

----------------------------------------------------------------------------

-- Retrieving all values from the database. (Combined manager and non manager.)

-- select emp.emp_no, dep.emp_no
-- from employees as emp
-- left join dept_manager as dep 
-- on emp.emp_no = dep.emp_no;

----------------------------------------------------------------------------

-- Q1. Only Those employees, 'who are NOT managers'.

-- select * 
-- from employees as emp
-- left join dept_manager as dep on emp.emp_no = dep.emp_no
-- where dep.emp_no IS null;

-- select count(emp.emp_no)
-- from employees as emp
-- left join dept_manager as dep on emp.emp_no = dep.emp_no
-- where dep.emp_no IS null;

----------------------------------------------------------------------------

-- 'Employees who are Managers'.

-- SELECT * 
-- FROM employees AS emp
-- LEFT JOIN dept_manager AS dep ON emp.emp_no = dep.emp_no
-- WHERE dep.emp_no IS not NULL;

----------------------------------------------------------------------------

-- Q2. To know every salary rais and also know which ones where a promotion.

-- Works Perfectly (Final Version below)

-- select a.emp_no, b.salary, c.title
-- from employees as a
-- inner join salaries as b on b.emp_no = a.emp_no
-- left join titles as c on c.emp_no = a.emp_no
-- and (c.from_date = b.from_date or c.from_date = b.from_date + interval '2 days')
-- order by a.emp_no;


-- Final (much prettier)

-- SELECT a.emp_no, b.salary, coalesce(c.title, 'No Title Change')
-- FROM employees AS a
-- INNER JOIN salaries AS b ON b.emp_no = a.emp_no
-- LEFT JOIN titles AS c ON c.emp_no = a.emp_no
-- AND (c.from_date = b.from_date OR c.from_date = b.from_date + INTERVAL '2 days')
-- ORDER BY a.emp_no;


-- EXCESS VERSION:

SELECT a.emp_no,
    CONCAT(a.first_name, a.last_name) AS "name",
    b.salary,
    COALESCE(c.title, 'No title change'),
    COALESCE(c.from_date::TEXT, '-') AS "title taken on"
FROM employees AS a
INNER JOIN salaries AS b ON a.emp_no = b.emp_no
LEFT JOIN titles AS c
ON c.emp_no = a.emp_no AND (
    c.from_date = (b.from_date + INTERVAL '2 days') OR
    c.from_date = b.from_date
)
ORDER BY a.emp_no;