/*
All about names: The actor table has their value capitalized, which is uncommon for personal names. Write a query that gives the full name for each, so instead of first_name: MARY and last_name SMITH, return ‘Mary Smith’
We probably want to use this column a lot, make a generated column out of it
 */
ALTER TABLE actor
ADD full_name varchar(255);
UPDATE actor
SET
    full_name = CONCAT(LOWER(first_name),' ', LOWER(last_name));