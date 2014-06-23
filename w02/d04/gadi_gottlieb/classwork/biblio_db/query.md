SELECT * FROM books JOIN authors ON books.author_id =8 AND authors.id=8;
SELECT * FROM books JOIN authors ON books.author_id =6 AND authors.id=6;
SELECT * FROM books JOIN authors ON books.author_id = authors.id WHERE authors.nationality='Chinese';
SELECT COUNT(books.id) FROM books JOIN authors ON books.author_id =7 AND authors.id=7;
SELECT COUNT(books.id) FROM books JOIN authors ON books.author_id = authors.id WHERE authors.nationality = 'United States of America';
SELECT * FROM books JOIN authors ON books.author_id = authors.id WHERE publication_date > 1930 AND nationality = 'Argentina';
SELECT * FROM books JOIN authors ON books.author_id = authors.id WHERE books.publication_date < 1980 AND nationality != 'United States of America';

BONUS
SELECT * FROM authors WHERE name LIKE 'J%';
SELECT * FROM books WHERE title LIKE 'The%';
SELECT * FROM authors JOIN books on authors.id = books.author_id WHERE books.title LIKE 'N%';


HELPER GETTERS
SELECT * FROM books JOIN authors ON books.author_id = authors.id;

SELECT * FROM books JOIN authors on books.author_id = authors.id WHERE authors.nationality='United States of America';
