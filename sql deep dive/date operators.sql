-- date operators in postgres


-- 1. current_date. / now() :: date;

-- for getting the current date.
-- select now() :: date;
-- select CURRENT_DATE;

----------------------------------------------------------------------------

-- 2. formatting the date format.

-- select to_char(current_date, 'dd/mm/yyyy');
-- select to_char(now() :: date, 'dd/mm/yyyy');

----------------------------------------------------------------------------

-- More formatting

-- Day of the Year
-- select to_char(CURRENT_DATE, 'DDD');

-- day of ISO 8601 week-numbering year
SELECT to_char(CURRENT_DATE, 'IDD');

-- weak of the year
SELECT to_char(CURRENT_DATE, 'ww');