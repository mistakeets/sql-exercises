\c sql-exercises

COPY student
FROM '/Users/koppel/Documents/LG/lgProjects/sql-exercises/data/students.csv' DELIMITER ',' CSV HEADER;
SELECT * FROM student;
