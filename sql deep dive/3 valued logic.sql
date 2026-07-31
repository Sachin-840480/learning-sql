-- Unknown or Null values

-- Logical comparisons:
 
-- select (null = 1) or (1 = 1);
-- select ((null = 1) and (0 = 1));

----------------------------------------------------------------------------

-- --SQL Query

-- select * from students
-- where name = null;


-- select * from students
-- where name is null;


-- select * from students
-- where (name = null)
-- or (not name = null);


-- select * from students
-- where (name is null)
-- or (name is not null);


SELECT * FROM students
WHERE (age IS NULL) OR (age IS NOT NULL);