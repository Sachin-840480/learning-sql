-- Handling NULL Values

-- 1. Filter out NULLs.     
-- 2. Clean up your Data.   ('Coalesce' Function)

----------------------------------------------------------------------------

-- Coalesce Function

-- select * from students;

-- SELECT COALESCE(NAME, 'Unknonw') AS "Name_Filtered" FROM students;

-- SELECT COALESCE(NAME, 'Unknonw') AS "Name_Filtered", lastname  FROM students;

-- SELECT sum(age) FROM students;

SELECT sum(COALESCE(age, 20)) FROM students;

