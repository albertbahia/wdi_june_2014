DROP TABLE IF EXISTS players;

CREATE TABLE players(
  id SERIAL PRIMARY KEY,
  name varchar(255),
  team varchar(255),
  skill integer,
  playing boolean
);
