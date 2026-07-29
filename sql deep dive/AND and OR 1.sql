--AND and OR Operations for Filtering.

/*
SELECT first_name, last_name from employees
where first_name = 'Georgi' and last_name = 'Facello';
*/

/*
SELECT first_name, last_name, gender, hire_date from employees
where first_name = 'Georgi' and last_name = 'Facello';
*/

/*
SELECT first_name, last_name, gender, hire_date from employees
where first_name = 'Georgi' and last_name = 'Facello' and hire_date = '1986-06-26';
*/

SELECT first_name, last_name, gender, hire_date FROM employees
WHERE first_name = 'Georgi' AND last_name = 'Facello' AND hire_date = '1986-06-26' AND first_name = 'Bezalel';

-- no output for this as no data matches with the query.