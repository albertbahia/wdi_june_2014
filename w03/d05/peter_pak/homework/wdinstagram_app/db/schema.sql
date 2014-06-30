DROP TABLE IF EXISTS images CASCADE;

CREATE TABLE images (
  id SERIAL PRIMARY KEY,
  author VARCHAR(255),
  img_url VARCHAR(1024),
  date_posted DATE,
  caption TEXT
);
