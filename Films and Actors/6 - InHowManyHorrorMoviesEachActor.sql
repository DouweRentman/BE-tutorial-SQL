-- 11 is number for Horror film category
SELECT full_name
	,COUNT(film_actor.film_id) AS amount_of_horror_movies
FROM actor ac1
JOIN film_actor ON ac1.actor_id = film_actor.actor_id
JOIN film_category ON film_actor.film_id = film_category.film_id
WHERE film_category.category_id = 11
GROUP BY ac1.actor_id;

-- USe left joins for adding 0 values
SELECT full_name
	,SUM(IF(film_category.category_id = 11, 1, 0)) AS amount_of_horror_movies
FROM actor ac1
LEFT JOIN film_actor ON ac1.actor_id = film_actor.actor_id
LEFT JOIN film_category ON film_actor.film_id = film_category.film_id AND film_category.category_id = 11
GROUP BY ac1.actor_id
ORDER BY `amount_of_horror_movies` DESC;