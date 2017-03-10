/* For every situation where student A likes student B, but we have no information about whom B likes (that is, B's id does not appear in the liker_id column of the like table), return A and B's names and grades. */

SELECT s1.name AS studentA_name, s1.grade AS studentA_grade, 
       s2.name AS studentB_name, s2.grade AS studentB_grade
FROM student S1
JOIN student_like A
ON S1.id = a.liker_id
LEFT JOIN student_like B
ON a.likee_id = b.liker_id
JOIN student S2
ON S2.id = a.likee_id
WHERE b.liker_id IS NULL;
