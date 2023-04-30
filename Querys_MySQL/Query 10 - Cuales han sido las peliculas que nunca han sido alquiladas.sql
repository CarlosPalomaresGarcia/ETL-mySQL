/* Query 10 - ¿Cuales han sido las peliculas que nunca han sido alquiladas?*/

SELECT film.title
FROM film
LEFT JOIN rental ON film.film_id = rental.film_film_id
WHERE rental.return_date IS NULL;