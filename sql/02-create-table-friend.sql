CREATE TABLE friend (
  id1 SERIAL references student (id),
  id2 SERIAL references student (id)
);
