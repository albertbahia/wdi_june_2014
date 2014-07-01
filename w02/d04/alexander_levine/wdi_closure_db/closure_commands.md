SELECT * FROM students WHERE id=1;
SELECT * FROM students WHERE id=2;
wdi_closure_db=# SELECT * FROM students JOIN cohorts on students.cohort_id = cohorts.id;
SELECT * FROM students JOIN cohorts on students.cohort_id = cohorts.id WHERE cohorts.name='Closure';
SELECT * FROM students JOIN cohorts on students.cohort_id = cohorts.id WHERE start_date='2014-06-09';
SELECT * FROM students JOIN cohorts on students.cohort_id = cohorts.id WHERE cohorts.name='Closure' AND favorite_color='Orange';
SELECT * FROM lessons JOIN instructors on lessons.instructor_id = instructors.id WHERE name='McK';
SELECT * FROM lessons JOIN instructors on lessons.instructor_id = instructors.id WHERE name='McK' AND week=2;

SELECT COUNT(lessons.id) FROM lessons JOIN instructors on lessons.instructor_id = instructors.id WHERE name='McK';
SELECT COUNT(lessons.id) FROM lessons JOIN instructors on lessons.instructor_id = instructors.id WHERE name='Adam';
SELECT COUNT(lessons.id) FROM lessons JOIN instructors on lessons.instructor_id = instructors.id WHERE name='Hari';

SELECT (classrooms.*, cohorts.name) FROM classrooms JOIN cohorts on classrooms.cohort_id = cohorts.id;
SELECT * FROM classrooms WHERE cohort_id IS null;
