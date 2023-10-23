/*
Which customer rented the most films?
 */

SELECT CONCAT(customer.first_name, ' ', customer.last_name)
	, COUNT(rental.customer_id) as amount_of_films_rented
FROM customer
JOIN rental on customer.customer_id = rental.customer_id
GROUP BY customer.customer_id
ORDER BY amount_of_films_rented DESC
LIMIT 1;