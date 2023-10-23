/*
Write a query that finds out: Is there an overbooking in the system? That means two overlapping rentals of the same inventory time.
 */
SELECT r1.rental_id, r2.rental_id
FROM rental r1, rental r2
WHERE (
    r1.rental_id <> r2.rental_id
    AND
    r1.inventory_id = r2.inventory_id
	AND
    (
		r1.rental_date <= r2.return_date
		AND
		r1.return_date >= r2.rental_date
	)
);