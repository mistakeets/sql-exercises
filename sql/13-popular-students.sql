/* Find the name and grade of all students who are liked by more than one other student. */

SELECT student.name, student.grade
FROM student
JOIN student_like
ON student.id = student_like.likee_id
GROUP BY student.name, student.grade
HAVING COUNT(*) > 1;
