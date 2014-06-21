DROP TABLE authors;
DROP TABLE books;

CREATE TABLE authors (
  id SERIAL PRIMARY KEY,
  name varchar(200),
  nationality varchar(200),
  birth_year integer
);

CREATE TABLE books (
  id SERIAL PRIMARY KEY,
  title varchar(200),
  publication_date integer,
  author_id integer REFERENCES authors(id)
);
