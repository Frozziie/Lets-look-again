/*
1. Write a SQL statement to rename the table countries to country_new.
*/

CREATE TABLE countries (
	country_id INT
);

ALTER TABLE countries
RENAME TO country_new;

----------------------------------------------------------------------------------------------------------------------------------------

/*
2. Write a SQL statement to add a column region_id to the table locations.
*/

DROP TABLE locations;
CREATE TABLE locations (
	location_id INT,
	city VARCHAR(30),
	state_province VARCHAR(30),
	country_id INT
);

ALTER TABLE locations
ADD COLUMN region_id INT;

----------------------------------------------------------------------------------------------------------------------------------------

/*
3. Write a SQL statement to change the data type of the column region_id to text in the table locations.
*/

ALTER TABLE locations
ALTER COLUMN region_id SET DATA TYPE VARCHAR(2);

----------------------------------------------------------------------------------------------------------------------------------------

/*
4. Write a SQL statement to drop the column city from the table locations.
*/

ALTER TABLE locations
DROP COLUMN city;

----------------------------------------------------------------------------------------------------------------------------------------

/*
5. Write a SQL statement to change the name of the column state_province to state, keeping the data type and size same.
*/

ALTER TABLE locations
RENAME COLUMN state_province TO state;

----------------------------------------------------------------------------------------------------------------------------------------

/*
6. Write a SQL statement to add a primary key for the columns location_id in the locations table.
*/

ALTER TABLE locations
ADD PRIMARY KEY (location_id);

----------------------------------------------------------------------------------------------------------------------------------------

/*
7. Write a SQL statement to add a primary key for a combination of columns location_id and country_id.
*/

-- Drop existing primary key.
ALTER TABLE locations
DROP CONSTRAINT locations_pkey;

ALTER TABLE locations
ADD PRIMARY KEY (location_id, country_id);

----------------------------------------------------------------------------------------------------------------------------------------

/*
8. Write a SQL statement to drop the existing primary from the table locations on a combination of columns location_id and country_id.
*/

ALTER TABLE locations
DROP CONSTRAINT locations_pkey;

----------------------------------------------------------------------------------------------------------------------------------------

/*
9. Write a SQL statement to add a foreign key on job_id column of job_history table referencing to the primary key job_id of jobs table.
*/

CREATE TABLE jobs (
	job_id INT UNIQUE
);

CREATE TABLE job_history (
	job_id INT
);

ALTER TABLE job_history
ADD
FOREIGN KEY (job_id)
REFERENCES jobs (job_id);

----------------------------------------------------------------------------------------------------------------------------------------

/*
10. Write a SQL statement to add a foreign key constraint named fk_job_id on job_id column of job_history table referencing to the primary key job_id of jobs table.
*/

-- Drop existing foreign key.
ALTER TABLE job_history
DROP CONSTRAINT job_history_job_id_fkey;

ALTER TABLE job_history
ADD CONSTRAINT fk_job_id
FOREIGN KEY (job_id)
REFERENCES jobs (job_id);

----------------------------------------------------------------------------------------------------------------------------------------

/*
11. Write a SQL statement to drop the existing foreign key fk_job_id from job_history table on job_id column which is referencing to the job_id of jobs table.
*/

ALTER TABLE job_history
DROP CONSTRAINT fk_job_id;

----------------------------------------------------------------------------------------------------------------------------------------

/*
12. Write a SQL statement to add an index named index_job_id on job_id column in the table job_history.
*/

CREATE UNIQUE INDEX index_job_id ON job_history (
	job_id
);

ALTER TABLE job_history
ADD CONSTRAINT index_job_id
PRIMARY KEY USING INDEX index_job_id;


----------------------------------------------------------------------------------------------------------------------------------------

/*
13. Write a SQL statement to drop the index indx_job_id from job_history table.
*/

ALTER TABLE job_history
DROP CONSTRAINT index_job_id;