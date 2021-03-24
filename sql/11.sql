/* 
 * Use a JOIN to list the number of copies of each film in the inventory system that begins with the letter h.
 * Use tables inventory and film.
 * Order by film title alphabetically.
 */

SELECT
    film_id,
    title,
    COUNT(inventory_id) AS count
    FROM film
    INNER JOIN inventory USING (film_id)
    WHERE title LIKE 'H%'
    GROUP BY film_id, title
    ORDER BY film_id DESC
;
