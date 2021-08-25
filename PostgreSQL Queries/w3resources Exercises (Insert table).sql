/*
1. Write a SQL statement to insert a record with your own value into the table countries against each column.
*/

CREATE TABLE countries (
	country_id INT,
	country_name VARCHAR(30),
	region_id INT
);

INSERT INTO countries (country_id, country_name, region_id)
VALUES (1,'Argentina',1);

/*
2. Write a SQL statement to insert one row into the table countries against the column country_id and country_name.
*/

INSERT INTO countries (country_id, country_name)
VALUES (2,'United States');

/*
3. Write a SQL statement to create duplicates of countries table named country_new with all structure and data.
*/

CREATE TABLE countries_new AS (SELECT DISTINCT * FROM countries);

/*
4. Write a SQL statement to insert NULL values into region_id column for a row of countries table.
*/

INSERT INTO countries (region_id)
VALUES (NULL);

/*
5. Write a SQL statement to insert 3 rows by a single insert statement.
*/

INSERT INTO countries (country_id, country_name, region_id)
VALUES 	(3,'United Kingdom',3),
		(4,'Spain',4),
		(5,'New Zealand',5);

/*
6. Write a SQL statement insert rows from the country_new table to countries table.
*/

INSERT INTO countries (country_id, country_name, region_id)
SELECT country_id, country_name, region_id
FROM countries_new;

/*
7. Write a SQL statement to insert one row in the jobs table to ensure that no duplicate values will be entered into the job_id column.
*/

CREATE TABLE jobs (
	job_id INT NOT NULL UNIQUE
);

INSERT INTO jobs
VALUES 	(1),
		(2);

/*
8. Write a SQL statement to insert a record into the table countries to ensure that, at country_id and the region_id combination will be entered once in the table.
*/

INSERT INTO countries_new
SELECT DISTINCT
	country_id,
	country_name,
	region_id
FROM countries;

DROP TABLE countries;

ALTER TABLE countries_new
RENAME TO countries;

UPDATE countries
SET country_id = 0,
	region_id = 0
WHERE country_id ISNULL OR region_id ISNULL;

DELETE FROM countries
WHERE country_id = 0;

ALTER TABLE countries
ADD PRIMARY KEY (country_id, region_id);

INSERT INTO countries (country_id, country_name, region_id)
VALUES 	(1,'Perú',1);

/*
9. Write a SQL statement to insert rows into the table countries in which the value of country_id column will be unique and auto incremented.
*/

DROP TABLE countries;

CREATE TABLE countries (
	country_id SERIAL PRIMARY KEY,
	country_name VARCHAR(20),
	region_id INT
);

INSERT INTO countries (country_name, region_id)
VALUES 	('Argentina',10),
		('Brazil',20),
		('United States',30);
		
SELECT * FROM countries;

/*
10. Write a SQL statement to insert records into the table countries to ensure that the country_id column will not contain any duplicate data and this will be automatically
incremented and the column country_name will be filled up by 'N/A' if no value assigned to that column.
*/

DROP TABLE countries;

CREATE TABLE countries (
	country_id SERIAL PRIMARY KEY,
	country_name VARCHAR(20) DEFAULT 'N/A',
	region_id INT
);

INSERT INTO countries (region_id)
VALUES 	(10),
		(20),
		(30);
		
SELECT * FROM countries;

/*
11. Write a SQL statement to insert rows into the job_history table in which one column job_id is containing those values which exist in job_id column of jobs table.
*/

DROP TABLE jobs;
CREATE TABLE jobs (
	job_id INT PRIMARY KEY
);
INSERT INTO jobs (job_id)
VALUES 	(1),
		(2),
		(3);

CREATE TABLE job_history (
	job_id INT,
	FOREIGN KEY (job_id) REFERENCES jobs(job_id)
);
INSERT INTO job_history (job_id)
VALUES 	(1),
		(2),
		(3);

/*
12. Write a SQL statement to insert rows into the table employees in which a set of columns department_id and manager_id contains a unique value 
and that combined value must have existed into the table departments.
*/

CREATE TABLE departments (
	department_id INT NOT NULL,
	manager_id INT NOT NULL,
	PRIMARY KEY (department_id, manager_id)
);
INSERT INTO departments (department_id, manager_id)
VALUES 	(1,1),
		(2,1),
		(3,1);

CREATE TABLE employees (
	department_id INT NOT NULL,
	manager_id INT NOT NULL,
	FOREIGN KEY (department_id, manager_id) REFERENCES departments(department_id, manager_id)
);
INSERT INTO employees (department_id, manager_id)
VALUES 	(1,1),
		(2,1),
		(3,1);
		--(4,1);

/*
13. Write a SQL statement to insert rows into the table employees in which a set of columns department_id 
and job_id contains the values which must have existed into the table departments and jobs.
*/

DROP TABLE jobs CASCADE;
CREATE TABLE jobs (
	job_id INT NOT NULL PRIMARY KEY
);
INSERT INTO jobs (job_id)
VALUES 	(1),
		(2),
		(3);

DROP TABLE departments CASCADE;
CREATE TABLE departments (
	department_id INT NOT NULL PRIMARY KEY
);
INSERT INTO departments (department_id)
VALUES 	(1),
		(2),
		(3);

DROP TABLE employees;
CREATE TABLE employees (
	job_id INT NOT NULL,
	department_id INT NOT NULL,
	FOREIGN KEY (job_id) REFERENCES jobs(job_id),
	FOREIGN KEY (department_id) REFERENCES departments(department_id)
);
INSERT INTO employees (job_id, department_id)
VALUES 	(1,1),
		(2,2),
		(3,3);
		--(4,4);