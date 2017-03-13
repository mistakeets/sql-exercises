CREATE TABLE student_like (
  liker_id SERIAL references student (id),
  likee_id SERIAL references student (id)
);
