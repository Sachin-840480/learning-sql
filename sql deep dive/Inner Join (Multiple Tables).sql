-- Inner Join (Multiple Tables).

----------------------------------------------------------------------------

-- SELECT a.emp_no,
-- concat(a.first_name, a.last_name) AS "name",
-- b.salary, c.title, c.from_date as "Promoted On"
-- FROM employees AS a 
-- INNER JOIN salaries AS b ON a.emp_no = b.emp_no
-- inner join titles as c on c.emp_no = a.emp_no;

----------------------------------------------------------------------------

-- Too much data is recieved. (not correct data returned.)

-- SELECT a.emp_no, b.salary, b.from_date, c.title
-- FROM employees AS a 
-- INNER JOIN salaries AS b ON b.emp_no = a.emp_no
-- INNER JOIN titles AS c ON c.emp_no = a.emp_no
-- ORDER BY a.emp_no ASC, b.from_date ASC;

----------------------------------------------------------------------------

-- Little Better but Title Raises are not accounted for here.

-- SELECT a.emp_no, b.salary, b.from_date, c.title
-- FROM employees AS a 
-- INNER JOIN salaries AS b ON b.emp_no = a.emp_no
-- INNER JOIN titles AS c ON c.emp_no = a.emp_no and c.from_date = b.from_date
-- ORDER BY a.emp_no asc, b.from_date asc;

----------------------------------------------------------------------------

-- Raw but pefect Operation.
-- FINAL VERSION Below: 

-- SELECT a.emp_no, b.salary, b.from_date, c.title
-- FROM employees AS a 
-- INNER JOIN salaries AS b ON a.emp_no = b.emp_no
-- INNER JOIN titles AS c ON c.emp_no = a.emp_no
-- AND (b.from_date + INTERVAL '2 days') = c.from_date
-- ORDER BY a.emp_no asc, b.from_date asc;

----------------------------------------------------------------------------

-- 1. Find the salaries of the Employees, but only those who have a new title (i.e 'Promotion').

-- Hint: Title changes always follow '2 days' after the raise. Therefore, we can check for this in our query.

-- SELECT a.emp_no,
-- concat(a.first_name, a.last_name) AS "name",
-- b.salary, c.title, c.from_date AS "Promoted On"
-- FROM employees AS a 
-- INNER JOIN salaries AS b ON a.emp_no = b.emp_no
-- INNER JOIN titles AS c ON c.emp_no = a.emp_no
-- and c.from_date = (b.from_date + INTERVAL '2 days')
-- order by a.emp_no, c.from_date;

----------------------------------------------------------------------------

-- 2. Find the original salary and also know the salary at a promotion.

----------------------------------------------------------------------------

-- Doesn't work because, we are matching 'AND' for 2 different values on same records.

-- SELECT a.emp_no, b.salary, b.from_date, c.title
-- FROM employees AS a 
-- INNER JOIN salaries AS b ON a.emp_no = b.emp_no
-- INNER JOIN titles AS c 
--     ON c.emp_no = a.emp_no
--     and c.from_date = b.from_date
--     and (b.from_date + INTERVAL '2 days') = c.from_date
-- ORDER BY a.emp_no asc, b.from_date asc;

----------------------------------------------------------------------------

-- FIX: (Works perfectly) 

-- SELECT a.emp_no, b.salary, b.from_date, c.title
-- FROM employees AS a 
-- INNER JOIN salaries AS b ON a.emp_no = b.emp_no
-- INNER JOIN titles AS c 
--     ON c.emp_no = a.emp_no
--     and (
--         c.from_date = b.from_date
--         or (b.from_date + INTERVAL '2 days') = c.from_date
--     )
-- ORDER BY a.emp_no asc, b.from_date asc;

----------------------------------------------------------------------------

-- Final Best Version (Only Cosmetic Changes)
-- ZTM Version.

SELECT a.emp_no, 
concat (a.first_name, ' ', a.last_name) AS "Name",
b.salary, 
COALESCE(c.title, 'No title change'),
COALESCE(c.from_date :: TEXT, '-') AS "Title taken on"
FROM employees AS a 
INNER JOIN salaries AS b ON a.emp_no = b.emp_no
INNER JOIN titles AS c 
ON c.emp_no = a.emp_no AND (
        c.from_date = b.from_date OR 
        (b.from_date + INTERVAL '2 days') = c.from_date
)
ORDER BY a.emp_no ASC, b.from_date ASC;