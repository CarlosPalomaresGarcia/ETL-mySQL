/* Query 1: ¿Que actor es el que mas peliculas ha hecho?*/

SELECT actor.full_name AS 'ACTOR', COUNT(actor.actor_id) AS 'NUMBER OF FILMS'
FROM actor
LEFT JOIN film_actor ON actor.actor_id = film_actor.actor_actor_id
LEFT JOIN film ON film_actor.film_film_id = film.film_id
GROUP BY actor.actor_id
ORDER BY COUNT(actor.actor_id) DESC;