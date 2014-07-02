SELECT * FROM books JOIN authors on books.author_id = authors.id WHERE author='George R.R. Martin';
SELECT * FROM books JOIN authors on books.author_id = authors.id WHERE name='Milan Kundera';
SELECT * FROM books JOIN authors on books.author_id = authors.id WHERE nationality='Chinese' OR nationality ='United Kingdom';
SELECT COUNT(title) FROM books JOIN authors on books.author_id = authors.id WHERE name='Albert Camus';
SELECT COUNT(title) FROM books JOIN authors on books.author_id = authors.id WHERE nationality='United States of America';
SELECT * FROM books JOIN authors on books.author_id = authors.id WHERE publication_date>1930 AND nationality='Argentina';
SELECT * FROM books JOIN authors on books.author_id = authors.id WHERE publication_date > 1980 AND nationality!= 'United States of America';

BONUS

SELECT * FROM authors WHERE name LIKE 'J%';
SELECT * FROM books WHERE title LIKE '%the%';
SELECT * FROM authors JOIN books on authors.id = books.author_id WHERE title LIKE 'N%';
