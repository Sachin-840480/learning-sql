-- Inserting Data into all tables for the database. (ZTM) (Here, Learning).

--------------------------------------

-- Student Table.

-- insert into student(
--     first_name,
--     last_name,
--     date_of_birth,
--     email
-- ) values (
--     'Sachin',
--     'Kumar',
--     '2003-01-17',
--     'sachin@kumar.com'
-- );

----------------------------------------------------------------------------

-- Subject Table.

-- Note: This is a wrong insert. We fixed it Below.

-- INSERT INTO subject(
--     subject,
--     description
-- ) VALUES (
--     'SQL Zero to Mastery',
--     'The art of SQL Mastery'
-- );

--------------------------------------

-- Deleting a Wrong Entry in the Table.

-- delete from subject where subject = 'SQL Zero to Mastery';

--------------------------------------

-- Inserting Correct Values.

-- INSERT INTO subject(
--     subject,
--     description
-- ) VALUES (
--     'SQL',
--     'A Database Management Language.'
-- );

----------------------------------------------------------------------------

-- Teacher Table.

-- INSERT INTO teacher(
--     first_name,
--     last_name,
--     date_of_birth,
--     email
-- ) VALUES (
--     'Sachin',
--     'Kumar',
--     '2003-01-17',
--     'sachin@kumar.com'
-- );

----------------------------------------------------------------------------

-- Course Table.

-- INSERT INTO course(
--     name,
--     description
-- ) VALUES (
--     'SQL Zero to Mastery',
--     'Good Resource for SQl'
-- );

--------------------------------------
-- NOTE:- First We need to Fill in the <null> values, then only we can update the constraints to be "NOT Null".
--------------------------------------

-- Altering the Constraints of the Table Course.

-- ALTER TABLE course
-- ALTER COLUMN subject_id SET NOT NULL;

-- ALTER TABLE course
-- ALTER COLUMN teacher_id SET NOT NULL;

--------------------------------------

-- Updating the table Course where fields are <null>.

-- update course
-- set subject_id = '913fa05f-9446-435a-b9d3-dc4b9aa510a5'
-- where subject_id is null;

-- update course
-- set teacher_id = 'f6343294-be33-4f15-96ee-a1e25a24cc69'
-- where teacher_id is null;

----------------------------------------------------------------------------

-- Enrollement Table.

-- INSERT INTO enrollment(
--     student_id,
--     course_id,
--     enrollment_date
-- ) VALUES (
--     '41b320b6-cf6f-4aaa-b88b-9b215d4a8256',
--     '17fc3642-6e1f-4632-abd9-c876feddd48d',
--     now()::date
-- );

----------------------------------------------------------------------------
