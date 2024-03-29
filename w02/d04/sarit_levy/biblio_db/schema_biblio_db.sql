
CREATE TABLE authors (
  id SERIAL PRIMARY KEY,
  name varchar(255),
  nationality varchar(255),
  birth_year integer
);

CREATE TABLE books (
  id SERIAL PRIMARY KEY,
  title varchar(255),
  pub_year integer,
  author_id integer REFERENCES authors(id)
);
