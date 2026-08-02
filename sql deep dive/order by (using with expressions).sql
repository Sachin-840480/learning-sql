-- Order by Keyword:-

-- Using Expression with Order By.

SELECT first_name, last_name FROM employees
ORDER BY length(first_name);

SELECT first_name, last_name FROM employees
ORDER BY length(first_name) DESC;