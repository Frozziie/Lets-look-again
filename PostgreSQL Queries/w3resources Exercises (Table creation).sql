-- 1. Write a SQL statement to create a simple table countries including columns country_id,country_name and region_id.

CREATE TABLE countries(
	country_id SMALLINT,
	country_name VARCHAR(30),
	region_id SMALLINT,
	PRIMARY KEY(country_id)
);

SELECT *
FROM countries;

----------------------------------------------------------------------------------------------------------------------------------------

-- 3. Write a SQL statement to create the structure of a table dup_countries similar to countries.

DROP TABLE dup_countries;

CREATE TABLE dup_countries as (SELECT * FROM countries) WITH NO DATA;

SELECT * 
FROM dup_countries;

----------------------------------------------------------------------------------------------------------------------------------------

-- 4. Write a SQL statement to create a duplicate copy of countries table including structure and data by name dup_countries.

DROP TABLE dup_countries;

CREATE TABLE dup_countries as (SELECT * FROM countries);

SELECT * 
FROM dup_countries;

----------------------------------------------------------------------------------------------------------------------------------------

-- 5. Write a SQL statement to create a table countries set a constraint NULL.

DROP TABLE countries;

CREATE TABLE IF NOT EXISTS countries (
	country_id SMALLINT NOT NULL,
	country_name VARCHAR(30) NOT NULL,
	region_id SMALLINT NOT NULL,
	PRIMARY KEY(country_id)
);

SELECT *
FROM countries;

----------------------------------------------------------------------------------------------------------------------------------------

/*
6. Write a SQL statement to create a table named jobs including columns job_id, job_title, min_salary, 
	max_salary and check whether the max_salary amount exceeding the upper limit 25000.
*/

CREATE TABLE IF NOT EXISTS jobs (
	job_id SMALLINT NOT NULL,
	job_title VARCHAR(30) NOT NULL,
	min_salary INT NOT NULL,
	max_salary INT NOT NULL,
	CHECK (max_salary <= 25000),
	PRIMARY KEY(job_id)
);

SELECT *
FROM jobs;

-- Check insertion examples to test your query.
INSERT INTO jobs (job_id, job_title, min_salary, max_salary)
VALUES 	(1, 'Data Analyst', 2000, 2500),
		(2, 'Data Engineer', 15000, 25001);
		
TRUNCATE TABLE jobs;

----------------------------------------------------------------------------------------------------------------------------------------

/*
7. Write a SQL statement to create a table named countries including columns country_id, country_name and region_id and make sure that no countries except Italy, 
	India and China will be entered in the table.
*/

DROP TABLE countries;

