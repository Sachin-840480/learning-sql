-- Creating all tables for the database. (ZTM) (Here, Learning).

--------------------------------------

-- Student Table.

-- create table student(
--     student_id UUID primary key default uuidv4(),
--     first_name varchar(255) not null,
--     last_name varchar(255) not null,
--     date_of_birth Date not null
-- );

----------------------------------------------------------------------------

-- Altering the Stundent Table.

-- alter table student
-- add COLumn email varchar(255);

----------------------------------------------------------------------------

-- Subject Table.

-- create table subject(
--     subject_id uuid PRIMARY key default uuidv4(),
--     subject text not NULL,
--     description text
-- );

----------------------------------------------------------------------------

-- Teacher Table.

-- create table teacher(
--     teacher_id uuid primary key default uuidv4(),
--     first_name varchar(255) not NULL,
--     last_name varchar(255) not NULL,
--     date_of_birth date not null,
--     email varchar(255)
-- );

----------------------------------------------------------------------------

-- Course Table.

-- create table course(
--     course_id uuid primary key default uuidv4(),
--     name text not null,
--     description text,
--     subject_id uuid references subject(subject_id),
--     teacher_id uuid references teacher(teacher_id),
--     feedback feedback[]
-- );

----------------------------------------------------------------------------

-- Enrollement Table.

-- create table enrollment(
--     course_id uuid REFERENCES course(course_id),
--     student_id uuid REFERENCES student(student_id),
--     enrollment_date date not null,
--     constraint pk_enrollment primary key (course_id, student_id)
-- );

----------------------------------------------------------------------------
