DROP TABLE IF EXISTS images;

CREATE TABLE images (
  id SERIAL PRIMARY KEY,
  author VARCHAR(255),
  image_url VARCHAR(255),
  date_posted DATE,
  caption VARCHAR(255)
);
