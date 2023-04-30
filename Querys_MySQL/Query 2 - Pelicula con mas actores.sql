/* Query 2: ¿Cual es la pelicula con mas actores?*/

SELECT film.title AS 'FILM', COUNT(actor.actor_id) AS 'NUMBER OF FILMS'
FROM film
LEFT JOIN film_actor ON film.film_id = film_actor.film_film_id
LEFT JOIN actor ON actor.actor_id = film_actor.actor_actor_id
GROUP BY film.title
ORDER BY COUNT(actor.actor_id) DESC;