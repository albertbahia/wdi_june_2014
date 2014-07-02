DROP TABLE cohorts;
DROP TABLE instructors;
DROP TABLE lessons;
DROP TABLE students;
DROP TABLE hipchat_gifs;
DROP TABLE classrooms;

CREATE TABLE cohorts (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  start_date DATE
);

CREATE TABLE instructors (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  age INTEGER,
  cohort_id REFERENCES cohorts(id)
);

CREATE TABLE lessons (
  id SERIAL PRIMARY KEY,
  week INTEGER,
  day INTEGER,
  topic VARCHAR(255),
  instructor_id REFERENCES instructor(id)
);

CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  favorite_color VARCHAR(255),
  favorite_number VARCHAR(255),
  cohort_id REFERENCES cohorts(id)
);

CREATE TABLE hipchat_gifs (
  id SERIAL PRIMARY KEY,
  gif_url VARCHAR(255),
  hilarious BOOLEAN,
  posted_at DATE,
  student_id REFERENCES students(id)
);

CREATE TABLE classrooms (
  id SERIAL PRIMARY KEY,
  capacity INTEGER,
  address VARCHAR(255)
);
