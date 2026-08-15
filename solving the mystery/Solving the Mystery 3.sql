-- Solving the Mystery 3: Suspected Riders Names.

----------------------------------------------------------------------------

-- Creating Extension DBLink.

-- create extension dblink;

----------------------------------------------------------------------------


-- Vehicle History

-- create view suspected_rides as
-- select * from vehicle_location_histories
-- where city = 'new york' 
-- and TIMESTAMP::date = '2020-06-23'
-- and lat between -74.997 and -74.9968
-- and long between 40.5 and 40.6
-- order by timestamp;

--------------------------------------

-- Suspected Rider Names

-- create view suspected_riders_names as
-- SELECT DISTINCT 
--     r.vehicle_id, 
--         split_part(u.name, ' ', 1) as "first_name",
--         split_part(u.name, ' ', 2) as  "last_name"
-- from suspected_rides as sr
-- join rides as r on r.id = sr.ride_id
-- join users as u on u.id = r.rider_id;

-- Checking Created View.

-- select * from suspected_riders_names;

----------------------------------------------------------------------------

-- Solving the Mystery:

SELECT DISTINCT
    concat(t1.first_name, ' ', t1.last_name) AS "employee",
    concat(u.first_name, ' ', u.last_name) AS "rider"

FROM dblink('host=localhost user=postgres password=9113160110 dbname=movr_employees',
    'SELECT first_name, last_name FROM employees;')

AS t1(first_name NAME, last_name NAME)

JOIN suspected_riders_names AS u ON t1.last_name = u.last_name
ORDER BY "rider";










