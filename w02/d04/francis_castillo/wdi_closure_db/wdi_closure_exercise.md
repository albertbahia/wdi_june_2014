# Biblio Exercise

## Step 1 - Write the Schema

Write the schema for the `wdi_closure_db` database with the following entities:

cohorts
  - id
  - name
  - start_date

instructors:
  - id
  - name
  - age
  - cohort_id

lessons
  - id
  - week
  - day
  - topic
  - instructor_id

students
  - id
  - name
  - favorite_color
  - favorite_number
  - cohort_id

hipchat_gifs
  - id
  - gif_url
  - hilarious (true or false)
  - posted_at (date, not a date-time)
  - student_id

classrooms
  - id
  - capacity
  - address

When you are done, compare your schema vs the provided one, and understand any
differences. Don't look at the provided schema until you're done writing yours!

## Step 2 - Load the schema

Use the provided schema (or modify your own, so it matches ours), and use it to
load the schema for your `wdi_closure_db` database.

## Step 3 - Read and load the seed file.

Read through the seed file and understand what it's doing.

Load the seed file into your `biblio_db`.

## Step 4 - Write some queries

Write queries to do the following:

- Find all students in the cohort with id 1
SELECT * FROM students WHERE cohort_id = 1;

- Find all studnets in the cohort with id 2
SELECT * FROM students WHERE cohort_id = 2;

NOTE: From this point on, you should NOT use explicit id numbers in your
queries. You should be using JOINs instead.

- Get a list of all students, including which cohort they are in, and its
  start_date
SELECT (students.name, students.cohort_id, cohorts.start_date) FROM students JOIN cohorts on  students.cohort_id = cohorts.id;

- Find all students in the cohort called 'Closure'
SELECT (students.name) FROM students JOIN cohorts on students.cohort_id = cohorts.id WHERE cohorts.name = 'Closure';

- Find all students in the cohort which started on June 16, 2014
SELECT (students.name) FROM students JOIN cohorts on students.cohort_id = cohorts.id WHERE cohorts.start_date = 'June 16, 2014';

- Find all students in the 'Closure' cohort who like the color orange.
SELECT (students.name) FROM students JOIN cohorts on students.cohort_id = cohorts.id WHERE cohorts.name = 'Closure' AND favorite_color = 'orange';

- Find all the lessons taught by 'McK'
SELECT (lessons.topic) FROM lessons JOIN instructors on lessons.instructor_id = instructors.id WHERE instructors.name = 'McK';

- Find all the lessons taught by 'McK' in week 2.
SELECT (lessons.topic) FROM lessons JOIN instructors on lessons.instructor_id = instructors.id WHERE instructors.name = 'McK' AND lessons.week = 2;

- Find out how many lessons each instructor in 'Closure' taught in week 1.
  (Note: this should be 3 separate queries, each one using one of our names.)
SELECT COUNT(topic) FROM lessons JOIN instructors on lessons.instructor_id = instructors.id WHERE instructors.name = 'McK' AND lessons.week = 1 ;
SELECT COUNT(topic) FROM lessons JOIN instructors on lessons.instructor_id = instructors.id WHERE instructors.name = 'Hari' AND lessons.week = 1 ;
SELECT COUNT(topic) FROM lessons JOIN instructors on lessons.instructor_id = instructors.id WHERE instructors.name = 'Adam' AND lessons.week = 1 ;

- Write a query that returns a list classrooms, and also includes just the name of the cohort in the classroom currently.
SELECT (classrooms.address, cohorts.name) FROM cohorts JOIN classrooms on classrooms.cohort_id = cohorts.id;

- Write a query that returns a list classrooms that are empty. (Hint, a join may
  not be the best option for this one.)
SELECT * FROM classrooms WHERE cohort_id IS NULL;

BONUS:
Hint: you may need to join three tables together for some queries below:
- Find all the lessons taught by instructors teaching the 'Closure' cohort.
SELECT topic FROM instructors JOIN cohorts on instructors.cohort_id = cohorts.id JOIN lessons on lessons.instructor_id = instructors.id;

- Find all students taught by 'Adam' (no looking up my id and using it in your query)
SELECT students.name FROM students JOIN cohorts on students.cohort_id = cohorts.id JOIN instructors on cohorts.id = instructors.cohort_id WHERE instructors.name = 'Adam';

- Find all hilarious hipchat gifs posted by students in 'Closure'
SELECT gif_url FROM students JOIN hipchat_gifs on hipchat_gifs.student_id = students.id JOIN cohorts on cohorts.id = students.cohort_id WHERE hilarious = true AND cohorts.name = 'Closure';

- Find all hilarious hipchat gifs posted by students in 'Closure' before 'June 12th, 2014'
wdi_closure_db=# SELECT gif_url FROM students JOIN hipchat_gifs on hipchat_gifs.student_id = students.id JOIN cohorts on cohorts.id = students.cohort_id WHERE hilarious = true AND hipchat_gifs.posted_at < 'June 12, 2014';

- Find all non-hilarious hipchat gifs posted by students in 'Openess'
SELECT gif_url FROM students JOIN hipchat_gifs on hipchat_gifs.student_id = students.id JOIN cohorts on cohorts.id = students.cohort_id WHERE hilarious = false AND cohorts.name = 'Openness';

- Find out how many lessons each instructor taught in week 1.
  (Like earlier, but this time, do it using one query, you'll want to look up GROUP BY)
SELECT (instructors.name, COUNT(topic)) FROM lessons JOIN instructors on lessons.instructor_id = instructors.id WHERE lessons.week = 1 GROUP BY instructors.name;
