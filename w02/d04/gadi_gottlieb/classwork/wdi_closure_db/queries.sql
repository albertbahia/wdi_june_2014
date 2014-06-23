SELECT * FROM students JOIN cohorts ON students.cohort_id = 1 AND cohorts.id = 1;
SELECT * FROM students JOIN cohorts ON students.cohort_id = 2 AND cohorts.id = 2;
SELECT students.name, cohorts.name, cohorts.start_date FROM students JOIN cohorts ON students.cohort_id = cohorts.id;
SELECT students.name, cohorts.name FROM students JOIN cohorts ON students.cohort_id = cohorts.id WHERE cohorts.name = 'Closure';
SELECT students.name FROM students JOIN gem
