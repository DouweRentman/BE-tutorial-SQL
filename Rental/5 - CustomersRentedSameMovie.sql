/*
Which customers rented the same movie three or more times?
 */

SELECT customer.first_name
    ,customer.last_name
    , inventory.film_id
    , COUNT(inventory.film_id) as amount_occured
FROM customer
JOIN rental ON customer.customer_id = rental.customer_id
JOIN inventory ON rental.inventory_id = inventory.inventory_id
GROUP BY inventory.film_id, customer.customer_id
HAVING COUNT(inventory.film_id) >= 2;