/* Find the names of all students who are friends with someone named Gabriel. */

SELECT two.name AS FriendsWithGabriel
FROM friend
JOIN student one
ON one.id = friend.id1
JOIN student two
ON two.id = friend.id2
WHERE one.name = 'Gabriel';
