-- Extracting Information from dates.

-- Extracting Day, Month, Year

-- Extract Keyword

-- select extract (day from date '2003/01/17') as day;
-- 
-- SELECT EXTRACT (MONTH FROM date '2003/01/17') AS MONTH;
-- 
-- SELECT EXTRACT (year FROM date '2003/01/17') AS year;

----------------------------------------------------------------------------

-- date_trunc keyword.

-- Rounding date to a specific time.

SELECT date_trunc('year', date '2003/01/17');

SELECT date_trunc('month', date '2006/06/1');

SELECT date_trunc('day', date '2003/01/17');