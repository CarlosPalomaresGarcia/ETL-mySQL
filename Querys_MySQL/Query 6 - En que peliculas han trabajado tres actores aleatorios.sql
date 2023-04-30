/* Query 6: ¿En que peliculas han trabajado tres actores aleatorios?*/

SELECT film.title, actor.full_name
FROM film, actor
WHERE actor.full_name = 'Pitt James' AND actor.full_name = 'Mckellen Gene' AND actor.full_name = 'Pinkett Penelope';
