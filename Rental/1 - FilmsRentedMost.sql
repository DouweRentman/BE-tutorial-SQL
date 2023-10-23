/*
Blockbuster: Query the films that have been rented out the most often?
 */
SELECT
	film.title
    , COUNT(rental.rental_id) as amount_of_times_rented
FROM film
JOIN inventory ON film.film_id = inventory.film_id
JOIN rental ON inventory.inventory_id = rental.inventory_id
GROUP BY film.film_id
ORDER BY amount_of_times_rented DESC