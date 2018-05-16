-- 1a. You need a list of all the actors who have Display the first and last names of all actors from the table actor.

SELECT * FROM sakila.actor;

-- 1b. Display the first and last name of each actor in a single column in upper case letters. Name the column Actor Name.
SELECT 
    CONCAT(first_name, ' ', last_name) AS actor_name
FROM
    actor;