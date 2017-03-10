/* For every pair of students who both like each other, return the name and grade of both students. Include each pair only once, with the two names in alphabetical order. */

SELECT c.name AS Student1, d.name AS Student2
FROM student_like A
JOIN student_like B 
ON a.liker_id = b.likee_id AND a.likee_id = b.liker_id
JOIN student C
ON a.liker_id = c.id
JOIN student D 
ON a.likee_id = d.id
WHERE a.liker_id > b.likee_id
ORDER BY c.name;

