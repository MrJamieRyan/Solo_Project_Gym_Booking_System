DROP TABLE bookings;
DROP TABLE members;
DROP TABLE lessons;

CREATE TABLE members
(
  id SERIAL primary key,
  name VARCHAR(255),
  age INT,
  address VARCHAR(255)
);

CREATE TABLE lessons
(
  id SERIAL primary key,
  name VARCHAR(255),
  lessondate VARCHAR(255)
);

CREATE TABLE bookings
(
  id SERIAL primary key,
  lesson_id INT references lessons(id),
  member_id INT references members(id)
);
