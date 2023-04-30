/* Query 5: Buscar tres actores aleatorios*/

SELECT actor.full_name
FROM actor
ORDER BY RAND()
LIMIT 3;

