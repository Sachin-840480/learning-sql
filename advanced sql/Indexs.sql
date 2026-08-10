-- Indexs:

-- Types of Indexes:

-- 1. Single Column Index.
-- 2. Multi Column Index.
-- 3. Unique Index.
-- 4. Partial Index.
-- 5. Implicit Index.
-- 6. Clustered Index.
-- 7. Non-Clustered Index.

----------------------------------------------------------------------------

-- Analyzing the Query for its Cost and Runtime.

-- explain ANALYZE
-- select name, district, countrycode from city
-- WHERE countrycode in ('TUN','BEL','NL');

----------------------------------------------------------------------------

-- Creating an Index to Speed up our Query.

-- create index idx_countrycode
-- on city (countrycode);

----------------------------------------------------------------------------

-- Re-running the same Query to see the difference in runtime.

EXPLAIN ANALYZE
SELECT NAME, district, countrycode FROM city
WHERE countrycode IN ('TUN','BEL','NL');

----------------------------------------------------------------------------

-- Creating a Partial Index:

-- create index idx_countrycode
-- on city (countrycode) WHERE countrycode in ('TUN','BEL','NL');

----------------------------------------------------------------------------

-- Re-running the same Query to see the difference.in runtime.

EXPLAIN ANALYZE
SELECT NAME, district, countrycode FROM city
WHERE countrycode IN ('TUN','BEL','NL');

-- Trying to Retrive, data outside of index.

EXPLAIN ANALYZE
SELECT NAME, district, countrycode FROM city
WHERE countrycode IN ('PSE','ZWE','USA');

EXPLAIN ANALYZE
SELECT NAME, district, countrycode FROM city
WHERE countrycode IN ('PSE','ZWE','BEl');