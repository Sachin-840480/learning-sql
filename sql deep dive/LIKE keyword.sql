-- Partial Lookups

-- Pattern Maatching

-- 'Like' Keyword

-- 'ILike' Keyword (Case Insensitive Matching)

-- Type-Casting

-- SYNTAX:-                 CAST(expression as datatype([lenght]))
--                      OR
-- Postgres Shorthand:-     expression :: datatype

----------------------------------------------------------------------------

-- It has 2 Wildcards:-

-- 1. '%' - Any number of characters
-- 2. '_' - 1 character (underscore)


----------------------------------------------------------------------------
-- 1. '%' - Any Numbers
----------------------------------------------------------------------------

-- Starting with 's'.

-- select * from employees
-- WHERE first_name like 'S%';    -- not {where first_name like 's%';} 

----------------------------------------------------------------------------
-- Causes problem with like 's%' because of case-sensitivity. Use 'ILIKE' keyword to not worry for case sensitivity.
----------------------------------------------------------------------------

-- Ending with 's'.

-- SELECT * FROM employees
-- WHERE first_name LIKE '%s';


-- 'S' in the middle with any number of character on both sides.

-- SELECT * FROM employees
-- WHERE first_name LIKE '%s%';


----------------------------------------------------------------------------
-- 2. Only 1 Character (Fixed Characters).
----------------------------------------------------------------------------

-- 'S' at the start with only 1 charcter next to it.

-- SELECT * FROM employees
-- WHERE first_name LIKE 'S_';     -- No result XD.
-- 

-- 'S' at the end with only 1 character next to it.

-- SELECT * FROM employees
-- WHERE first_name LIKE '_s';         -- NO result XD.
-- 

-- 'S' at the middle with 1 charcter on each side.

-- SELECT * FROM employees
-- WHERE first_name LIKE '__s_';


-- Fixed Number of Characters

-- SELECT * FROM employees
-- WHERE first_name LIKE 'G__';
-- 
-- SELECT * FROM employees
-- WHERE first_name LIKE 'S____';
-- 
-- SELECT * FROM employees
-- WHERE first_name LIKE '___s';
-- 
-- SELECT * FROM employees
-- WHERE first_name LIKE '____s____';


----------------------------------------------------------------------------
-- 3. Mix of both Wildcards.
----------------------------------------------------------------------------

-- SELECT * FROM employees
-- WHERE first_name LIKE '_s%';
-- 
-- SELECT * FROM employees
-- WHERE first_name LIKE '%s_';
-- 
-- SELECT * FROM employees
-- WHERE first_name LIKE 'S_m%';
-- 
-- SELECT * FROM employees
-- WHERE first_name LIKE '_s%a_';
-- 
-- SELECT * FROM employees
-- WHERE first_name LIKE 'S_%_';

-- SELECT * FROM employees
-- WHERE first_name LIKE 'S_%_%';


----------------------------------------------------------------------------

-- ZTM queries:-

-- select * from employees
-- where FIRST_name like 'G%';

-- SELECT * FROM employees
-- WHERE FIRST_name LIKE 'G%r';

-- SELECT * FROM employees
-- WHERE FIRST_name LIKE 'G%er';

-- SELECT * FROM employees
-- WHERE FIRST_name LIKE 'G%ger';