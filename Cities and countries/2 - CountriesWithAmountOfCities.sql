-- Get a list of countries, with a column for each country how many cities there are in each country, ordered by country name
SELECT
    COUNT(city.city) AS amountOfCities,
    country.country
FROM country
JOIN city
    ON city.country_id = country.country_id
GROUP BY city.country_id
ORDER BY country.country