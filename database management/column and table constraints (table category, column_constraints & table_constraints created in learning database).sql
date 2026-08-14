-- Creating new tables for learning Column and Table Constraints.

-- CREATE TABLE category (
--     cat_id SMALLINT PRIMARY KEY,
--     type TEXT
-- );
-- 
-- CREATE TABLE column_constraints (
--     cc_id SMALLINT PRIMARY KEY,
--     something TEXT NOT NULL,
--     email TEXT CHECK (email ~* '^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+[.][A-Za-z]+$'),
--     cat_id SMALLINT REFERENCES
--     category (cat_id)
-- );
-- 
-- CREATE TABLE table_constraints (
--     cc_id SMALLINT,
--     something TEXT NOT NULL,
--     email TEXT,
--     cat_id SMALLINT REFERENCES category (cat_id),
--     CONSTRAINT pk_table_constraints primary KEY (cc_id),
--     CONSTRAINT valid_email check (email ~* '^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+[.][A-Za-z]+$')
-- ); 

--------------------------------------

-- INSERT INTO category VALUES (
--     1,
--     'category 1'
-- );
-- 

-- INSERT INTO column_constraints VALUES (
--     1,
--     'something',
--     '@sachin.io',     --throws error
--     'some@sachin.io',
--     1
-- );

-- INSERT INTO table_constraints VALUES (
--     1,
--     'something',
--     '@sachin.io',     --throws error
--     'some@sachin.io',
--     1
-- );

----------------------------------------------------------------------------

SELECT * FROM column_constraints;

SELECT * FROM table_constraints;