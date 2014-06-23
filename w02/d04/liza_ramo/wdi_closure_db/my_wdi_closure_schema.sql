DROP TABLE IF EXISTS cohorts;
DROP TABLE IF EXISTS instructors;
DROP TABLE IF EXISTS lessons;
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS hipchat_gifs;
DROP TABLE IF EXISTS classrooms;


CREATE TABLE cohorts (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  start_date DATE,
);

CREATE TABLE instructors (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  age VARCHAR(255),
  cohort_id INTEGER REFERENCES cohorts(id)
);

CREATE TABLE lessons (
  id SERIAL PRIMARY KEY,
  week INTEGER,
  day INTEGER,
  topic INTEGER,
  instructor_id INTEGER REFERENCES instructors(id)
);

CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  favorite_color VARCHAR(255),
  favorite_number INTEGER,
  cohort_id INTEGER REFERENCES cohorts(id)
);

CREATE TABLE hipchat_gifs (
  id SERIAL PRIMARY KEY,
  gif_url VARCHAR(255),
  hilarious BOOLEAN,
  posted_at DATE,
  student_id INTEGER REFERENCES students(id)
);

CREATE TABLE classrooms (
  id SERIAL PRIMARY KEY,
  capacity INTEGER,
  address VARCHAR(255),
);
