-- Full Outer Join

-- Only on Basic Data.

-- select * from "cartesianA" as a
-- full join "cartesianB" as b
-- on a.Aid = b.Bid;

-- Better look at full outer join, after increasing the data in the cartesian (A & B) tables.

SELECT * FROM "cartesianA" AS a
FULL JOIN "cartesianB" AS b
ON a.Aid = b.Bid;