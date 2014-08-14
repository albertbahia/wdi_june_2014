SELECT * FROM students WHERE students.id=1;
SELECT * FROM students WHERE students.id=2;

????SELECT students.name and cohorts.name and cohorts.start_date FROM students JOIN cohorts ON students.cohorts_id=cohort.id; ???????

SELECT * FROM students WHERE students.cohort_id=1;

SELECT * FROM students JOIN cohorts ON students.cohort_id=cohorts.id WHERE start_date=2014-06-16; ?????????

SELECT * FROM students WHERE students.favorite_color='orange';