CREATE TABLE IF NOT EXISTS countries (
	country_id SMALLINT NOT NULL,
	country_name VARCHAR(30) NOT NULL,
	CHECK (country_name IN('Italy','India','China'),
	region_id SMALLINT NOT NULL,
	PRIMARY KEY(country_id)
);

-- Check insertion examples to test your query.
INSERT INTO countries (country_id, country_name, region_id)
VALUES 	(1, 'Italy', 1),
		(2, 'India', 2),
		(3, 'China', 3),
		(4, 'Argentina', 4);

SELECT *
FROM countries;

TRUNCATE TABLE countries;

----------------------------------------------------------------------------------------------------------------------------------------
	
/*
8. Write a SQL statement to create a table named countries including columns country_id, country_name and region_id 
	and make sure that no duplicate data against column country_id will be allowed at the time of insertion.
*/

DROP TABLE countries;

CREATE TABLE IF NOT EXISTS countries (
	country_id SMALLINT NOT NULL,
	country_name VARCHAR(30) NOT NULL,
	region_id SMALLINT NOT NULL,
	PRIMARY KEY(country_id),
	UNIQUE(country_id)
);

-- Check insertion examples to test your query.
INSERT INTO countries (country_id, country_name, region_id)
VALUES 	(1, 'Italy', 1),
		(1, 'India', 2);

SELECT *
FROM countries;

TRUNCATE TABLE countries;

----------------------------------------------------------------------------------------------------------------------------------------

/*
9. Write a SQL statement to create a table named jobs including columns job_id, job_title, min_salary and max_salary, and make sure that, 
	the default value for job_title is blank and min_salary is 8000 and max_salary is NULL will be entered automatically at the time of insertion if no value assigned 
	for the specified columns.
*/
	
DROP TABLE jobs;

CREATE TABLE IF NOT EXISTS jobs (
	job_id SMALLINT NOT NULL,
	job_title VARCHAR(30) DEFAULT ' ',
	min_salary INT DEFAULT 8000,
	max_salary INT DEFAULT NULL,
	PRIMARY KEY(job_id)
);

SELECT *
FROM jobs;

-- Check insertion examples to test your query.
INSERT INTO jobs (job_id)
VALUES 	(1);
		
TRUNCATE TABLE jobs;
	

----------------------------------------------------------------------------------------------------------------------------------------

/*
10. Write a SQL statement to create a table named countries including columns country_id, country_name and region_id
	and make sure that the country_id column will be a key field which will not contain any duplicate data at the time of insertion. 
*/

DROP TABLE countries;

CREATE TABLE IF NOT EXISTS countries (
	country_id SMALLINT NOT NULL,
	country_name VARCHAR(30) NOT NULL,
	region_id SMALLINT NOT NULL,
	PRIMARY KEY(country_id),
	UNIQUE(country_id)
);

-- Check insertion examples to test your query.
INSERT INTO countries (country_id, country_name, region_id)
VALUES 	(1, 'Italy', 1),
		(1, 'India', 2);

SELECT *
FROM countries;

TRUNCATE TABLE countries;
	
----------------------------------------------------------------------------------------------------------------------------------------

/*
11. Write a SQL statement to create a table countries including columns country_id, country_name and region_id 
	and make sure that the column country_id will be unique and store an auto-incremented value.
*/
	
DROP TABLE countries;

CREATE TABLE IF NOT EXISTS countries (
	country_id SERIAL,
	country_name VARCHAR(30) NOT NULL,
	region_id SMALLINT NOT NULL,
	PRIMARY KEY(country_id),
	UNIQUE(country_id)
);

-- Check insertion examples to test your query.
INSERT INTO countries (country_name, region_id)
VALUES 	('Italy', 1),
		('India', 2);

SELECT *
FROM countries;

TRUNCATE TABLE countries;
	
----------------------------------------------------------------------------------------------------------------------------------------
	
/*
12. Write a SQL statement to create a table countries including columns country_id, country_name and region_id 
and make sure that the combination of columns country_id and region_id will be unique.
*/

DROP TABLE countries;

CREATE TABLE countries (
	country_id SMALLINT NOT NULL,
	country_name VARCHAR(30) NOT NULL,
	region_id SMALLINT NOT NULL,
	--PRIMARY KEY (country_id),
	UNIQUE (country_id, region_id)
);

-- Examples to test query.
INSERT INTO countries (country_id, country_name, region_id)
VALUES 	(1, 'Argentina', 1),
		(1, 'Argentina', 2);
		
SELECT *
FROM countries;

TRUNCATE countries;

/*
13. Write a SQL statement to create a table job_history including columns employee_id, start_date, end_date, job_id and department_id 
and make sure that, the employee_id column does not contain any duplicate value at the time of insertion and the foreign key column 
job_id contain only those values which exist in the jobs table.
*/

DROP TABLE jobs;

CREATE TABLE IF NOT EXISTS jobs (
	job_id SMALLINT,
	PRIMARY KEY (job_id)
);

INSERT INTO jobs (job_id)
VALUES 	(1),
		(2);
		
SELECT *
FROM jobs;

TRUNCATE jobs;



DROP TABLE job_history;

CREATE TABLE IF NOT EXISTS job_history (
	employee_id SMALLINT,
	start_date DATE DEFAULT NOW(),
	end_date DATE DEFAULT NOW(),
	job_id SMALLINT,
	department_id SMALLINT DEFAULT 0,
	PRIMARY KEY (employee_id),
	FOREIGN KEY (job_id) REFERENCES jobs(job_id)
);

-- Examples to test query.
INSERT INTO job_history (employee_id, job_id)
VALUES 	(1,1),
		(2,3);
		
SELECT *
FROM job_history;

TRUNCATE job_history;

/*
14. Write a SQL statement to create a table employees including columns employee_id, first_name, last_name, email, phone_number, hire_date, 
job_id, salary, commission, manager_id and department_id and make sure that, the employee_id column does not contain any duplicate 
value at the time of insertion and the foreign key columns combined by department_id and manager_id columns contain only those unique 
combination values, which combinations exist in the departments table.
*/

DROP TABLE departments;

CREATE TABLE IF NOT EXISTS departments (
	department_id SMALLINT,
	manager_id SMALLINT,
	PRIMARY KEY (department_id, manager_id)
);

-- Examples to test query.
INSERT INTO departments (department_id, manager_id)
VALUES 	(1,1),
		(2,3),
		(1,2);

SELECT *
FROM departments;

TRUNCATE departments;



DROP TABLE employees;

CREATE TABLE IF NOT EXISTS employees (
	employee_id SMALLINT,
	first_name VARCHAR(20) DEFAULT '',
	last_name VARCHAR(20) DEFAULT '',
	email VARCHAR(30) DEFAULT '',
	phone_number VARCHAR(10) DEFAULT '',
	hire_date DATE DEFAULT NOW(),
	job_id SMALLINT DEFAULT 1,
	salary FLOAT DEFAULT 0,
	commission FLOAT DEFAULT 0,
	manager_id SMALLINT,
	department_id SMALLINT,
	PRIMARY KEY (employee_id),
	FOREIGN KEY (department_id, manager_id) REFERENCES departments(department_id, manager_id)
);

-- Examples to test query.
INSERT INTO employees (employee_id, manager_id, department_id)
VALUES 	(1,1,1),
		(2,3,2),
		(3,1,5);

SELECT *
FROM employees;

TRUNCATE employees;

/*
15. Write a SQL statement to create a table employees including columns employee_id, first_name, last_name, email, phone_number, hire_date,
job_id, salary, commission, manager_id and department_id and make sure that, the employee_id column does not contain any duplicate 
value at the time of insertion, and the foreign key column department_id, reference by the column department_id of departments table,
can contain only those values which are exist in the departments table and another foreign key column job_id, referenced by the column 
job_id of jobs table, can contain only those values which exist in the jobs table.
*/

DROP TABLE departments;
CREATE TABLE departments (
	department_id SMALLINT,
	PRIMARY KEY (department_id)
);
-- Examples to test query.
INSERT INTO departments (department_id)
VALUES 	(1),
		(2),
		(3);
-- Check inserted rows.
SELECT *
FROM departments;


DROP TABLE jobs;
CREATE TABLE jobs (
	job_id SMALLINT,
	PRIMARY KEY (job_id)
);
-- Examples to test query.
INSERT INTO jobs (job_id)
VALUES 	(1),
		(2);
-- Check inserted rows.
SELECT *
FROM jobs;


DROP TABLE employees;
CREATE TABLE employees (
	employee_id SMALLINT,
	first_name VARCHAR(20) DEFAULT '',
	last_name VARCHAR(20) DEFAULT '',
	email VARCHAR(30) DEFAULT '',
	phone_number VARCHAR(10) DEFAULT '',
	hire_date DATE DEFAULT NOW(),
	job_id SMALLINT,
	salary FLOAT DEFAULT 0,
	commission FLOAT DEFAULT 0,
	manager_id SMALLINT,
	department_id SMALLINT,
	PRIMARY KEY (employee_id),
	FOREIGN KEY (department_id) REFERENCES departments(department_id),
	FOREIGN KEY (job_id) REFERENCES jobs(job_id)
);
-- Examples to test query.
INSERT INTO employees (employee_id, department_id, job_id)
VALUES 	(1,1,1),
		(2,3,2),
		(3,1,5);
-- Check inserted rows.
SELECT *
FROM employees;

/*
16. Write a SQL statement to create a table employees including columns employee_id, first_name, last_name, job_id, salary and 
make sure that, the employee_id column does not contain any duplicate value at the time of insertion, and the foreign key column job_id, 
referenced by the column job_id of jobs table, can contain only those values which exist in the jobs table. 
The specialty of the statement is that the ON UPDATE CASCADE action allows you to perform the cross-table update and ON DELETE RESTRICT 
action rejects the deletion. The default action is ON DELETE RESTRICT.
*/

DROP TABLE jobs;
CREATE TABLE jobs (
	job_id SMALLINT,
	PRIMARY KEY (job_id)
);
-- Examples to test query.
TRUNCATE jobs;
INSERT INTO jobs (job_id)
VALUES 	(1),
		(2);
-- Check inserted rows.
SELECT *
FROM jobs;
	
DROP TABLE employees;
CREATE TABLE employees (
	employee_id INT PRIMARY KEY,
	first_name VARCHAR(20) DEFAULT '',
	last_name VARCHAR(20) DEFAULT '',
	job_id INT,
	salary FLOAT DEFAULT 0,
	CONSTRAINT fk_job
		FOREIGN KEY (job_id)
			REFERENCES jobs(job_id)
			ON UPDATE CASCADE
			ON DELETE RESTRICT
);
-- Examples to test query.
TRUNCATE employees;
INSERT INTO employees (employee_id, job_id)
VALUES 	(1,1),
		--(2,3),
		(3,1);
-- Testing "ON DELETE RESTRICT" clause.
DELETE FROM jobs
WHERE job_id = 1;
-- Check inserted rows.
SELECT *
FROM employees;
	
/*
17. Write a SQL statement to create a table employees including columns employee_id, first_name, last_name, job_id, salary and make sure 
that, the employee_id column does not contain any duplicate value at the time of insertion, and the foreign key column job_id, 
referenced by the column job_id of jobs table, can contain only those values which exist in the jobs table. The specialty of the 
statement is that the ON DELETE CASCADE that lets you allow to delete records in the employees(child) table that refers to a record in the
jobs(parent) table when the record in the parent table is deleted and the ON UPDATE RESTRICT actions reject any updates.
*/

DROP TABLE jobs;
CREATE TABLE jobs (
	job_id SMALLINT,
	PRIMARY KEY (job_id)
);
-- Examples to test query.
TRUNCATE jobs;
INSERT INTO jobs (job_id)
VALUES 	(1),
		(2),
		(3);
-- Check inserted rows.
SELECT *
FROM jobs;
	
DROP TABLE employees;
CREATE TABLE employees (
	employee_id INT PRIMARY KEY,
	first_name VARCHAR(20) DEFAULT '',
	last_name VARCHAR(20) DEFAULT '',
	job_id INT,
	salary FLOAT DEFAULT 0,
	CONSTRAINT fk_job
		FOREIGN KEY (job_id)
			REFERENCES jobs(job_id)
			ON UPDATE RESTRICT
			ON DELETE CASCADE
);
-- Examples to test query.
TRUNCATE employees;
INSERT INTO employees (employee_id, job_id)
VALUES 	(1,1),
		(2,3),
		(3,2);
-- Testing "ON DELETE CASCADE" clause.
DELETE FROM jobs
WHERE job_id = 1;
-- Testing "ON UPDATE RESTRICT" clause.
UPDATE jobs
SET job_id = 4
WHERE job_id = 3;
-- Check inserted rows.
SELECT *
FROM employees;
	
/*
18. Write a SQL statement to create a table employees including columns employee_id, first_name, last_name, job_id, salary and make sure 
that, the employee_id column does not contain any duplicate value at the time of insertion, and the foreign key column job_id, 
referenced by the column job_id of jobs table, can contain only those values which exist in the jobs table. 
The specialty of the statement is that the ON DELETE SET NULL action will set the foreign key column values in the child table(employees)
to NULL when the record in the parent table(jobs) is deleted, with a condition that the foreign key column in the child table must accept 
NULL values and the ON UPDATE SET NULL action resets the values in the rows in the child table(employees) to NULL values when the rows 
in the parent table(jobs) are updated.
*/

DROP TABLE jobs;
CREATE TABLE jobs (
	job_id SMALLINT,
	PRIMARY KEY (job_id)
);
-- Examples to test query.
TRUNCATE jobs;
INSERT INTO jobs (job_id)
VALUES 	(1),
		(2),
		(3);
-- Check inserted rows.
SELECT *
FROM jobs;
	
DROP TABLE employees;
CREATE TABLE employees (
	employee_id INT PRIMARY KEY,
	first_name VARCHAR(20) DEFAULT '',
	last_name VARCHAR(20) DEFAULT '',
	job_id INT,
	salary FLOAT DEFAULT 0,
	CONSTRAINT fk_job
		FOREIGN KEY (job_id)
			REFERENCES jobs(job_id)
			ON UPDATE SET NULL
			ON DELETE SET NULL
);
-- Examples to test query.
TRUNCATE employees;
INSERT INTO employees (employee_id, job_id)
VALUES 	(1,1),
		(2,3),
		(3,2);
-- Testing "ON DELETE SET NULL" clause.
DELETE FROM jobs
WHERE job_id = 1;
-- Testing "ON UPDATE SET NULL" clause.
UPDATE jobs
SET job_id = 4
WHERE job_id = 3;
-- Check inserted rows.
SELECT *
FROM employees;
	
/*
19. Write a SQL statement to create a table employees including columns employee_id, first_name, last_name, job_id, salary and make sure
that, the employee_id column does not contain any duplicate value at the time of insertion, and the foreign key column job_id, 
referenced by the column job_id of jobs table, can contain only those values which exist in the jobs table. 
The specialty of the statement is that, The ON DELETE NO ACTION and the ON UPDATE NO ACTION actions will reject the deletion and 
any updates.
*/

DROP TABLE jobs;
CREATE TABLE jobs (
	job_id SMALLINT,
	PRIMARY KEY (job_id)
);
-- Examples to test query.
TRUNCATE jobs;
INSERT INTO jobs (job_id)
VALUES 	(1),
		(2),
		(3);
-- Check inserted rows.
SELECT *
FROM jobs;
	
DROP TABLE employees;
CREATE TABLE employees (
	employee_id INT PRIMARY KEY,
	first_name VARCHAR(20) DEFAULT '',
	last_name VARCHAR(20) DEFAULT '',
	job_id INT,
	salary FLOAT DEFAULT 0,
	CONSTRAINT fk_job
		FOREIGN KEY (job_id)
			REFERENCES jobs(job_id)
			ON UPDATE NO ACTION
			ON DELETE NO ACTION
);
-- Examples to test query.
TRUNCATE employees;
INSERT INTO employees (employee_id, job_id)
VALUES 	(1,1),
		(2,3),
		(3,2);
-- Testing "ON DELETE SET NULL" clause.
DELETE FROM jobs
WHERE job_id = 1;
-- Testing "ON UPDATE SET NULL" clause.
UPDATE jobs
SET job_id = 4
WHERE job_id = 3;
-- Check inserted rows.
SELECT *
FROM employees;