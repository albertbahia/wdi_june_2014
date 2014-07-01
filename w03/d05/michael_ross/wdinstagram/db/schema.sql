DROP TABLE IF EXISTS images CASCADE;

CREATE TABLE images (
  id SERIAL PRIMARY KEY,
  author VARCHAR(255),
  url VARCHAR(255),
  date_posted VARCHAR(255),
  caption VARCHAR(255)
);
