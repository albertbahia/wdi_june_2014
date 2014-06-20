SELECT *
FROM students
JOIN cohorts
ON students.cohort_id = cohorts.id
WHERE cohorts.id = 1;

SELECT *
FROM students
JOIN cohorts
ON students.cohort_id = cohorts.id
WHERE cohorts.id = 2;

SELECT students.name, cohorts.name, cohorts.start_date
FROM students
JOIN cohorts
ON students.cohort_id = cohorts.id;

SELECT *
FROM students
JOIN cohorts
ON students.cohort_id = cohorts.id
WHERE cohorts.name = 'Closure';

SELECT *
FROM students
JOIN cohorts
ON students.cohort_id = cohorts.id
WHERE cohorts.start_date = 'Jun 16, 2014';

SELECT *
FROM students
JOIN cohorts
ON students.cohort_id = cohorts.id
WHERE cohorts.name = 'Closure' AND students.favorite_color = 'orange';

SELECT *
FROM lessons
JOIN instructors
ON lessons.instructor_id = instructors.id
WHERE instructors.name = 'McK';

SELECT *
FROM lessons
JOIN instructors
ON lessons.instructor_id = instructors.id
WHERE instructors.name = 'McK' AND lessons.week = 2;

SELECT instructors.name, COUNT(*)
FROM lessons
JOIN instructors
ON lessons.instructor_id = instructors.id
JOIN cohorts
ON instructors.cohort_id = cohorts.id
WHERE cohorts.name = 'Closure' AND lessons.week = 1
GROUP BY instructors.name;

SELECT *
FROM classrooms
JOIN cohorts
ON classrooms.cohort_id = cohorts.id;

SELECT *
FROM classrooms
WHERE cohort_id IS NULL;

SELECT lessons.topic
FROM lessons
JOIN instructors
ON lessons.instructor_id = instructors.id
JOIN cohorts
ON instructors.cohort_id = cohorts.id
WHERE cohorts.name = 'Closure';

SELECT students.name
FROM students
JOIN cohorts
ON students.cohort_id = cohorts.id
JOIN instructors
ON cohorts.id = instructors.cohort_id
WHERE instructors.name = 'Adam';

SELECT hipchat_gifs.gif_url
FROM hipchat_gifs
JOIN students
ON students.id = hipchat_gifs.student_id
JOIN cohorts
ON cohorts.id = students.cohort_id
WHERE cohorts.name = 'Closure' AND hipchat_gifs.hilarious = true;

SELECT hipchat_gifs.gif_url
FROM hipchat_gifs
JOIN students
ON students.id = hipchat_gifs.student_id
JOIN cohorts
ON cohorts.id = students.cohort_id
WHERE cohorts.name = 'Closure'
  AND hipchat_gifs.hilarious = true
  AND hipchat_gifs.posted_at < 'June 12 2014';

SELECT hipchat_gifs.gif_url
FROM hipchat_gifs
JOIN students
ON students.id = hipchat_gifs.student_id
JOIN cohorts
ON cohorts.id = students.cohort_id
WHERE cohorts.name = 'Openess'
  AND hipchat_gifs.hilarious = false;
