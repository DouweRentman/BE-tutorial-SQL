/*
Which actor earned on average the most per movie?
 */
SELECT DISTINCT
   film_actor.actor_id
    ,SUM(payment.amount / COUNT(DISTINCT film_actor.actor_id)) OVER (PARTITION BY film_actor.actor_id) AS total_amount_per_actor
	,counted_actors.film_amount
    , (SUM(payment.amount / COUNT(DISTINCT film_actor.actor_id)) OVER (PARTITION BY film_actor.actor_id)) /counted_actors.film_amount as AVG_earning_per_movie
FROM `payment`
JOIN rental ON payment.rental_id = rental.rental_id
JOIN inventory ON rental.inventory_id = inventory.inventory_id
JOIN film_actor ON inventory.film_id = film_actor.film_id
JOIN (SELECT
      COUNT(fa2.film_id) as film_amount
      ,fa2.actor_id
      FROM film_actor fa2
      GROUP BY fa2.actor_id) as counted_actors
      ON film_actor.actor_id = counted_actors.actor_id
GROUP BY film_actor.film_id, film_actor.actor_id
ORDER BY AVG_earning_per_movie DESC
LIMIT 1;