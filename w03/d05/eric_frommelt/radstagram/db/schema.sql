DROP TABLE IF EXISTS photos;

CREATE TABLE photos (
  id SERIAL PRIMARY KEY,
  author VARCHAR(255),
  img_url VARCHAR(255),
  date_posted VARCHAR(255),
  caption VARCHAR(255)
);
