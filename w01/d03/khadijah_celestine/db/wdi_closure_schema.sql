DROP TABLE instructors;
DROP TABLE students;
DROP TABLE lessons;

CREATE TABLE instructors (
  id SERIAL PRIMARY KEY,
  name varchar(255) NOT NULL,
  age integer
);

CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  name varchar(255) NOT NULL,
  favorite_color varchar(255),
  favorite_number integer
);

CREATE TABLE lessons (
  id SERIAL PRIMARY KEY,
  week integer NOT NULL,
  day integer NOT NULL,
  topic varchar(255)
);
