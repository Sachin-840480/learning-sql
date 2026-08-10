-- Indexs Algorithms:

-- Types of Algos:

-- 1. B- Tress & B+ Trees.  (Best for Comparison Operations)
-- 2. Hash.                 (Best for Equality Operations)
-- 3. GIN.
-- 4. GIST.

----------------------------------------------------------------------------

-- Base Query.  (1.166ms)

-- EXPLAIN ANALYZE
-- SELECT NAME, district, countrycode FROM city
-- WHERE countrycode IN ('TUN','BEL','NLD');

----------------------------------------------------------------------------

-- Creating an Index to Speed up our Query Using Hash Algorithm..

-- CREATE INDEX idx_countrycode
-- ON city (countrycode);

----------------------------------------------------------------------------

-- Analyzing the Query for its Cost and Runtime.    (0.096ms)

-- explain ANALYZE
-- select name, district, countrycode from city
-- WHERE countrycode in ('TUN','BEL','NLD');

----------------------------------------------------------------------------

-- Creating an Index to Speed up our Query Using Hash Algorithm..

-- create index idx_countrycode
-- on city using hash (countrycode);

----------------------------------------------------------------------------

-- Re-running the same Query to see the difference in runtime.  (0.042ms)

-- EXPLAIN ANALYZE
-- SELECT NAME, district, countrycode FROM city
-- WHERE countrycode IN ('TUN','BEL','NLD');

----------------------------------------------------------------------------
----------------------------------------------------------------------------

-- Best Use for Hashing Algorithm is Equality.

-- Changing the Query to better Suit Hash Algorithms.   (0.014ms)

-- EXPLAIN ANALYZE
-- SELECT NAME, district, countrycode FROM city
-- WHERE countrycode = 'TUN' and countrycode = 'BEL' and countrycode = 'NLD';

-- EXPLAIN ANALYZE
-- SELECT NAME, district, countrycode FROM city
-- WHERE countrycode = 'TUN' or countrycode = 'BEL' or countrycode = 'NLD';