-- Distinct excerise:

-- DB: Employees
-- Table: titles
-- 1. What unique titles do we have?


-- DB: Employees
-- Table: employees
-- 2. How many unique birth dates are there?


-- DB: World
-- Table: country

-- 3. Can I get a list of distinct life expectancy ages
-- Make sure there are no nulls

----------------------------------------------------------------------------

-- Question 1:

-- select DISTINCT titles from titles;

----------------------------------------------------------------------------

-- Question 2:

-- select distinct birth_date from employees;

-- select count(Distinct birth_date) from employees;

----------------------------------------------------------------------------

-- Question 3:

-- select DISTINCT lifeexpectancy from country
-- where lifeexpectancy is not null;

-- ZTM version:

SELECT DISTINCT lifeexpectancy FROM country
WHERE lifeexpectancy IS NOT NULL
ORDER BY lifeexpectancy;