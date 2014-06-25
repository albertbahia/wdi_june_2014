DROP TABLE authors
DROP TABLE books

CREATE TABLE authors(
  id SERIAL PRIMARY KEY,
  name varchar(255),
  nationality varchar(255),
  birthyear Integer
)

CREATE TABLE books(
  id SERIAL PRIMARY KEY,
  title varchar(255)
  publication_date Integer,
  author_id Integer REFERENCES
  author_id(id),

)
