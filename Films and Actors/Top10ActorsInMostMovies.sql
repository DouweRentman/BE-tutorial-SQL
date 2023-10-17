SELECT actor.full_name
    ,COUNT(film_actor.actor_id) as numberOfMoviesPlayed
FROM film_actor
JOIN actor
	ON film_actor.actor_id = actor.actor_id
GROUP BY film_actor.actor_id
ORDER BY numberOfMoviesPlayed DESC
LIMIT 10