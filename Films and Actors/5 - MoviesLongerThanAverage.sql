/*
Not in a hurry: list all movies that are longer than average in their genre
 */
SELECT film.title
	,film.film_id
    ,film_category.category_id
    ,film.length
FROM film
JOIN film_category on film.film_id = film_category.film_id
WHERE film.length > (
    SELECT AVG(f1.length)
    FROM film f1
    JOIN film_category fc1 on f1.film_id = fc1.film_id
    WHERE fc1.category_id = film_category.category_id
    GROUP BY fc1.category_id
    )
   AND film.rental_rate > (
    SELECT AVG(f1.rental_rate)
    FROM film f1
    JOIN film_category fc1 on f1.film_id = fc1.film_id
    WHERE fc1.category_id = film_category.category_id
    GROUP BY fc1.category_id
    )
AND film_category.category_id = 1
ORDER BY film_category.category_id ASC, length;