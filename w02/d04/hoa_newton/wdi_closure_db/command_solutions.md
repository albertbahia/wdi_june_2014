SELECT students.name FROM students WHERE cohort_id=1;

SELECT students.name FROM students WHERE cohort_id=2;

SELECT students.name FROM students WHERE cohort_id=2;

SELECT * FROM students JOIN cohorts on students.cohort_id=cohorts.id WHERE cohorts.name='Closure';

SELECT * FROM students JOIN cohorts on students.cohort_id=cohorts.id WHERE cohorts.start_date='June 16, 2014';

SELECT * FROM students JOIN cohorts on students.cohort_id=cohorts.id WHERE cohorts.name='Closure' AND students.favorite_color='orange';

SELECT * FROM lessons JOIN instructors on lessons.instructor_id=instructors.id WHERE instructors.name='McK';

SELECT * FROM lessons JOIN instructors on lessons.instructor_id=instructors.id WHERE instructors.name='McK' AND lessons.week=2;

SELECT COUNT(lessons) FROM lessons JOIN instructors on lessons.instructor_id=instructors.id WHERE instructors.name='McK' AND lessons.week=1;

SELECT cohorts.name FROM classrooms JOIN cohorts on classrooms.cohort_id=cohorts.id;

SELECT address FROM classrooms WHERE cohort_id IS null;

SELECT * FROM lessons INNER JOIN instructors on lessons.instructor_id=instructors.id INNER JOIN cohorts on instructors.cohort_id=cohorts.id WHERE cohorts.name='Closure';

SELECT * FROM students INNER JOIN cohorts on students.cohort_id=cohorts.id INNER JOIN instructors on instructors.cohort_id=cohorts.id WHERE instructors.name='Adam';

SELECT * FROM hipchat_gifs INNER JOIN students on hipchat_gifs.student_id=students.id INNER JOIN cohorts on students.cohort_id=cohorts.id WHERE cohorts.name='Closure' AND hipchat_gifs.hilarious=true;

SELECT * FROM hipchat_gifs INNER JOIN students on hipchat_gifs.student_id=students.id INNER JOIN cohorts on students.cohort_id=cohorts.id WHERE cohorts.name='Closure' AND hipchat_gifs.hilarious=true AND hipchat_gifs.posted_at < 'June 12, 2014';

SELECT * FROM hipchat_gifs INNER JOIN students on students.id=hipchat_gifs.student_id INNER JOIN cohorts on cohorts.id=students.cohort_id WHERE cohorts.name='Openness' AND hipchat_gifs.hilarious=false;

SELECT instructors.name, COUNT(lessons) FROM lessons INNER JOIN instructors on lessons.instructor_id=instructors.id WHERE lessons.week=1 GROUP BY instructors.name;



