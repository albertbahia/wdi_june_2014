SELECT * FROM instructors;
SELECT * FROM students;
SELECT name FROM students;
SELECT * FROM students WHERE favorite_color = 'black';
SELECT name FROM students WHERE favorite_color = 'orange';
SELECT * FROM instructors WHERE age > 100;
SELECT day, topic FROM lessons WHERE week = 2;
SELECT topic FROM lessons WHERE week = 1 AND day = 3;

UPDATE students SET favorite_color = 'tangerine' WHERE favorite_color = 'orange';
UPDATE instructors SET age =  8999 WHERE name = 'McK';
INSERT INTO instructors (name, age) VALUES ('Billy', 27);
UPDATE lessons SET topic = 'DATABASES ARE AWESOME' WHERE week = 2 AND day = 3;
DELETE FROM instructors WHERE name = 'Billy';
INSERT INTO lessons (week, day, topic ) VALUES(2, 5, 'Happy Hour');


- The average square footage of all offices.
SELECT AVG(sq_footage) FROM offices;
- The total number of apartments.
SELECT COUNT(*) FROM apartments;
- The apartments where there is no tenant
SELECT * FROM apartments WHERE occupied = false;
- The names of all of the companies
SELECT company_name FROM offices;
- The number of cubicles and bathrooms in the 3rd office
SELECT num_cubicles, num_bathrooms FROM offices OFFSET 2 LIMIT 1;
- The storefronts that have kitchens
SELECT * FROM stores WHERE kitchen = true
- The storefront with the highest square footage and outdoor seating
SELECT * FROM stores WHERE outdoor_seating = true ORDER BY sq_footage DESC LIMIT 1;
- The office with the lowest number of cubicles
SELECT * FROM offices ORDER BY num_cubicles LIMIT 1
- The office with the most cubicles and bathrooms
SELECT * FROM offices ORDER BY num_cubicles DESC, num_bathrooms DESC LIMIT 1;
