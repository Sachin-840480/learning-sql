-- Excercise for comparison operators .

-- 1. How many female customers do we have from the state of Oregon (OR)?
-- 2. Who over the age of 44 has an income of 100 000 or more?
-- 3. Who between the ages of 30 and 50 has an income of less than 50 000?
-- 4. What is the average income between the ages of 20 and 50?

----------------------------------------------------------------------------

-- Question 1:

-- select count(customerid) from customers
-- where state = 'OR' and gender = 'F';

----------------------------------------------------------------------------

-- Question 2:

-- select firstname, lastname, income, age from customers
-- where age > 44 and income >= 100000;

----------------------------------------------------------------------------

-- Question 3:

-- select firstname, lastname, income, age from customers
-- where age >= 30 and age <= 50 and income < 50000;

----------------------------------------------------------------------------

-- Question 4:

SELECT avg(income) FROM customers
-- where age > 20 and age < 50;
   WHERE age BETWEEN 20 AND 50;

