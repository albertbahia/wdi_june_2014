DROP TABLE IF EXISTS authors_images;
DROP TABLE IF EXISTS authors;
DROP TABLE IF EXISTS images;

CREATE TABLE authors(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  age INTEGER,
  city VARCHAR(255),
  state VARCHAR(255)
);

CREATE TABLE images(
  id SERIAL PRIMARY KEY,
  img VARCHAR(512),
  post_date DATE NOT NULL DEFAULT CURRENT_DATE,
  caption VARCHAR(512)
);

CREATE TABLE authors_images(
  author_id INTEGER REFERENCES images(id),
  image_id INTEGER REFERENCES authors(id)
);
