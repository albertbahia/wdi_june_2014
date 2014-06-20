SELECT *
FROM authors
JOIN books
ON authors.id = books.author_id
WHERE authors.name = 'George R.R. Martin';

SELECT *
FROM authors
JOIN books
ON authors.id = books.author_id
WHERE authors.name = 'Milan Kundera';

SELECT books.title
FROM authors
JOIN books
ON authors.id = books.author_id
WHERE authors.nationality = 'China' OR authors.nationality = 'UK';

SELECT COUNT(*)
FROM authors
JOIN books
ON authors.id = books.author_id
WHERE authors.name = 'Albert Camus';

SELECT COUNT(*)
FROM authors
JOIN books
ON authors.id = books.author_id
WHERE authors.nationality = 'US';

SELECT *
FROM authors
JOIN books
ON authors.id = books.author_id
WHERE authors.nationality = 'Argentina' AND books.publication_date > 1930;

SELECT *
FROM authors
JOIN books
ON authors.id = books.author_id
WHERE authors.nationality != 'US' AND books.publication_date > 1980;

SELECT authors.name
FROM authors
JOIN books
ON authors.id = books.author_id
WHERE authors.name ~ '^J';

SELECT books.title
FROM authors
JOIN books
ON authors.id = books.author_id
WHERE books.title ~ 'the';

SELECT authors.name
FROM authors
JOIN books
ON authors.id = books.author_id
WHERE books.title ~ '^N'
GROUP BY authors.name;
