-- Timestamps

SHOW timezone;

-- select now();   -- Gives the current timestamp. 

-- Format:-     YYYY-MM-DD T HH:MM:SS:MS +- TZ
-- Output:-     2026-08-01 16:28:42.260292 +05:30

----------------------------------------------------------------------------

-- Note:-

-- TIMESTAMP = timestamp without time ZONE
-- TIMESTAMPTZ = timestamp with time zone

----------------------------------------------------------------------------

-- Code for creating a table with these datatype.

-- Both code do the same, but the below one is the shortform for it.

-- CREATE TABLE timezones (
--     ts TIMESTAMP WITHOUT TIME ZONE,
--     tz TIMESTAMP WITH TIME ZONE
-- );

-- CREATE TABLE timezones (
--     ts TIMESTAMP,
--     tz timestamptz
-- );

----------------------------------------------------------------------------

-- Inserting Data into these tables.

-- Both code do the same, but the below one is the shortform for it.

INSERT INTO timezones VALUES(
    TIMESTAMP WITHOUT TIME ZONE '2000-01-01 10:00:00-05',
    TIMESTAMP WITH TIME ZONE '2000-01-01 10:00:00-05'
);
INSERT INTO timezones VALUES(
    TIMESTAMP WITHOUT TIME ZONE '2000-01-01 10:00:00 +05:30',
    TIMESTAMP WITH TIME ZONE '2000-01-01 10:00:00 +05:30'
);
 
-- INSERT INTO timezones VALUES(
--     TIMESTAMP '2000-01-01 10:00:00 +05:30',
--     timestamptz '2000-01-01 10:00:00 +05:30'
-- );   

----------------------------------------------------------------------------

SELECT * FROM timezones;