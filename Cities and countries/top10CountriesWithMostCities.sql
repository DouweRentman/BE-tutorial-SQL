SELECT
    COUNT(city.city) AS amountOfCities,
    country.country
FROM country
JOIN city
    ON city.country_id = country.country_id
GROUP BY city.country_id
ORDER BY amountOfCities DESC
LIMIT 10