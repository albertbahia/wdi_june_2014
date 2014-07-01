DROP TABLE IF EXISTS shows CASCADE;

CREATE TABLE shows(
  id SERIAL PRIMARY KEY,
  name varchar(255),
  genre varchar(255),
  rating Integer,
  airing Boolean
);
