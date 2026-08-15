-- Solving the Mystery 1: Finding the Drivers

----------------------------------------------------------------------------

-- Vehicle History

-- create view suspected_rides as
-- select * from vehicle_location_histories
-- where city = 'new york' 
-- and TIMESTAMP::date = '2020-06-23'
-- and lat between -74.997 and -74.9968
-- and long between 40.5 and 40.6
-- order by timestamp;

----------------------------------------------------------------------------

-- get vehicle_id, owner name, address, status, current_location for the values taken from the above.

SELECT DISTINCT r.vehicle_id, u.name AS "owner name", u.address, v.status, v.current_location 
FROM rides AS r
JOIN suspected_rides AS sr ON sr.ride_id = r.id
JOIN vehicles AS v ON v.id = r.vehicle_id
JOIN users AS u ON u.id = v.owner_id
ORDER BY "owner name";


