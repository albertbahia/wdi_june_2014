DROP TABLE IF EXISTS players CASCADE;


CREATE TABLE players (
  id SERIAL PRIMARY KEY,
  name varchar(255),
  team varchar(255),
  skill Integer,
  playing Boolean
);
