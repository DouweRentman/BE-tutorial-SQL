/*
Find the actor with the most common name. The metric is (How often is the first name in the actor table) X (How often is the last name in the actor table), get a list of actors ranked on how common their name is.
 */
SELECT
	full_name,
    (COUNT(*) OVER (PARTITION BY first_name)) *
    (COUNT(*) OVER (PARTITION BY last_name)) as nameScore
FROM actor
ORDER BY nameScore DESC;