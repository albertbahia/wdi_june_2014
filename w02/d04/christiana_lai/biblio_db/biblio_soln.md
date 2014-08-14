SELECT * FROM books JOIN authors ON books.author_id=authors.id WHERE authors.name='George R.R. Martin';

SELECT * FROM books JOIN authors ON books.author_id=authors.id WHERE authors.name='Milan Kundera';

SELECT * FROM authors WHERE authors.nationality='Chinese' or authors.nationality='United Kingdom';

SELECT * FROM books WHERE author_id=7;

SELECT * FROM books JOIN authors ON books.author_id=authors.id WHERE authors.nationality='United States of America';

SELECT * FROM books JOIN authors ON books.author_id=authors.id WHERE authors.nationality='Argentina' and publication_date > 1930;

SELECT * FROM books JOIN authors ON books.author_id=authors.id WHERE authors.nationality!='United States of America' and publication_date < 1980;

SELECT authors.name FROM authors WHERE authors.name LIKE 'J%';

SELECT books.title FROM books WHERE books.title LIKE '%the%';

SELECT * FROM books JOIN authors ON books.author_id=authors.id WHERE books.title LIKE 'N%';
