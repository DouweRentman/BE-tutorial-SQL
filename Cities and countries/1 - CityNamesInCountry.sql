--Get a list city names and the name of the country they are in, sorted alphabetically on city name

SELECT
    city.city,
    country.country
FROM city
JOIN country
    ON city.country_id = country.country_id
ORDER BY city.city ASC;