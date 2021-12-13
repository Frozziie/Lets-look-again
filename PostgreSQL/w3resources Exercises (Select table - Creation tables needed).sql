-- Create structure
CREATE TABLE employees (
	employee_id INT,
	first_name VARCHAR(20) DEFAULT '',
	last_name VARCHAR(20) DEFAULT '',
	email VARCHAR(30) DEFAULT '',
	phone_number VARCHAR(20) DEFAULT '',
	hire_date DATE DEFAULT NOW(),
	job_id VARCHAR(15) DEFAULT '',
	salary FLOAT DEFAULT 0,
	commission_pct FLOAT DEFAULT 0,
	manager_id INT,
	department_id INT
);

-- Import data from CSV
COPY employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
FROM 'C:\Users\LeoGa\Desktop\Employees CSV.csv'
DELIMITER '|'
CSV HEADER;

-- Clean white spaces.
UPDATE employees
SET first_name = REPLACE(first_name,' ',''),
	last_name = REPLACE(last_name,' ',''),
	email = REPLACE(email,' ',''),
	phone_number = REPLACE(phone_number,' ',''),
	job_id = REPLACE(job_id,' ','');
	
----------------------------------------------------------------------------------------------------------------------------------------

-- Create structure
CREATE TABLE departments (
	department_id INT,
	department_name VARCHAR(30),
	manager_id INT,
	location_id INT
);

-- Import data from CSV
COPY departments (department_id, department_name, manager_id, location_id)
FROM 'C:\Users\LeoGa\Desktop\Departments CSV.csv'
DELIMITER '|'
CSV HEADER;

-- Clean white spaces.
UPDATE departments
SET department_name = REPLACE(department_name,' ','');

----------------------------------------------------------------------------------------------------------------------------------------