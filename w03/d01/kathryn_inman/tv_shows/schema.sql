DROP TABLE IF EXISTS shows;

CREATE TABLE shows(
  id SERIAL PRIMARY KEY,
  name varchar(255),
  genre varchar(255),
  rating integer,
  airing boolean
);
