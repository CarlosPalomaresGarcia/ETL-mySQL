/* Query 3: Buscar un titulo aleatorio dentro de film*/

SELECT film.title
FROM film
ORDER BY RAND()
LIMIT 1;