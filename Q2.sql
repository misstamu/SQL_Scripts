-- 2a. You need to find the ID number, first name, and last name of an actor, of whom you know only the first name, "Joe."

SELECT 
    actor_id, first_name, last_name
FROM
    actor
WHERE
    first_name LIKE 'JOE';
    
-- 2b. Find all actors whose last name contain the letters GEN:
SELECT 
    actor_id, first_name, last_name
FROM
    actor
WHERE
    last_name LIKE '%GEN%';
    
-- 2c. Find all actors whose last names contain the letters LI. This time, order the rows by last name and first name, in that order:
SELECT 
    last_name, first_name
FROM
    actor
WHERE
    last_name LIKE '%LI%';
    
-- 2d. Using IN, display the country_id and country columns of the following countries: Afghanistan, Bangladesh, and China:
SELECT 
    country_id, country
FROM
    country
WHERE
    country IN ('Afghanistan' , 'Bangladesh', 'China');