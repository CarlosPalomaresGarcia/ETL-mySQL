/* Query 8: ¿Cuantas peliculas se alquilaron en 2005?*/

SELECT film.title AS 'FILM', rental.return_date
FROM film
INNER JOIN rental ON film.film_id = rental.film_film_id
WHERE rental.return_date LIKE '2005%'
ORDER BY film.title ASC;