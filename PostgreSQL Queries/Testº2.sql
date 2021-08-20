/* Creating tables */

CREATE TABLE employes(
	Dni varchar(9) NOT NULL,
	FirstName varchar(20),
	LastName varchar(20),
	Department integer NOT NULL,
	ModificationDate timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY(Dni),
	FOREIGN KEY(Department) REFERENCES departments(Code)
);

CREATE TABLE departments(
	Code integer NOT NULL,
	DepartmentName varchar(50),
	Budget integer,
	PRIMARY KEY(Code)
);

DROP TABLE employes,departments;

/* Inserting data */

INSERT INTO departments
VALUES 	(1,'Production',8000000),
		(2,'Human Resource Management',500000),
		(3,'Marketing',1000000),
		(4,'Research and Development',3000000),
		(5,'Accounting and Finance',10000000),
		(6,'Purchasing',5000000);
		
INSERT INTO employes
VALUES	('97136985G','Leonardo','Bravo',4),
		('09121772H','Maximiliano','Bravo',4),
		('13442349E','Santiago','Bravo',4),
		('72839652D','Lucia','Wlozovicz',2),
		('67378225R','Gerardo','Benitez',1),
		('91114720J','Andrew','Sosa',1),
		('78218449A','Ariel','Llanes',1),
		('69790634D','Federico','Abboy',2),
		('07352472Q','Julian','Milone',3),
		('18748528D','Cristian','Rodriguez',5),
		('34376251Z','German','Piquero',6),
		('76945587F','Tomás','Merle',3);
		
/*
INSERT INTO employes
VALUES	('88673696W','Luciano','Mustica',6)
*/
