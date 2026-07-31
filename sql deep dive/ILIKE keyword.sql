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

-- ZTM queries:-

-- SELECT * FROM employees
-- WHERE FIRST_name LIKE 'g%';    -- NO result (as it's Case-Sensitive)

-- No problem when used the same with 'ILIKE' keyword, as it's Case-Insensitive.

-- SELECT * FROM employees
-- WHERE FIRST_name ILIKE 'G%GER';

SELECT * FROM employees
WHERE FIRST_name ILIKE 'g%ger';