/*
We assume the database is generated out of random data. To verify this we want to know which percentage of the movies is adult rated (rating NC-17 or R) and see if that result makes sense. Get that query
 */

SELECT ((SUM(IF(film.rating = 'NC-17' OR film.rating = 'R',1,0))) /
        (COUNT(film.film_id)) * 100) as percentage_adult
FROM film;
