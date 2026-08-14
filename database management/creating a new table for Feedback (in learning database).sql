-- Creating a New Feedback Table in Learning Database.

-- create table feedback(
--     student_id uuid not null REFERENCes student(student_id),
--     course_id uuid not null references course(course_id),
--     feedback text,
--     rating Rating,
--     constraint pk_feedback primary key (student_id, course_id)
-- );

----------------------------------------------------------------------------

-- Inserting Data into the Feedback Table.

INSERT INTO feedback(
    student_id,
    course_id,
    feedback,
    rating
) VALUES (
    '41b320b6-cf6f-4aaa-b88b-9b215d4a8256',
    '17fc3642-6e1f-4632-abd9-c876feddd48d',
    'Well this was Great!',
    4
);