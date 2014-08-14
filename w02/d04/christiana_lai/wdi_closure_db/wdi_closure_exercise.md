## Step 4 - Write some queries

Write queries to do the following:

- Find all students in the cohort with id 1
- Find all studnets in the cohort with id 2

NOTE: From this point on, you should NOT use explicit id numbers in your
queries. You should be using JOINs instead.

- Get a list of all students, including which cohort they are in, and its
  start_date
- Find all students in the cohort called 'Closure'
- Find all students in the cohort which started on June 16, 2014
- Find all students in the 'Closure' cohort who like the color orange.

- Find all the lessons taught by 'McK'
- Find all the lessons taught by 'McK' in week 2.

- Find out how many lessons each instructor in 'Closure' taught in week 1.
  (Note: this should be 3 separate queries, each one using one of our names.)

- Write a query that returns a list classrooms, and also includes just the name
  of the cohort in the classroom currently.
- Write a query that returns a list classrooms that are empty. (Hint, a join may
  not be the best option for this one.)

BONUS:
Hint: you may need to join three tables together for some queries below:
- Find all the lessons taught by instructors teaching the 'Closure' cohort.
- Find all students taught by 'Adam' (no looking up my id and using it in your query)
- Find all hilarious hipchat gifs posted by students in 'Closure'
- Find all hilarious hipchat gifs posted by students in 'Closure' before 'June 12th, 2014'
- Find all non-hilarious hipchat gifs posted by students in 'Openess'

- Find out how many lessons each instructor taught in week 1.
  (Like earlier, but this time, do it using one query, you'll want to look up GROUP BY)
