-- Excercise with NOT keyword

-- select firstname, lastname, age from customers
-- where not age = 55;
-- 

-- same with operators

-- SELECT firstname, lastname, age FROM customers
-- WHERE age != 55;


-- -- counting the number of people

-- select count(age) from customers
-- where not age = 55;

-- same with operators

SELECT count(age) FROM customers
WHERE age != 55;
