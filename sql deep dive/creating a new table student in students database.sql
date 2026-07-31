CREATE TABLE student (
    id SERIAL PRIMARY KEY,
    NAME VARCHAR(255),
    lastname VARCHAR(255),
    age INT
);

INSERT INTO student (NAME, lastname, age)
VALUES ('STUDENT 1', NULL, NULL);

INSERT INTO student (NAME, lastname, age)
VALUES ('STUDENT 2', NULL, 25);

INSERT INTO student (NAME, lastname, age)
VALUES (NULL, 'LAST NAME 3', 20);

INSERT INTO student (NAME, lastname, age)
VALUES (NULL, NULL, 34);

INSERT INTO student (NAME, lastname, age)
VALUES ('STUDENT 5', NULL, 58);

SELECT * FROM student;