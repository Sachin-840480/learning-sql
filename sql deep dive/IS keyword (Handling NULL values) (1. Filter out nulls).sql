-- Handling NULL Values

-- 1. Filter out NULLs.     ('IS' operator)
-- 2. Clean up your Data.

-- 1. Filter out NULLs.

-- EXAMPLES

-- SELECT NAME, lastname FROM student
-- WHERE NAME IS NOT NULL;
-- 
-- SELECT NAME, lastname FROM student
-- WHERE lastname IS NOT NULL;

-- Use the DATABASE: WORLD
--         TABLE: COUNTRY

-- select name from country
-- where lifeexpectancy is not null;

----------------------------------------------------------------------------

-- Using 'IS' with 'TRUE/FALSE'.

-- Use the DATABASE: WORLD
--         TABLE: COUNTRY

-- select firstname, lastname, age from customers
-- where age = 20 is FALSE;            
-- 
-- SELECT firstname, lastname, age FROM customers
-- WHERE age = 20 IS not true;            -- Here Its excluding age 20 ( working as FALSE)
-- 
-- SELECT firstname, lastname, age FROM customers
-- WHERE age = 20 IS TRUE;            
-- 
SELECT firstname, lastname, age FROM customers
WHERE age = 20 IS NOT FALSE;            -- Here it gives only age 20 ( working as TRUE)

