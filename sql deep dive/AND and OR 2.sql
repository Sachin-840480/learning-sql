--AND and OR Operations for Filtering.

--  -- Adding just an OR
-- SELECT first_name, last_name, gender, hire_date FROM employees
-- WHERE first_name = 'Georgi' AND last_name = 'Facello' AND hire_date = '1986-06-26' or first_name = 'Bezalel';


--  -- Adding last_name
-- SELECT first_name, last_name, gender, hire_date FROM employees
-- WHERE first_name = 'Georgi' AND last_name = 'Facello' AND hire_date = '1986-06-26' or first_name = 'Bezalel' and last_name = 'Simmel';


--  -- Adding OR in front
-- SELECT first_name, last_name, gender, hire_date FROM employees
-- WHERE first_name = 'Georgi' 
-- OR first_name = 'Bezalel' AND last_name = 'Facello' AND hire_date = '1986-06-26' and last_name = 'Simmel';
-- 
-- It gives us the names of all the people with first name = 'Georgi' as no other name as none other people have first name = 'Bezalel' and last name = 'Facello'.


--  -- Showing how the AND/OR Blocks are formed using parenthesis "()".
-- SELECT first_name, last_name, gender, hire_date FROM employees
-- WHERE first_name = 'Georgi' AND last_name = 'Facello' AND hire_date = '1986-06-26'
-- OR first_name = 'Bezalel' and last_name = 'Simmel';
-- 
-- same thing as this (for better understanding)
-- 
-- SELECT first_name, last_name, gender, hire_date FROM employees
-- WHERE (first_name = 'Georgi' AND last_name = 'Facello' AND hire_date = '1986-06-26')
-- OR (first_name = 'Bezalel' and last_name = 'Simmel');
-- */


--  -- Basic running nothing to see.
-- SELECT first_name, last_name, gender, hire_date FROM employees
-- WHERE last_name = 'Facello' 
-- OR last_name = 'Simmel';

