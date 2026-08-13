-- Creating a New Table for Text Data Type.

CREATE TABLE test_text (
    fixed CHAR(4),
    variable VARCHAR(20),
    unlimited TEXT);
    
INSERT INTO test_text VALUES (
    'mo',
    'mo',
    'I have unlimited space'
);

SELECT * FROM test_text;