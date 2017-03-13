/* For each student A who likes a student B where the two are not friends, find if they have a friend C in common (who can introduce them!). For all such trios, return the name and grade of A, B, and C.*/

SELECT a.name, a.grade, b.name, b.grade, c.name, c.grade
FROM student_like
JOIN student a
ON a.id = student_like.liker_id
JOIN student b
ON b.id = student_like.likee_id
JOIN friend a_friends
ON a.id = a_friends.id1
JOIN friend b_friends
ON b.id = b_friends.id1
JOIN student c
ON c.id = a_friends.id2 AND c.id = b_friends.id2
WHERE a.id = a_friends.id1 AND b.id = b_friends.id1;
