SELECT
    city.city,
    country.country
FROM city
JOIN country
    ON city.country_id = country.country_id
ORDER BY city.city ASC;