-- Calculating Age

----------------------------------------------------------------------------

-- select age('1800/01/01');

-- ERROR:  function age(unknown) is not unique
-- HINT:  Could not choose a best candidate function. You might need to add explicit type casts.

----------------------------------------------------------------------------

-- SELECT age(date '1800/01/01');
-- 
-- select age (date '1800-01-01');

----------------------------------------------------------------------------

-- Calculating age between 2 things.

SELECT age(date '2026/08/02', date '2003/01/17');

----------------------------------------------------------------------------

-- Formatting the output as per our liking.

SELECT to_char(age(date '2026/08/02', date '2003/01/17'), 'ddd');