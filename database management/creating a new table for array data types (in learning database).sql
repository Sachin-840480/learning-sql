-- Creating a New Table for Array Data Type.

CREATE TABLE test_array (
    four CHAR(2)[],
    eight TEXT[],
    big float4[]
);
INSERT INTO test_array VALUES (
    ARRAY ['mo', 'm', 'm', 'd'],
    ARRAY ['test', 'long text', 'longertext'],
    ARRAY [1.23, 2.11, 3.23, 5.3245345234525]
);

SELECT * FROM test_array;