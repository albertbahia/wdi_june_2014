TRUNCATE cohorts CASCADE;
TRUNCATE instructors CASCADE;
TRUNCATE students CASCADE;
TRUNCATE lessons CASCADE;
TRUNCATE hipchat_gifs CASCADE;

INSERT INTO cohorts (name, start_date) VALUES ('Closure', 'June 9, 2014');
INSERT INTO cohorts (name, start_date) VALUES ('Openness', 'June 16, 2014');

INSERT INTO instructors (name, age, cohort_id) VALUES ('Adam', 700, 1);
INSERT INTO instructors (name, age, cohort_id) VALUES ('McK', 9001, 1);
INSERT INTO instructors (name, age, cohort_id) VALUES ('Hari', 50, 1);

INSERT INTO instructors (name, age, cohort_id) VALUES ('Cornelius', 48, 2);
INSERT INTO instructors (name, age, cohort_id) VALUES ('Farnsworth', 52, 2);
INSERT INTO instructors (name, age, cohort_id) VALUES ('Ramsbottom', 47, 2);

INSERT INTO students (name, favorite_color, favorite_number, cohort_id) VALUES ('Albert', 'black', 12, 1);
INSERT INTO students (name, favorite_color, favorite_number, cohort_id) VALUES ('Alexander', 'blue', 25, 1);
INSERT INTO students (name, favorite_color, favorite_number, cohort_id) VALUES ('Alexandra', 'orange', 66, 1);
INSERT INTO students (name, favorite_color, favorite_number, cohort_id) VALUES ('Charlye', 'red', 43, 1);
INSERT INTO students (name, favorite_color, favorite_number, cohort_id) VALUES ('Christiana', 'green', 72, 1);
INSERT INTO students (name, favorite_color, favorite_number, cohort_id) VALUES ('Elizabeth', 'purple', 24, 1);
INSERT INTO students (name, favorite_color, favorite_number, cohort_id) VALUES ('Eric', 'blue', 23, 1);
INSERT INTO students (name, favorite_color, favorite_number, cohort_id) VALUES ('Francis', 'orange', 53, 1);
INSERT INTO students (name, favorite_color, favorite_number, cohort_id) VALUES ('Fen', 'blue', 62, 1);
INSERT INTO students (name, favorite_color, favorite_number, cohort_id) VALUES ('Gadi', 'red', 64, 1);
INSERT INTO students (name, favorite_color, favorite_number, cohort_id) VALUES ('Hoa', 'green', 76, 1);
INSERT INTO students (name, favorite_color, favorite_number, cohort_id) VALUES ('Jae', 'purple', 11, 1);
INSERT INTO students (name, favorite_color, favorite_number, cohort_id) VALUES ('James', 'yellow', 12, 1);
INSERT INTO students (name, favorite_color, favorite_number, cohort_id) VALUES ('Jon', 'black', 63, 1);
INSERT INTO students (name, favorite_color, favorite_number, cohort_id) VALUES ('Khadijah', 'red', 36, 1);
INSERT INTO students (name, favorite_color, favorite_number, cohort_id) VALUES ('Liza', 'orange', 11, 1);
INSERT INTO students (name, favorite_color, favorite_number, cohort_id) VALUES ('Michael', 'green', 83, 1);
INSERT INTO students (name, favorite_color, favorite_number, cohort_id) VALUES ('Najee', 'purple', 99, 1);
INSERT INTO students (name, favorite_color, favorite_number, cohort_id) VALUES ('Patrick', 'yellow', 10, 1);
INSERT INTO students (name, favorite_color, favorite_number, cohort_id) VALUES ('Peter', 'white', 15, 1);
INSERT INTO students (name, favorite_color, favorite_number, cohort_id) VALUES ('Ranjan', 'teal', 32, 1);
INSERT INTO students (name, favorite_color, favorite_number, cohort_id) VALUES ('Sarit', 'cyan', 16, 1);
INSERT INTO students (name, favorite_color, favorite_number, cohort_id) VALUES ('SeanJ', 'sage', 61, 1);
INSERT INTO students (name, favorite_color, favorite_number, cohort_id) VALUES ('SeanT', 'maroon', 79, 1);
INSERT INTO students (name, favorite_color, favorite_number, cohort_id) VALUES ('Homer', 'white', 1, 2);
INSERT INTO students (name, favorite_color, favorite_number, cohort_id) VALUES ('Marge', 'green', 5, 2);
INSERT INTO students (name, favorite_color, favorite_number, cohort_id) VALUES ('Bart', 'red', 0, 2);
INSERT INTO students (name, favorite_color, favorite_number, cohort_id) VALUES ('Lisa', 'orange', 42, 2);
INSERT INTO students (name, favorite_color, favorite_number, cohort_id) VALUES ('Maggie', 'blue', 3, 2);

