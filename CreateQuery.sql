CREATE TABLE CovidDeaths (
	iso_code VARCHAR(10),
	continent VARCHAR(50),
	location VARCHAR(50),
	date DATE,
	population BIGINT,
	total_cases BIGINT,
	new_cases INTEGER,
	new_cases_smoothed FLOAT,
	total_deaths INTEGER,
	new_deaths INTEGER,
	new_deaths_smoothed FLOAT,
	total_cases_per_million FLOAT,
	new_cases_per_million FLOAT,
	new_cases_smoothed_per_million FLOAT,
	total_deaths_per_million FLOAT,
	new_deaths_per_million FLOAT,
	new_deaths_smoothed_per_million FLOAT,
	reproducion_rate FLOAT,
	icu_patients INTEGER,
	icu_patients_per_million FLOAT,
	hosp_patients INTEGER,
	hosp_patients_per_million FLOAT,
	weekly_icu_admissions FLOAT,
	weekly_icu_admissions_per_million FLOAT,
	weekly_hosp_admissions FLOAT,
	weekly_hosp_admissions_per_million FLOAT
)

CREATE TABLE CovidVaccinations(
	iso_code VARCHAR(10),
	continent VARCHAR(50),
	location VARCHAR(50),
	date DATE,
	new_tests INTEGER,
	total_tests BIGINT,
	total_tests_per_thousand FLOAT,
	new_tests_per_thousand FLOAT,
	new_tests_smoothed INTEGER,
	new_tests_smoothed_per_thousand FLOAT,
	positive_rate FLOAT,
	tests_per_case FLOAT,
	tests_units VARCHAR(25),
	total_vaccinations INTEGER,
	people_vaccinated INTEGER,
	people_fully_vaccinated INTEGER,
	new_vaccinations INTEGER,
	new_vaccinations_smoothed INTEGER,
	total_vaccinations_per_hundred FLOAT,
	people_vaccinated_per_hundred FLOAT,
	people_fully_vaccinated_per_hundred FLOAT,
	new_vaccinations_smoothed_per_million INTEGER,
	stringency_index FLOAT,
	population_density FLOAT,
	median_age FLOAT,
	aged_65_older FLOAT,
	aged_70_older FLOAT,
	gdp_per_capita FLOAT,
	extreme_poverty FLOAT,
	cardiovasc_death_rate FLOAT,
	diabetes_prevalence FLOAT,
	female_smokers FLOAT,
	male_smokers FLOAT,
	handwashing_facilities FLOAT,
	hospital_beds_per_thousand FLOAT,
	life_expectancy FLOAT,
	human_development_index FLOAT
)
