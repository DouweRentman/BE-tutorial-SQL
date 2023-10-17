SELECT
    city.city,
    CEILING((ROW_NUMBER() OVER ( ORDER BY city.city ) / 10)) as Pagina
FROM city
GROUP BY city.city
ORDER by city.city ASC;