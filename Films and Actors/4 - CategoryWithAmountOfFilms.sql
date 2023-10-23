/*
Films are categorized in genre. List for each genre how many movies there are.
In the same query, also add a column the average length per movie
 */
SELECT category.name
	,COUNT(film_category.film_id) as AmountOfMoviesInCategory
    ,AVG(film.length)
FROM category
JOIN film_category ON category.category_id = film_category.category_id
JOIN film ON film_category.film_id = film.film_id
GROUP BY category.name;