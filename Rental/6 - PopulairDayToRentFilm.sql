/*
Which day of the week is the most popular day of the week to rent a movie?
 */
SELECT
    WEEKDAY(rental.rental_date) as weekday
	,COUNT(WEEKDAY(rental.rental_date)) as count_of_weekdays
FROM rental
GROUP BY weekday
ORDER BY weekday DESC
LIMIT 1;