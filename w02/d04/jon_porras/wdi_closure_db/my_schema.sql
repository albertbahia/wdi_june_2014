CREATE TABLE cohorts (
  id SERIAL PRIMARY KEY,
  name varchar(255),
  start_date integer
);

CREATE TABLE instructors (
  id SERIAL PRIMARY KEY,
  name varchar(255),
  age integer,
  cohort_id INTEGER REFERENCES cohorts(id)
);

CREATE TABLE lessons (
  id SERIAL PRIMARY KEY,
  week integer,
  day integer,
  topic varchar(255),
  instructor_id INTEGER REFERENCES instructors(id)
);

CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  name varchar(255),
  favorite_color varchar(255),
  favorite_number integer,
  cohort_id INTEGER REFERENCES cohort(id)
  );

  CREATE TABLE hipchat_gifs (
    id SERIAL PRIMARY KEY,
    gif_url varchar(255),
    hilarious varchar(255),
    posted_at date,
    student_id INTEGER REFERENCES student(id)
  );

  CREATE TABLE classrooms (
    id SERIAL PRIMARY KEY,
    cpacity integer,
    address varchar(255)
  );
