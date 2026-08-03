--  Self Join

SELECT a.id, a.name AS "Employee", b.name AS "Supervisor Name" 
FROM employee AS a, employee AS b
WHERE a.supervisorId = b.id;

-- same with inner join

SELECT a.id, a.name AS "Employee", b.name AS "Supervisor Name" 
FROM employee AS a
INNER JOIN employee AS b ON a.supervisorId = b.id;s