-- Nº 1
SELECT location, date, total_cases, new_cases, total_deaths, population
FROM coviddeaths
ORDER BY 1,2

-- Nº 2
SELECT location, date, total_cases, total_deaths, total_deaths/total_cases::FLOAT*100 AS deathPercentage
FROM coviddeaths
WHERE location LIKE 'Argentina'
ORDER BY 1,2

-- Nº 3
SELECT location, date, population, total_cases, total_cases/population::FLOAT*100 AS percentPopulationInfected
FROM coviddeaths
WHERE location LIKE 'Argentina' AND  total_cases NOTNULL
ORDER BY 1,2

-- Nº 4
SELECT location, population, MAX(total_cases) as highestInfectionCount, MAX((total_cases/population::FLOAT))*100 AS percentPopulationInfected
FROM coviddeaths
WHERE total_cases NOTNULL AND population NOTNULL
GROUP BY location, population
ORDER BY percentPopulationInfected DESC

-- Nº 5
SELECT location, MAX(total_deaths)	as totalDeathCount
FROM coviddeaths
WHERE continent ISNULL
GROUP BY location
ORDER BY totalDeathCount DESC

-- Nº6
SELECT date, SUM(total_cases) AS total_cases, SUM(total_deaths) AS total_deaths, (SUM(total_deaths)/SUM(total_cases)::FLOAT)*100 AS deathPercentage
FROM coviddeaths
WHERE continent NOTNULL
GROUP BY date
ORDER BY date

-- Nº7
SELECT SUM(new_cases) as total_cases, SUM(new_deaths) as total_deaths, (SUM(total_deaths)/SUM(total_cases)::FLOAT)*100 AS deathPercentage
FROM coviddeaths
WHERE continent NOTNULL

-- Nº8
SELECT dea.location, dea.date, dea.population, vac.new_vaccinations, SUM(vac.new_vaccinations) OVER (PARTITION BY dea.location ORDER BY dea.location, dea.date) AS rollingPeopleVaccinated
FROM coviddeaths dea
JOIN covidvaccinations vac
	ON dea.location = vac.location
	AND dea.date = vac.date
WHERE dea.location LIKE 'Argentina'

-- Nº9 (CTE)
WITH PopvsVac (location, date, population, new_vaccinations, rollingPeopleVaccinated)
AS
(
SELECT dea.location, dea.date, dea.population, vac.new_vaccinations, SUM(vac.new_vaccinations) OVER (PARTITION BY dea.location ORDER BY dea.location, dea.date) AS rollingPeopleVaccinated
FROM coviddeaths dea
JOIN covidvaccinations vac
	ON dea.location = vac.location
	AND dea.date = vac.date
WHERE dea.location LIKE 'Argentina'
)
SELECT *, (rollingPeopleVaccinated/population::FLOAT)*100 AS testing
FROM PopvsVac
ORDER BY date DESC

-- Nº10 (TEMP TABLE)
DROP TABLE IF EXISTS PercentPopulationVaccinated;

CREATE TEMP TABLE PercentPopulationVaccinated (
	location VARCHAR(50),
	date DATE,
	population BIGINT,
	new_vaccinations INTEGER,
	rollingPeopleVaccinated INTEGER
);

INSERT INTO PercentPopulationVaccinated
SELECT dea.location, dea.date, dea.population, vac.new_vaccinations, SUM(vac.new_vaccinations) OVER (PARTITION BY dea.location ORDER BY dea.location, dea.date) AS rollingPeopleVaccinated
FROM coviddeaths dea
JOIN covidvaccinations vac
	ON dea.location = vac.location
	AND dea.date = vac.date
WHERE dea.location LIKE 'Argentina';

SELECT *, (rollingPeopleVaccinated/population::FLOAT)*100 AS testing
FROM PercentPopulationVaccinated
ORDER BY date DESC

-- Nº11 (VIEW)
DROP VIEW IF EXISTS PercentPopulationVaccinated;

CREATE VIEW PercentPopulationVaccinated AS
SELECT dea.location, dea.date, dea.population, vac.new_vaccinations, SUM(vac.new_vaccinations) OVER (PARTITION BY dea.location ORDER BY dea.location, dea.date) AS rollingPeopleVaccinated
FROM coviddeaths dea
JOIN covidvaccinations vac
	ON dea.location = vac.location
	AND dea.date = vac.date
WHERE dea.location LIKE 'Argentina';