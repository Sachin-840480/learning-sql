-- Change the timezone of the 'user' on a system level.

ALTER USER postgres SET timezone = 'UTC';

-- ALTER USER postgres SET timezone to 'UTC';   -- Same Same, but Different XD

----------------------------------------------------------------------------

-- -- Reseting the timezone back
-- alter user postgres reset timezone;

----------------------------------------------------------------------------

-- -- Changing timezone for a 'specific database'.
-- alter database <database_name> set timezone to 'UTC';

----------------------------------------------------------------------------

-- -- Changing timezone for the 'entire system'.
-- alter system set timezone to '<timezone>'