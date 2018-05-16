-- 6a. Use JOIN to display the first and last names, as well as the address, of each staff member. Use the tables staff and address:
SELECT 
    staff.first_name, staff.last_name, address.address
FROM
    staff
        INNER JOIN
    address ON staff.address_id = address.address_id;
    
-- 6b. Use JOIN to display the total amount rung up by each staff member in August of 2005. Use tables staff and payment.
SELECT 
    staff_id, SUM(amount) AS aug_total
FROM
    payment
WHERE
    payment_date LIKE '2005-08%'
GROUP BY staff_id;

-- 6c. List each film and the number of actors who are listed for that film. Use tables film_actor and film. Use inner join.
SELECT 
    film_actor.film_id, film.title, COUNT(*) AS total_actors
FROM
    film_actor
        INNER JOIN
    film ON (film_actor.film_id = film.film_id)
GROUP BY film_id;

-- 6d. How many copies of the film Hunchback Impossible exist in the inventory system?
SELECT 
    title,
    (SELECT 
            COUNT(*)
        FROM
            inventory
        WHERE
            film.film_id = inventory.film_id) AS 'Number of Copies'
FROM
    film
HAVING title = 'Hunchback Impossible';

-- 6e. Using the tables payment and customer and the JOIN command, list the total paid by each customer. List the customers alphabetically by last name:
SELECT 
    customer.last_name,
    customer.first_name,
    SUM(amount) AS 'Total Spent'
FROM
    customer
        INNER JOIN
    payment ON (customer.customer_id = payment.customer_id)
GROUP BY last_name
ORDER BY last_name;