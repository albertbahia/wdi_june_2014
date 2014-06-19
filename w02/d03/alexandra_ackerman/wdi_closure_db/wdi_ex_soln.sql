SELECT * FROM instructors;
SELECT * FROM students;
SELECT name FROM students;
SELECT * FROM students WHERE favorite_color ='black';
SELECT name FROM students WHERE favorite_color = 'orange';
SELECT * FROM instructors WHERE age > 100;
SELECT day, topic FROM lessons WHERE week = 2;
SELECT topic FROM lessons WHERE week = 1 AND day = 3;

UPDATE students SET favorite_color = 'tangerine' WHERE favorite_color = 'orange';
UPDATE instructors SET age = 8999 WHERE name = 'McK';
INSERT INTO instructors (name, age) VALUES ('Billy', 27);
UPDATE lessons SET topic = 'DATABASES ARE AWESOME' WHERE week = 2 AND day = 3;
DELETE FROM instructors WHERE name = 'Billy';
INSERT INTO lessons (week, day, topic) VALUES (2, 5, 'Happy Hour');

### WDI Closure DB

-- **Exercise**
--
-- * Select all instructors
-- * Select all students
-- * Select the names of all students
-- * Select all students whose favorite color is black
-- * Select the names of all students whose favorite color is orange
-- * Select all instructors over 100 years old
-- * Select day and topic of lessons in week 2
-- * Select topic of lessons last Wednesday (week 1 day 3)
--
-- * Update favorite color to 'tangerine' for the students whose favorite color was 'orange'
-- * Update McKenneth's age to be 8999
-- * Insert another instructor 'Billy', who is 27 years old
-- * Update the topic of the lesson on week 2 day 3 to 'DATABASES ARE AWESOME'
-- * Delete the instructor Billy. Nobody likes him.
-- * Add another lesson on week 2 day 5 called 'Happy Hour'
