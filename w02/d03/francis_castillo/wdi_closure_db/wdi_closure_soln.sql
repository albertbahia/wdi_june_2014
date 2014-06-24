#got into the database
psql -d wdi_closure_db
#select all instructors
SELECT * FROM instructors;

#* Select all students
SELECT * FROM students;

# Select the names of all students
SELECT name FROM students;

# Select all students whose favorite color is black
SELECT name FROM students WHERE favorite_color = 'black';

# Select the names of all students whose favorite color is orange
SELECT name FROM students WHERE favorite_color = 'orange';

# Select all instructors over 100 years old
SELECT * FROM instructors WHERE age > 100;

# Select day and topic of lessons in week 2
SELECT day AND topic FROM instructors WHERE week = 2;

# Select topic of lessons last Wednesday (week 1 day 3)
SELECT topic FROM lessons WHERE week=1 AND day=3;

# Update favorite color to 'tangerine' for the students whose favorite color was 'orange'
UPDATE students SET favorite_color = 'tangerine' WHERE favorite_color = 'orange';

# Update McKenneth's age to be 8999
UPDATE instructors SET age = 8999 WHERE name = 'McK';

# Insert another instructor 'Billy', who is 27 years old
INSERT INTO instructors VALUES(4,'Billy', 27);

# Update the topic of the lesson on week 2 day 3 to 'DATABASES ARE AWESOME'
UPDATE lessons SET topic = 'DATABASESE ARE AWESOME' WHERE week = 2 AND day = 3;

# Delete the instructor Billy. Nobody likes him.
DELETE FROM instructors WHERE name = 'Billy';

# Add another lesson on week 2 day 5 called 'Happy Hour'
INSERT INTO lessons VALUES(17, 2, 5, 'Happy Hour');
