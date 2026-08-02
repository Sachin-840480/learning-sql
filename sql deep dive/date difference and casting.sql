-- difference between dates

SELECT now() - '1800/01/01';

-- output

-- format:- <number> days HH:MM:SS.MS

----------------------------------------------------------------------------

-- Casting to Date.

SELECT date '2003/01/17';

-- output: It has been changed to iso 8601 format where slashes '/' were replaced with dash '-'.
