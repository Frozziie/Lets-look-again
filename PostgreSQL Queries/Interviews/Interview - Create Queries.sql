CREATE TABLE Movies(
	name VARCHAR(10) NOT NULL,
	release_date DATE NOT NULL,
	genre VARCHAR(15) NOT NULL,
	cost FLOAT NOT NULL,
	revenue FLOAT NOT NULL,
	PRIMARY KEY (name)
);

CREATE TABLE Actors(
	id INT NOT NULL,
	name VARCHAR(10) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE MoviesCasts(
	movie_name VARCHAR(10) NOT NULL,
	actor_id SMALLINT NOT NULL,
	compensation INT NOT NULL,
	FOREIGN KEY (movie_name) REFERENCES Movies(name),
	FOREIGN KEY (actor_id) REFERENCES Actors(id)
);

-- Data insertion for 'Movies' table.
INSERT INTO Movies(name, release_date, genre, cost, revenue)
VALUES	('Movie 1','2021-01-01','scifi',65,85),
		('Movie 2','2020-05-19','comedy',40,62),
		('Movie 3','2020-10-02','comedy',35,40),
		('Movie 4','2019-12-20','drama',0.5,0.75),
		('Movie 5','2019-01-30','scifi',110,250),
		('Movie 6','2021-02-07','action',100,80),
		('Movie 7','2020-03-22','drama',85,115),
		('Movie 8','1980-07-04','romance',70,80),
		('Movie 9','1999-09-20','scifi',80,80),
		('Movie 10','2021-03-10','action',135,200);

-- Data insertion for 'MoviesCasts' table.
INSERT INTO MoviesCasts(movie_name, actor_id, compensation)
VALUES	('Movie 10',2395,400000),
		('Movie 1',2394,100000),
		('Movie 1',2396,1500000),
		('Movie 2',2396,1700000),
		('Movie 7',2396,1000000),
		('Movie 3',2394,100000),
		('Movie 4',2395,200000),
		('Movie 2',2394,1100000),
		('Movie 9',2394,500000),
		('Movie 5',2394,1000000),
		('Movie 1',2395,200000),
		('Movie 2',2397,800000),
		('Movie 1',2397,700000),
		('Movie 2',2395,2200000),
		('Movie 8',2397,3000000),
		('Movie 6',2395,2000000);
		
-- Data insertion for 'Actors' table.
INSERT INTO Actors(id, name)
VALUES	(2394,'Actor 1'),
		(2395,'Actor 2'),
		(2396,'Actor 3'),
		(2397,'Actor 4'),
		(2398,'Actor 5');