\c sql_exercises

COPY friend
FROM '/Users/koppel/Documents/LG/lgProjects/sql-exercises/data/friends.csv' DELIMITER ',' CSV HEADER;
SELECT * FROM friend;
