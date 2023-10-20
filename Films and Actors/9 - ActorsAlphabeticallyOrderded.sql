SELECT actor.full_name
, ROW_NUMBER() OVER ( ORDER BY actor.first_name, actor.last_name ) as position_in_line
	,  LEAD(actor.full_name) OVER ( ORDER BY actor.first_name, actor.last_name ) AS next_act
FROM actor
ORDER BY actor.first_name,actor.last_name