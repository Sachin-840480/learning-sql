-- Rollup & Cube Main:


-- Basic Group by:

-- select continent, sum(amount) as total_amount
-- from orders
-- group by continent;

----------------------------------------------------------------------------

-- Get all the data.

-- SELECT continent, country, city, sum(amount) AS total_amount
-- FROM orders
-- GROUP BY continent, country, city;

-- Get continent wise sales.
 
-- SELECT continent, null country, null city, sum(amount) AS total_amount
-- FROM orders
-- GROUP BY continent;


-- Get boths these data in a single table, using UNION.

-- SELECT continent, country, city, sum(amount) AS total_amount
-- FROM orders
-- GROUP BY continent, country, city
-- union all
-- SELECT continent, NULL country, NULL city, sum(amount) AS total_amount
-- FROM orders
-- GROUP BY continent;

-- Also get aggegration at continent and country level. (adding 1 more term in union)

-- SELECT continent, country, city, sum(amount) AS total_amount
-- FROM orders
-- GROUP BY continent, country, city
-- union all
-- SELECT continent, NULL country, NULL city, sum(amount) AS total_amount
-- FROM orders
-- GROUP BY continent
-- union all
-- SELECT continent, country, NULL city, sum(amount) AS total_amount
-- FROM orders
-- GROUP BY continent, country;

-- Also wanting to get the overall sales as aggereate value.

-- SELECT continent, country, city, sum(amount) AS total_amount
-- FROM orders
-- GROUP BY continent, country, city
-- UNION ALL
-- SELECT continent, NULL country, NULL city, sum(amount) AS total_amount
-- FROM orders
-- GROUP BY continent
-- UNION ALL
-- SELECT continent, country, NULL city, sum(amount) AS total_amount
-- FROM orders
-- GROUP BY continent, country
-- UNION ALL
-- SELECT null continent, null country, NULL city, sum(amount) AS total_amount
-- FROM orders;

----------------------------------------------------------------------------

-- Performing the same using "RollUp". It gives (ABC) -> (ABC)+(AB)+(A)+()

SELECT continent, country, city, sum(amount) AS total_amount
FROM orders
GROUP BY 
ROLLUP(continent, country, city);

----------------------------------------------------------------------------

-- Getting all possible combinations, use "CUBE".

SELECT continent, country, city, sum(amount) AS total_amount
FROM orders
GROUP BY 
CUBE(continent, country, city);

----------------------------------------------------------------------------

-- Now Chooseing the aggeration as per our choice using "Grouping Sets".

SELECT continent, country, city, sum(amount) AS total_amount
FROM orders
GROUP BY 
GROUPING SETS(
(continent, country), 
(city)
);

-- Adding 1 more choice.

SELECT continent, country, city, sum(amount) AS total_amount
FROM orders
GROUP BY 
GROUPING SETS(
(continent, country), 
(city),
(continent, city)
);