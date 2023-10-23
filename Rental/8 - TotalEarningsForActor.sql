/*
The revenue from a rental job, is divided evenly over all actors playing in that movie. Write a query that shows the total earnings for each actor.
 */
SELECT DISTINCT
   film_actor.actor_id
    ,SUM(payment.amount / COUNT(DISTINCT film_actor.actor_id)) OVER (PARTITION BY film_actor.actor_id) AS total_amount_per_actor
FROM `payment`
JOIN rental ON payment.rental_id = rental.rental_id
JOIN inventory ON rental.inventory_id = inventory.inventory_id
JOIN film_actor ON inventory.film_id = film_actor.film_id
GROUP BY film_actor.film_id, film_actor.actor_id
ORDER BY film_actor.actor_id;