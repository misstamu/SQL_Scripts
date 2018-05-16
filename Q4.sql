-- 4a. List the last names of actors, as well as how many actors have that last name.
SELECT 
    last_name, COUNT(*)
FROM
    actor
GROUP BY last_name;

-- 4b. List last names of actors and the number of actors who have that last name, but only for names that are shared by at least two actors
SELECT 
    last_name, COUNT(*) AS number
FROM
    actor
GROUP BY last_name
HAVING number >= 2;