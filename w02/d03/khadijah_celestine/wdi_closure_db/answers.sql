SELECT * FROM instructors;
SELECT * FROM students;
SELECT name FROM students;
SELECT * FROM students WHERE favorite_color = 'black'; 
SELECT name FROM students WHERE favorite_color = 'orange';
SELECT * FROM instructors WHERE age > 100;
SELECT (day, topic) FROM lessons WHERE week = 2;
SELECT (topic) FROM lessons WHERE week = 1 AND day = 3;

UPDATE students SET favorite_color='tangerine' WHERE favorite_color='orange';
UPDATE instructors SET age='8999' WHERE age=9001;
INSERT INTO instructors (name, age) VALUES ('Billy', 27);

