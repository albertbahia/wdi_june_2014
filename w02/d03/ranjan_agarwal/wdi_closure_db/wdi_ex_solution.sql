SELECT * FROM instructors;
SELECT * FROM students;
SELECT name FROM students;
SELECT favorite_color FROM students WHERE favorite_color='black';
SELECT name FROM students WHERE favorite_color='orange';
SELECT age FROM instructors WHERE age=100;
SELECT (day,topic) FROM lessons WHERE week=2;

UPDATE students SET favorite_color='tangerine' WHERE favorite_color='orange';
UPDATE instructors SET age=8999 WHERE name='McK';
INSERT INTO instructors (name,age) VALUES ('Billy', 27);
UPDATE lessons SET topic='DATABASES ARE AWESOME' WHERE week=2 AND day=3;
DELETE FROM instructors WHERE name='Billy';
INSERT INTO lessons (week,day,topic) VALUES (2,5,'Happy Hour');
