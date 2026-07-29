-- How many female customers do we have from the state of oregon (OR) and new your (NY).

-- select firstname, lastname from customers;


-- select firstname, lastname from customers
-- where state = 'OR';


-- SELECT firstname, lastname FROM customers
-- WHERE state = 'OR' and state = 'NY';


-- SELECT firstname, lastname FROM customers
-- WHERE state = 'OR' OR state = 'NY';
 
 
-- SELECT firstname, lastname, gender FROM customers
-- WHERE state = 'OR' OR state = 'NY' and gender = 'F';



-- --FINAL ANSWERS::


-- There way (works but optimized version exists.)

-- SELECT firstname, lastname, gender, state FROM customers
-- WHERE state = 'OR' and gender = 'F' OR state = 'NY' and gender = 'F';


-- My Answer (Correct !!) 

-- select firstname, lastname, gender, state, country from customers
-- where (state = 'OR' or state = 'NY') and gender = 'F' and country = 'US'; 


-- But Answers should be count therefore:- (Final Answer)

SELECT count(customerid) FROM customers
WHERE (state = 'OR' OR state = 'NY') AND gender = 'F' AND country = 'US'; 
