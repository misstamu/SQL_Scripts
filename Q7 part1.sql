-- 7a. Use subqueries to display the titles of movies starting with the letters K and Q whose language is English. --
use sakila;
SELECT 
    title, language_id
FROM
    film
WHERE
    (title LIKE 'K%')
        OR (title LIKE 'Q%') AND (language_id = 1);
  
  
-- 7b. Use subqueries to display all actors who appear in the film Alone Trip. --
use sakila;

SELECT 
    actor_id, first_name, last_name
FROM
    actor
WHERE
    actor_id IN 
    (SELECT actor_id
        FROM
            film_actor
        WHERE
            film_id IN 
            (SELECT film_id
                FROM
                    film
                WHERE
                    title LIKE 'Alone Trip'));
 
 
-- 7c. You want to run an email marketing campaign in Canada, for which you will need 
-- the names and email addresses of all Canadian customers. Use joins to retrieve this information.
SELECT 
    first_name, last_name, email
FROM
    customer
WHERE
    address_id IN (SELECT 
            address_id
        FROM
            address
        WHERE
            city_id IN (SELECT 
                    city_id
                FROM
                    city
                WHERE
                    country_id IN (SELECT 
                            country_id
                        FROM
                            country
                        WHERE
                            country = 'Canada')));

                            
-- 7d. Identify all movies categorized as famiy films.
SELECT 
    film_id, title
FROM
    film
WHERE
    film_id IN (SELECT 
            film_id
        FROM
            film_category
        WHERE
            category_id IN (SELECT 
                    category_id
                FROM
                    category
                WHERE
                    name = 'Family'));