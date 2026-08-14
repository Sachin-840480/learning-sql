-- Custom Data Types and Domains.

CREATE DOMAIN Rating SMALLINT 
    CHECK (VALUE > 0 AND VALUE <= 5);


CREATE TYPE Feedback(
    student_id UUID,
    rating Rating,
    feedback TEXT
);