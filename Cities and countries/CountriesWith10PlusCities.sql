SELECT
    COUNT(city.city) AS amountOfCities,
    country.country
FROM country
JOIN city
    ON city.country_id = country.country_id
GROUP BY city.country_id
HAVING COUNT(city.city) > 10
ORDER BY amountOfCities DESC;