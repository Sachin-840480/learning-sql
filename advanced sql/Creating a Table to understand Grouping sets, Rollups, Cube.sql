-- Creating a Table to understand Grouping sets, Rollups, Cube.

CREATE TABLE orders (
    id INT PRIMARY KEY,
    continent VARCHAR(30),
    country VARCHAR(30),
    city VARCHAR(30),
    amount INT
);

INSERT INTO sales_demo
VALUES
(1,'Asia','India','Bangalore',1000),
(2,'Asia','India','Chennai',2000),
(3,'Asia','Japan','Tokyo',4000),
(4,'Asia','Japan','Hiroshima',5000),
(5,'Europe','United Kingdom','London',1000),
(6,'Europe','United Kingdom','Manchester',2000),
(7,'Europe','France','Paris',4000),
(8,'Europe','France','Cannes',5000);