DROP TABLE IF EXISTS cohorts CASCADE;
DROP TABLE IF EXISTS instructors CASCADE;
DROP TABLE IF EXISTS lessons CASCADE;
DROP TABLE IF EXISTS students CASCADE;
DROP TABLE IF EXISTS hipchat_gifs CASCADE;
DROP TABLE IF EXISTS classrooms CASCADE;

CREATE TABLE cohorts(
  id serial NOT NULL PRIMARY KEY,
  name varchar(255),
  start_date date
);


CREATE TABLE instructors(
  id serial NOT NULL PRIMARY KEY,
  name varchar(255),
  age integer,
  cohort_id integer REFERENCES cohorts(id)
);

CREATE TABLE lessons(
  id serial NOT NULL PRIMARY KEY,
  week integer,
  day integer,
  topic varchar(255),
  instructor_id integer REFERENCES instructors(id)
);

CREATE TABLE students(
  id serial NOT NULL PRIMARY KEY,
  name varchar(255),
  favorite_color varchar(255),
  fovorite_number integer,
  cohort_id integer REFERENCES cohorts(id)
);

CREATE TABLE hipchat_gifs(
  id serial NOT NULL PRIMARY KEY,
  gif_url varchar(255),
  hilarious boolean,
  posted_at timestamp,
  student_id integer REFERENCES students(id)
);

CREATE TABLE classrooms(
  id serial NOT NULL PRIMARY KEY,
  capacity integer,
  address varchar(255)
);
