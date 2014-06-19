DROP TABLE IF EXISTS lessons;
DROP TABLE IF EXISTS cohorts;
DROP TABLE IF EXISTS cohorts_intructors;
DROP TABLE IF EXISTS instructors;
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS hipchat_gifs;

CREATE TABLE cohorts (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  start_date DATE
);

CREATE TABLE instructors (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  age INTEGER
);

CREATE TABLE cohorts_intructors (
  cohort_id INTEGER REFERENCES cohorts(id),
  instructor_id INTEGER REFERENCES instructors(id)
);

CREATE TABLE lessons (
  id SERIAL PRIMARY KEY,
  week INTEGER NOT NULL,
  day INTEGER NOT NULL,
  topic VARCHAR(255),
  instructor_id INTEGER REFERENCES instructors(id)
);

CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  favorite_color VARCHAR(255),
  favorite_number INTEGER,
  cohort_id INTEGER REFERENCES cohorts(id)
);

CREATE TABLE hipchat_gifs (
  id SERIAL PRIMARY KEY,
  url VARCHAR(512),
  hilarious BOOLEAN,
  student_id INTEGER REFERENCES students(id)
);
