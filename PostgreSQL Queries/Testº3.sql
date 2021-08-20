CREATE TABLE movies(
	budget INTEGER,
	company VARCHAR(80),
	country VARCHAR(30),
	director VARCHAR(35),
	genre VARCHAR(10),
	gross BIGINT,
	movie VARCHAR(85),
	rating VARCHAR(15),
	released DATE,
	runtime SMALLINT,
	score FLOAT,
	star VARCHAR(30),
	votes INTEGER,
	writer VARCHAR(35)
);

ALTER TABLE movies
ADD COLUMN director VARCHAR(35);

DROP TABLE movies;
TRUNCATE TABLE movies;

SELECT * FROM movies;