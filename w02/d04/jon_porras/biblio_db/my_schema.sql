CREATE TABLE authors (
  id SERIAL PRIMARY KEY,
  name varchar(255),
  nationality varchar(255),
  birth_year integer,
);

CREATE TABLE books (
  title varchar(255),
  publication_date integer,
  author_id INTEGER REFERENCES authors(id)
);
