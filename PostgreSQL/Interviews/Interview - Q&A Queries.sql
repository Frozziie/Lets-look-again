/* 
Question Nº0
Take a look at the tables and describe what they represent and how they relate to each other.
Which tables appear to contain keys, and what are they?
Do you foresee any potential issues with these keys? 
*/

/* 
First table represents movies data with the column name as the primary key.
Second table represents the salary of every actor in X movie with the colum movie_name as foreign key from table 'Movies' and actor_id from the table 'Actors'.
Third table represents data about the actors with id as primary key.

The column 'name' has the same title value in 'Movies' and 'Actors' table.
*/

----------------------------------------------------------------------------------------

/*
Question Nº1
Provide SQL that gets the list of unprofitable movies, along with how much money they lost.
*/

SELECT 	*,
		cost-revenue as lost
FROM movies
WHERE cost > revenue;

----------------------------------------------------------------------------------------

/*
Question Nº2.1
Calculate the total profit per year. Include total cost and revenue in the result, and order the results chronologically.
Include data on how many movies were produced each year.

Note: In the SQL engine we’re using, parts of dates can be extracted with SELECT EXTRACT(part FROM date), where part is one of the following:
DAYOFWEEK, DAY, DAYOFYEAR, WEEK, MONTH, QUARTER, YEAR.
*/

SELECT 	EXTRACT(YEAR FROM release_date) as year, 
		COUNT(movies) as total_movies, 
		SUM(cost) as total_costs, 
		SUM(revenue) as total_revenue, 
		SUM(revenue)-SUM(cost) as profit
FROM movies
GROUP BY year
ORDER BY year;

----------------------------------------------------------------------------------------

/*
Question Nº2.2
If these tables had millions of rows in them, how would you spot check your answer to question 2.1, to ensure both the input data and your SQL were correct? 
(describing the process is fine, rather than explicitly writing SQL)
*/

/*
- I would check if costs/revenue columns have negative values.
- I would check totals for separate (total movies/costs/revenue/profit) then validate with the dimensionality.
*/

----------------------------------------------------------------------------------------

/*
Question Nº3
For each actor, calculate the total percentage of movie costs that went towards their compensation ((total compensation)/(total movie costs)), 
for movies that they were in. Revenue for movies that an actor was not in should not be included in that actor's calculation. 
If an actor was not in any movies, list 0% as their total percentage of movie costs. Format the result as a percentage string with 1 decimal place (eg. ""42.1%""). 
Order by each actor's total compensation."
*/

-- SUM(mc.compensation) as total_compensation
-- SUM(cost) as total_costs
-- SUM(movies.revenue) as total_revenue
-- TO_CHAR((SUM(moviescasts.compensation)/SUM(movies.cost*1000000))*100,'99.9%')

SELECT 	actors.name,
		TO_CHAR(CASE WHEN SUM(movies.cost) IS NOT NULL
					THEN (SUM(moviescasts.compensation)/SUM(movies.cost*1000000))
						ELSE 0
					END *100,'0.9%') as movie_compensation_costs
FROM actors
LEFT JOIN moviescasts
	ON actors.id = moviescasts.actor_id
LEFT JOIN movies
	ON moviescasts.movie_name = movies.name
GROUP BY actors.name
ORDER BY SUM(moviescasts.compensation) DESC;

----------------------------------------------------------------------------------------

/*
Question Nº4
For each movie, include a column that contains 'yes' if the movie made more revenue than the last movie that was released before it, and 'no' if it did not.
Include all columns in the original table in the output table as well, and order results chronologically.
*/

SELECT 	*,
		LAG(revenue,1) OVER(ORDER BY release_date) as previous_movie_revenue,
		CASE WHEN revenue > LAG(revenue,1) OVER(ORDER BY release_date)
			THEN 'yes'
			ELSE 'no'
		END	as flag_higher_revenue
FROM movies
ORDER BY release_date;

