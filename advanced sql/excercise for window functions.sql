-- Excercise for Window Functions:-

-- Database: World
-- Table: Country


-- 1. Show the population per continent.

-- 2. To the previous query add on the ability to calculate the percentage of the world population.
-- 
-- Explanation:- What that means is that you will divide the population of that continent by the total population and multiply by 100 to get a percentage.
-- 
-- Make Sure:- Make sure you convert the population numbers to float using `population::float` otherwise you may see zero pop up
-- 
-- Try:- Try to use CONCAT AND ROUND to make the data look pretty


-- Database: France
-- Table: Regions (Join + Window function)

-- 3. Count the number of towns per region.

----------------------------------------------------------------------------

-- Question 1:

-- My Answer: Works Perfectly Fine.

SELECT DISTINCT continent,
    sum(population) OVER (
        PARTITION BY continent
    ) AS "Population per Continent"
FROM country;

-- ZTM Answer:

SELECT
  DISTINCT continent,
  SUM(population) OVER w1 AS"continent population"
FROM country 
WINDOW w1 AS( PARTITION BY continent);

----------------------------------------------------------------------------

-- Not useful. (Causes more rows to show rather than only 7)

-- SELECT continent, name, population,
--     sum(population) OVER (
--         PARTITION BY continent
--         order by name
--     ) AS "Population per Continent"
-- FROM country
-- order by continent, name;

----------------------------------------------------------------------------

-- Question 2:



----------------------------------------------------------------------------

-- Question 3:





