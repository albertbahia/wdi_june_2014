DROP TABLE IF EXISTS shows;

CREATE TABLE shows (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  genre VARCHAR(255),
  rating INTEGER,
  airing BOOLEAN
);
