SELECT (FN.firstNameCount * LN.lastNameCount) as finalScore
    ,FN.full_name
FROM (
    SELECT COUNT(actor.first_name) as firstNameCount
    ,full_name
    ,actor.actor_id
    FROM actor
    GROUP BY actor.first_name
) AS FN
JOIN (
    SELECT COUNT(actor.last_name) as lastNameCount
    ,actor.actor_id
    FROM actor
    GROUP BY actor.last_name
) AS LN
WHERE FN.actor_id = LN.actor_id
ORDER BY finalScore DESC;