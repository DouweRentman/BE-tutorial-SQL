/*
Find the top 10 actors that played in the most movies, list for each top 10 actor in how many movies he played
 */
SELECT actor.full_name
    ,COUNT(film_actor.actor_id) as numberOfMoviesPlayed
FROM film_actor
JOIN actor
	ON film_actor.actor_id = actor.actor_id
GROUP BY film_actor.actor_id
ORDER BY numberOfMoviesPlayed DESC
LIMIT 10