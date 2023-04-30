/* Query 7: ¿Cuales son los titulos de las peliculas que tengo en stock*/

SELECT film.title AS 'FILM', rental.inventory_id
FROM film
INNER JOIN rental ON film.film_id = rental.film_film_id
ORDER BY film.title ASC;