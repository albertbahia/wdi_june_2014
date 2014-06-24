DROP TABLE IF EXISTS players;


CREATE TABLE players (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  team VARCHAR(255),
  skill INTEGER,
  playing BOOLEAN
);
