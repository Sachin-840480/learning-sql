-- select statement to filter Mayumi Schueller
SELECT first_name, last_name FROM employees
/*
filter on first name and last name to limit the amount of data returned
and focus the filtering on a single person.
*/
WHERE first_name = 'Mayumi' AND last_name = 'Schueller';  --filter here on Mayumi Schueller
