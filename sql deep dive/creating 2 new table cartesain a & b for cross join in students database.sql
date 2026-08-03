-- Creating 2 table cartesianA & cartesianB.

-- drop table "cartesianA";
-- drop table "cartesianB";

CREATE TABLE "cartesianA" (Aid INT);
CREATE TABLE "cartesianB" (Bid INT);

INSERT INTO "cartesianA" VALUES(1);
INSERT INTO "cartesianA" VALUES(2);
INSERT INTO "cartesianA" VALUES(3);

INSERT INTO "cartesianB" VALUES(1);
INSERT INTO "cartesianB" VALUES(2);


-- Adding more data into tables for FULL OUTER JOIN.

INSERT INTO "cartesianA" VALUES(4);
INSERT INTO "cartesianA" VALUES(5);

INSERT INTO "cartesianB" VALUES(20);
INSERT INTO "cartesianB" VALUES(30);