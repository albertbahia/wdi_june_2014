- Find all fields (book and author related) for all books written by George R.R. Martin.

SELECT * FROM books JOIN authors on books.author_id = authors.id WHERE author_id=8;

- Find all fields (book and author related) for all books written by Milan Kundera.

SELECT * FROM books JOIN authors on books.author_id = authors.id WHERE author_id=6;

- Find all books written by an author from China or the UK.

SELECT * FROM books JOIN authors ON books.author_id = authors.id WHERE nationality='Chinese' OR nationality='United Kingdom';

- Find out how many books Albert Camus wrote.

SELECT title FROM books JOIN authors ON books.author_id = authors.id WHERE name='Albert Camus';

- Find out how many books were written by US authors.

SELECT COUNT(title) FROM books JOIN authors ON books.author_id = authors.id WHERE nationality='United States of America';

- Find all books written after 1930 by authors from Argentina.

SELECT title FROM books JOIN authors ON books.author_id = authors.id WHERE publication_date > 1930 AND nationality='Argentina';

- Find all books written before 1980 by authors not from the US.

SELECT title FROM books JOIN authors ON books.author_id = authors.id WHERE publication_date < 1980 AND nationality<>'United States of America';

**BONUS**
- Find all authors whose names start with 'J'.

SELECT name FROM authors WHERE name LIKE 'J%';

- Find all books whose titles contain 'the'.

SELECT title FROM books WHERE title LIKE '%the%';

- Find all authors who have written books with that start with the letter 'N'.

SELECT name FROM books JOIN authors ON books.author_id = authors.id WHERE title LIKE 'N%';
