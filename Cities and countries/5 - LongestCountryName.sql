-- Get the country with the longest country name
SELECT *
FROM country
ORDER BY LENGTH(country.country) DESC
LIMIT 1;