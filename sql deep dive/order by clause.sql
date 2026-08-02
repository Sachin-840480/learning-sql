-- Order by Keyword:-

-- DB: store

-- Sorting in Ascending order:-

-- select * from customers
-- order by name asc;

-- Sorting in Descending order:-

-- select * from customers
-- order by name desc;

----------------------------------------------------------------------------

-- DB: employees

-- Using multiples columns in orderby:-

-- select first_name, last_name from employees      -- Incorrect. (works but fix is below)
-- order by first_name, last_name desc;

-- NOTE:- It only applies the identifier i.e 'ASC'/'DESC' to the column specified beside it (left side). 

-- For Applying order to multiple columns.

-- Fix:
-- select first_name, last_name from employees
-- order by first_name desc, last_name desc;

----------------------------------------------------------------------------

-- Using Expression with Order By

SELECT first_name, last_name FROM employees
ORDER BY length(first_name) DESC;