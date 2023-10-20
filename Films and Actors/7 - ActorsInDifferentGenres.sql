/*
Versatile actors: create a query, that for each actor shows in how many different movies genres (category) the actor played
    After that, write a query that gives a comma separated list of the genre names for each actor
 */

SELECT ac1.full_name
	,COUNT(DISTINCT film_category.category_id) as amount_of_gernes

FROM actor ac1
JOIN film_actor ON ac1.actor_id = film_actor.actor_id
JOIN film_category ON film_actor.film_id = film_category.film_id
JOIN category ON film_category.category_id = category.category_id
GROUP BY ac1.actor_id
ORDER BY `ac1`.`full_name` ASC

-- Query with comma seperated list

SELECT ac1.full_name
	,COUNT(DISTINCT film_category.category_id) as amount_of_gernes
	, GROUP_CONCAT(DISTINCT  category.name) as genre_name
FROM actor ac1
JOIN film_actor ON ac1.actor_id = film_actor.actor_id
JOIN film_category ON film_actor.film_id = film_category.film_id
JOIN category ON film_category.category_id = category.category_id
GROUP BY ac1.actor_id
ORDER BY `ac1`.`full_name` ASC;
