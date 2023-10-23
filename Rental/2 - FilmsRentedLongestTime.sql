/*
Query films sorted by time, that have been rented out the longest period of time (total)
 */
SELECT film.title
    , DATEDIFF(rental.return_date, rental.rental_date) as days_rented
FROM film
JOIN inventory ON film.film_id = inventory.film_id
JOIN rental ON inventory.inventory_id = rental.inventory_id
ORDER BY days_rented DESC;