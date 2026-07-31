-- Coalesce Excercise:

-- 1. Assuming a students minimum age for the class is 15, what is the average age of a student?
-- 2. Replace all empty first or last names with a default?


----------------------------------------------------------------------------

-- select * from students;

----------------------------------------------------------------------------

-- Question 1: 

-- select avg(COALESCE(age, 15)) from students;

----------------------------------------------------------------------------

-- Question 2:


-- My code (only retruns the first null empty )
-- select COALESCE(name, lastname, 'no name available') as "Full Names" from students;
 
 -- Correct Code
 SELECT id, COALESCE(NAME, 'no name available') AS "Name", COALESCE(lastname, 'no lastname available') AS "Last Name", age FROM students;