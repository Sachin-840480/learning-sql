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

-- Error:

-- SELECT * FROM salaries
-- WHERE salary LIKE '60%';

----------------------------------------------------------------------------
-- Causes Error because we cannot run LIKE / ILIKE on non-string or non-text data types. We must first convert it to string data-type first to use LIKE or ILIKE. ----------------------------------------------------------------------------

-- Fix:

-- select * from salaries
-- where cast(salary as text) like '60%';

SELECT * FROM salaries
WHERE CAST(salary AS TEXT) LIKE '4_04%';