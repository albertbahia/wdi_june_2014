DROP TABLE authors
DROP TABLE books

CREATE TABLE authors (
  id SERIAL PRIMARY KEY
  name varchar(255),
  nationality,
  birth_year integer
);

CREATE TABLE books (
  id SERIAL PRIMARY KEY
  title varchar(255),
  publication_date integer,
  author_id integer references authors(id)
);
