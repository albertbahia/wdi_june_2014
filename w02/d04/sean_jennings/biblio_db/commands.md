
1 - Find all fields (book and author related) for all books written by George R.R. Martin.
    SELECT *
    FROM books JOIN authors
    ON books.author_id = authors.id
    WHERE author_id=8;

2 - Find all fields (book and author related) for all books written by Milan Kundera.
    SELECT *
    FROM books JOIN authors
    ON books.author_id = authors.id
    WHERE author_id=6;

3 - Find all books written by an author from China or the UK.
    SELECT *
    FROM books JOIN authors
    ON books.author_id = authors.id
    WHERE nationality='Chinese' or nationality='United Kingdom';

4 - Find out how many books Albert Camus wrote.
    SELECT COUNT(*)
    FROM books JOIN authors
    ON books.author_id = authors.id
    WHERE author_id=7;

5 - Find out how many books were written by US authors.
    SELECT COUNT(*)
    FROM books JOIN authors
    ON books.author_id = authors.id
    WHERE nationality='United States of America';

6 - Find all books written after 1930 by authors from Argentina.
    SELECT *
    FROM books JOIN authors
    ON books.author_id = authors.id
    WHERE publication_date > 1930 AND nationality='Argentina';

7 - Find all books written before 1980 by authors not from the US.
    SELECT *
    FROM books JOIN authors
    ON books.author_id = authors.id
    WHERE publication_date < 1980 AND nationality!='United States of America';
