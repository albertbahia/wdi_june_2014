# Biblio Exercise

## Step 1 - Write the Schema

Write the schema for the biblio database with the following entities:

authors:
  - name
  - nationality
  - birth year

books:
  - title
  - publication_date (use an integer for just the year)
  - author_id (look up how to write a foreign key in PostgreSQL)

When you are done, compare your schema vs the provided one, and understand any
differences. Don't look at the provided schema until you're done writing yours!

## Step 2 - Load the schema

Create a database called `biblio_db`.

Use the provided schema (or modify your own, so it matches ours), and use it to
load the schema for your `biblio_db` database.

## Step 3 - Read and load the seed file.

Read through the seed file and understand what it's doing.

Questions:
* Is the order that these statements are executed important? Why/Why not?
* Are there other ways to write this seed file so it's more flexible?

Load the seed file into your `biblio_db`.

## Step 3.5 - Add your own data

Add one author and two of that authors books into the db.

## Step 4 - Write some queries

Write queries to do the following:

- Find all fields (book and author related) for all books written by George R.R. Martin.
SELECT * FROM books JOIN authors ON books.author_id = authors.id WHERE authors.name = 'George R.R. Martin';
- Find all fields (book and author related) for all books written by Milan Kundera.
SELECT * FROM books JOIN authors ON books.author_id = authors.id WHERE authors.name = 'Milan Kundera';
- Find all books written by an author from China or the UK.
SELECT * FROM books JOIN authors ON books.author_id = authors.id WHERE authors.nationality = 'Chinese' OR authors.nationality = 'United Kingdom';
- Find out how many books Albert Camus wrote.
SELECT COUNT(*) FROM books JOIN authors ON books.author_id = authors.id WHERE authors.name = 'Albert Camus';
- Find out how many books were written by US authors.
SELECT COUNT(*) FROM books JOIN authors ON books.author_id = authors.id WHERE authors.nationality = 'United States of America';
- Find all books written after 1930 by authors from Argentina.
SELECT * FROM books JOIN authors ON books.author_id = authors.id WHERE authors.nationality = 'Argentina' AND books.publication_date > 1930;
- Find all books written before 1980 by authors not from the US.
 SELECT * FROM books JOIN authors ON books.author_id = authors.id WHERE authors.nationality != 'United States of America' AND books.publication_date < 1980;

---

**BONUS**
- Find all authors whose names start with 'J'.
- Find all books whose titles contain 'the'.
- Find all authors who have written books with that start with the letter 'N'.
