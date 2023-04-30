/* Query 4: Informacion sobre la pelicula. Genero, rating, longuitudy lista de actores*/

SELECT film.title, film.genre, film.rating, film.length, actor.full_name
FROM film, actor
WHERE title = 'Jungle closer'
ORDER BY actor.full_name;
