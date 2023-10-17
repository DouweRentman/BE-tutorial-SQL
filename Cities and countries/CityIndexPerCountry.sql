SELECT co.country, GROUP_CONCAT(DISTINCT Pagina) AS cityPages
FROM country co
JOIN (
        SELECT city.city_id,
        city.country_id,
        CEILING( (ROW_NUMBER() OVER ( ORDER BY city.city ) / 10)) as Pagina
	FROM city
	GROUP BY city.city
	ORDER by Pagina ASC
	) cit
on co.country_id = cit.country_id
GROUP BY co.country;