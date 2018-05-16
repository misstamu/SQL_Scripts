-- 8a. In your new role as an executive, you would like to have an easy way of viewing the Top five genres by gross revenue. top_five

CREATE VIEW top_five AS
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
    
-- 8b. How would you display the view that you created in 8a?
SELECT * FROM sakila.top_five;


-- 8c. You find that you no longer need the view top_five_genres. Write a query to delete it.
drop view sakila.top_five;