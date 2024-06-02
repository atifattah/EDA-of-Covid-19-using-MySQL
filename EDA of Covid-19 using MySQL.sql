create database covid;

use covid;

-- Q1. Shows likelihood of a person would be died in case of she has been infected?


SELECT location, SUM(dead), SUM(infected), (SUM(dead)/SUM(infected) * 100) AS dead_infected_likelihood
FROM datacovid_data
WHERE location LIKE "%Canada%"
GROUP BY location
ORDER BY dead_infected_likelihood desc;

-- Q2. Shows likelihood of a person would be died in case of she has been vaccinated?

SELECT location, SUM(dead), SUM(vaccinated), (SUM(dead)/SUM(vaccinated) * 100) AS dead_vaccinated_likelihood
FROM datacovid_data
WHERE location LIKE "%Canada%"
GROUP BY location
ORDER BY dead_vaccinated_likelihood desc;


-- Q3. Shows likelihood of a person would be infected in case of she has been vaccinated?

SELECT location, SUM(infected), SUM(vaccinated), (SUM(infected)/SUM(vaccinated) * 100) AS infected_vaccinated_likelihood
FROM datacovid_data
GROUP BY location
ORDER BY infected_vaccinated_likelihood desc;


-- Q4. Which country does have the highest death rate compare to population?

SELECT location, population, SUM(dead), (SUM(dead)/population * 100) AS Highestrate
FROM datacovid_data
GROUP BY location, population
ORDER BY Highestrate desc;