DROP TABLE IF EXISTS hipchat_gifs;
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS lessons;
DROP TABLE IF EXISTS instructors;
DROP TABLE IF EXISTS classrooms;
DROP TABLE IF EXISTS cohorts;

CREATE TABLE cohorts (
  id SERIAL PRIMARY KEY,
  name varchar(255),
  start_date DATE
);

CREATE TABLE instructors (
  id SERIAL PRIMARY KEY,
  name varchar(255) NOT NULL,
  age integer,
  cohort_id integer
);

CREATE TABLE lessons (
  id SERIAL PRIMARY KEY,
  week integer NOT NULL,
  day integer NOT NULL,
  topic varchar(255),
  instructor_id INTEGER REFERENCES instructors(id)
);

CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  name varchar(255) NOT NULL,
  favorite_color varchar(255),
  favorite_number integer,
  cohort_id INTEGER REFERENCES cohorts(id)
);

CREATE TABLE hipchat_gifs (
  id SERIAL PRIMARY KEY,
  gif_url varchar(512),
  hilarious BOOLEAN,
  posted_at DATE,
  student_id INTEGER REFERENCES students(id)
);

CREATE TABLE classrooms (
  id SERIAL PRIMARY KEY,
  capacity INTEGER,
  address varchar(255),
  cohort_id INTEGER REFERENCES cohorts(id)
);
