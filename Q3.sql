-- 3a. Add a middle_name column to the table actor. Position it between first_name and last_name.
alter table actor 
add column middle_name varchar(50) after first_name;

-- 3b. You realize that some of these actors have tremendously long last names. Change the data type of the middle_name column to blobs.
alter table actor
change column middle_name middle_name blob;

-- 3c. Now delete the middle_name column.
alter table actor
drop column middle_name;
