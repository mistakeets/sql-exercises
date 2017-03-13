/* Find all students who do not appear in the like table (as a student who likes or is liked) and return their names and grades. Sort by grade, then by name within each grade. */

SELECT student.grade, student.name
FROM student
LEFT JOIN student_like A
ON student.id = a.liker_id
LEFT JOIN student_like B
ON student.id = b.likee_id
WHERE a.liker_id IS NULL 
  AND b.likee_id IS NULL
ORDER BY student.grade, student.name;
