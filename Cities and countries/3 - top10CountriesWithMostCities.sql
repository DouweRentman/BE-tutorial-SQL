-- Get the top 10 ranking countries with the most cities, ordered by number of cities
SELECT
    COUNT(city.city) AS amountOfCities,
    country.country
FROM country
JOIN city
    ON city.country_id = country.country_id
GROUP BY city.country_id
ORDER BY amountOfCities DESC
LIMIT 10