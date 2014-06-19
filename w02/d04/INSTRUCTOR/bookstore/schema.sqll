DROP TABLE IF EXISTS books;
DROP TABLE IF EXISTS authors;

CREATE TABLE authors (
  id SERIAL PRIMARY KEY,
  name varchar(255),
  nationality varchar(255),
  birth_year integer
);

CREATE TABLE books (
  id SERIAL PRIMARY KEY,
  title varchar(255),
  publication_date integer,
  author_id integer references authors(id)
);
