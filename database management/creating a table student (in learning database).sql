-- Creating a New Table for Array Data Type.

CREATE TABLE student (
    student_id UUID PRIMARY KEY DEFAULT uuidv4(),
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    date_of_birth date NOT NULL
);


SELECT * FROM student;