use sakila;
SELECT 
    title, language_id
FROM
    film
WHERE
    (title LIKE 'K%')
        OR (title LIKE 'Q%') AND (language_id = 1);