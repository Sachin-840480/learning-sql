-- The 'IN' Keyword

-- Normal Way (Much Lengthy and harder if multiple filter are present.)

SELECT * FROM employees
WHERE emp_no = 10001 OR emp_no = 10006 OR emp_no = 11000;

-- Using 'In' keyword. (Better Approach and much readable)

SELECT * FROM employees
WHERE emp_no IN (10001,10006,11000);

