-- Order by Keyword:-

-- Using Expression with Order By.

-- select first_name, last_name from employees
-- order by length(first_name);

SELECT first_name, last_name FROM employees
ORDER BY length(first_name) DESC;