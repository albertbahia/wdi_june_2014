DROP TABLE authors CASCADE;
DROP TABLE books;


CREATE TABLE authors (
  id integer NOT NULL,
  name varchar(255),
  nationality varchar(255),
  birth_year integer,
  PRIMARY KEY (id)
);

CREATE TABLE books (
  id integer NOT NULL,
  title varchar(255),
  publication_date integer,
  author_id integer NOT NULL,
  FOREIGN KEY (author_id) REFERENCES authors(id)
);
