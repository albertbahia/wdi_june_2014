DROP TABLE IF EXISTS images CASCADE;

create table images (
  id SERIAL PRIMARY KEY,
  author VARCHAR(255),
  image_url VARCHAR(255),
  date_posted INTEGER,
  caption VARCHAR(255)
);
