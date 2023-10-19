/*
We are making a city guide book listing all cities: 10 cities on each page, alphabetically sorted, starting on page 1 with “A Corua (La Corua)”.
Make a query that shows you on which page each city is. Do not make use of the sorting of the ID’s (in general, ID’s are meaningless)
 */
SELECT
    city.city,
    CEILING((ROW_NUMBER() OVER ( ORDER BY city.city ) / 10)) as Pagina
FROM city
GROUP BY city.city
ORDER by city.city ASC;