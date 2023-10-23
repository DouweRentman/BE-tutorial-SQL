/*
In which category of movies is the most money earned with rental?
 */
SELECT category.name
	,COUNT(payment.amount) as total_payments_for_category
FROM category
JOIN film_category ON category.category_id = film_category.category_id
JOIN inventory ON film_category.film_id = inventory.film_id
JOIN rental ON inventory.inventory_id = rental.inventory_id
JOIN payment ON rental.rental_id = payment.rental_id
GROUP by category.category_id
ORDER BY total_for_category DESC
LIMIT 1;