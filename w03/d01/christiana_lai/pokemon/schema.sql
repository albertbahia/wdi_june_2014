DROP TABLE IF EXISTS pokemons;

CREATE TABLE pokemons(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  hp INTEGER,
  attack INTEGER,
  defense INTEGER,
  speed INTEGER,
  moves VARCHAR,
  img VARCHAR(512),
  classification VARCHAR(255),
  species VARCHAR(255),
  height VARCHAR(255),
  happiness INTEGER
);