INSERT INTO lessons (week, day, topic, instructor_id) VALUES (1, 1, 'Classroom Culture', 1);
INSERT INTO lessons (week, day, topic, instructor_id) VALUES (1, 1, 'Intro to Programming', 2);
INSERT INTO lessons (week, day, topic, instructor_id) VALUES (1, 2, 'Computer Effectiveness', 3);
INSERT INTO lessons (week, day, topic, instructor_id) VALUES (1, 2, 'Problem Modeling', 1);
INSERT INTO lessons (week, day, topic, instructor_id) VALUES (1, 2, 'Collections and Enumeration', 2);
INSERT INTO lessons (week, day, topic, instructor_id) VALUES (1, 3, 'Data Modeling', 3);
INSERT INTO lessons (week, day, topic, instructor_id) VALUES (1, 3, 'Conditionals', 1);
INSERT INTO lessons (week, day, topic, instructor_id) VALUES (1, 3, 'Methods', 2);
INSERT INTO lessons (week, day, topic, instructor_id) VALUES (1, 4, 'More Methods', 3);
INSERT INTO lessons (week, day, topic, instructor_id) VALUES (1, 4, 'Object-Oriented Programming', 1);
INSERT INTO lessons (week, day, topic, instructor_id) VALUES (1, 5, 'Git and GitHub', 2);
INSERT INTO lessons (week, day, topic, instructor_id) VALUES (2, 1, 'More OOP', 3);
INSERT INTO lessons (week, day, topic, instructor_id) VALUES (2, 2, 'Inheritance', 1);
INSERT INTO lessons (week, day, topic, instructor_id) VALUES (2, 3, 'Domains, Databases, SQL', 2);
INSERT INTO lessons (week, day, topic, instructor_id) VALUES (2, 4, 'Relationships', 3);
INSERT INTO lessons (week, day, topic, instructor_id) VALUES (2, 5, 'Surprise', 1);

INSERT INTO lessons (week, day, topic, instructor_id) VALUES (1, 1, 'The Dougie', 4);
INSERT INTO lessons (week, day, topic, instructor_id) VALUES (1, 1, 'Telemarketing', 4);
INSERT INTO lessons (week, day, topic, instructor_id) VALUES (1, 2, 'Lemon and Spoon Races', 5);
INSERT INTO lessons (week, day, topic, instructor_id) VALUES (1, 3, 'Age of Empires 101', 5);
INSERT INTO lessons (week, day, topic, instructor_id) VALUES (1, 3, 'Chewing Bubblegum', 6);
INSERT INTO lessons (week, day, topic, instructor_id) VALUES (1, 4, 'Jumprope', 6);

INSERT INTO hipchat_gifs (gif_url, hilarious, posted_at, student_id) VALUES ('http://giphy.com/gifs/xrHrwI6D3bjSE', true, 'June 9, 2014', 1);
INSERT INTO hipchat_gifs (gif_url, hilarious, posted_at, student_id) VALUES ('http://giphy.com/gifs/3gAzMUQkQMr1m', true, 'June 9, 2014', 2);
INSERT INTO hipchat_gifs (gif_url, hilarious, posted_at, student_id) VALUES ('http://giphy.com/gifs/CJbUvNftlDbcQ', false, 'June 10, 2014', 3);
INSERT INTO hipchat_gifs (gif_url, hilarious, posted_at, student_id) VALUES ('http://giphy.com/gifs/xf20D8HzvTQzu', true, 'June 12, 2014', 5);
INSERT INTO hipchat_gifs (gif_url, hilarious, posted_at, student_id) VALUES ('http://giphy.com/gifs/basketball-nba-gif-XGeCYPY7gwwso', false, 'June 13, 2014', 8);
INSERT INTO hipchat_gifs (gif_url, hilarious, posted_at, student_id) VALUES ('http://giphy.com/gifs/world-cup-chile-UMHrfgoNRmqxq', true, 'June 14, 2014', 13);
INSERT INTO hipchat_gifs (gif_url, hilarious, posted_at, student_id) VALUES ('http://giphy.com/gifs/7WqqX7NMfWGHe', false, 'June 15, 2014', 27);
INSERT INTO hipchat_gifs (gif_url, hilarious, posted_at, student_id) VALUES ('http://giphy.com/gifs/SGHjph1mplZh6', false, 'June 17, 2014', 27);
INSERT INTO hipchat_gifs (gif_url, hilarious, posted_at, student_id) VALUES ('http://giphy.com/gifs/iavKpDrWkA8Io', true, 'June 18, 2014', 28);

INSERT INTO classrooms (capacity, address, cohort_id) VALUES (30, '41 USW Rm 1', 1);
INSERT INTO classrooms (capacity, address, cohort_id) VALUES (27, '41 USW Rm 2', 2);
INSERT INTO classrooms (capacity, address) VALUES (24, '915 E 21st St, Rm 1');
INSERT INTO classrooms (capacity, address) VALUES (20, '915 E 21st St, Rm 2');
INSERT INTO classrooms (capacity, address) VALUES (15, '915 E 21st St, Studio 1');
