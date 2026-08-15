-- Solving the Mystery 2: Finding the Riders.

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

SELECT DISTINCT r.vehicle_id, u.name AS "rider name", u.address
FROM suspected_rides AS sr
JOIN rides AS r ON r.id = sr.ride_id
JOIN users AS u ON u.id = r.rider_id
ORDER BY "rider name";


