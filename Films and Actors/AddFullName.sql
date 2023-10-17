ALTER TABLE actor
ADD full_name varchar(255);
UPDATE actor
SET
    full_name = CONCAT(LOWER(first_name),' ', LOWER(last_name));