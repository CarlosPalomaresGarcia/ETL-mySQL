/* Query 9 - ¿Cual es la palicula que mas veces ha sido alquilada?*/

SELECT film.title, COUNT(rental_id) AS 'VECES ALQUILADA'
FROM rental
INNER JOIN film ON rental.film_film_id = film.film_id
GROUP BY film.title
ORDER BY COUNT(rental_id) DESC
LIMIT 1;
