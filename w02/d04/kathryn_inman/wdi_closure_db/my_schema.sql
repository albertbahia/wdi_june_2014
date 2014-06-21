DROP TABLE IF EXISTS lessons;
DROP TABLE IF EXISTS instructors;
DROP TABLE IF EXISTS hipchat_gifs;
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS classrooms;
DROP TABLE IF EXISTS cohorts;

CREATE TABLE cohorts(
  id SERIAL PRIMARY KEY,
  name varchar(200),
  start_date date
);

CREATE TABLE instructors(
  ID SERIAL PRIMARY KEY,
  name varchar(200),
  age integer,
  cohort_id integer REFERENCES cohorts(id)
);

CREATE TABLE lessons(
  ID SERIAL PRIMARY KEY,
  week integer,
  day integer,
  topic varchar(200),
  instructor_id integer REFERENCES instructors(id)
);

CREATE TABLE students(
  ID SERIAL PRIMARY KEY,
  name varchar(200),
  favorite_color varchar(200),
  favorite_number integer,
  cohort_id integer REFERENCES cohorts(id)
);

CREATE TABLE hipchat_gifs(
  ID SERIAL PRIMARY KEY,
  gif_url varchar(200),
  hilarious boolean,
  posted_at date,
  student_id integer REFERENCES students(id)
);

CREATE TABLE classrooms(
  ID SERIAL PRIMARY KEY,
  capacity integer,
  address varchar(200),
  cohort_id integer REFERENCES cohorts(id)
);
