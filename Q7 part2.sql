-- 7e. Display the most frequently rented movies in descending order.
SELECT 
    film.title, COUNT(*) AS 'Number of Rentals'
FROM
    film
        INNER JOIN
    inventory ON film.film_id = inventory.film_id
        INNER JOIN
    rental ON inventory.inventory_id = rental.inventory_id
GROUP BY title
ORDER BY COUNT(*) DESC;


-- 7f. Write a query to display how much business, in dollars, each store brought in.
SELECT 
    staff_id, SUM(amount) AS 'Total Revenue'
FROM
    payment
GROUP BY staff_id;

-- 7g. Write a query to display for each store its store ID, city, and country.
SELECT 
    store.store_id, address.address, city.city, country.country
FROM
    store
        JOIN
    address ON store.address_id = address.address_id
        JOIN
    city ON address.city_id = city.city_id
        JOIN
    country ON city.country_id = country.country_id;


-- 7g. Write a query to display for each store its store ID, city, and country.
SELECT 
    store.store_id, address.address, city.city, country.country
FROM
    store
        JOIN
    address ON store.address_id = address.address_id
        JOIN
    city ON address.city_id = city.city_id
        JOIN
    country ON city.country_id = country.country_id;

    
-- 7h. List the top five genres in gross revenue in descending order. 
SELECT 
    category.name, SUM(amount) AS 'Total Revenue'
FROM
    category
        INNER JOIN
    film_category ON category.category_id = film_category.category_id
        INNER JOIN
    inventory ON film_category.film_id = inventory.film_id
        INNER JOIN
    rental ON inventory.inventory_id = rental.inventory_id
        INNER JOIN
    payment ON rental.rental_id = payment.rental_id
GROUP BY name
ORDER BY SUM(amount) DESC
LIMIT 5;
