-- creating a table employee in student DB to understand Self Join.

CREATE TABLE employee(
id VARCHAR(5) NOT NULL,
NAME VARCHAR(20) NULL,
start_date date NULL,
supervisorId VARCHAR(5) NULL,
CONSTRAINT id PRIMARY KEY(id) ,
CONSTRAINT supervisorId FOREIGN KEY(supervisorId) 
REFERENCES employee(id));

INSERT INTO employee VALUES (
  	'1',
	'Boss Man',
  	date '1980/01/23',
  	'1'
);                       
                    
INSERT INTO employee VALUES (
  	'1a',
	'Andrei Neagoie',
  	date '1980/01/23',
  	'1'
);      
                    
INSERT INTO employee VALUES (
  	'1abc',
	'Mo Binni',
  	date '1990/01/13',
  	'1a'
);               