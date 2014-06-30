DROP TABLE IF EXISTS images CASCADE;

create table images (
  id SERIAL PRIMARY KEY,
  author VARCHAR(255),
  image_url VARCHAR(512),
  date_posted DATE, 
  caption VARCHAR(255)
);
