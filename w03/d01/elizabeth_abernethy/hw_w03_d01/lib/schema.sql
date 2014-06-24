DROP TABLE IF EXISTS pokemons;

CREATE TABLE pokemons(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  hp INTEGER,
  attack INTEGER,
  defense INTEGER,
  speed INTEGER,
  moves VARCHAR(255),
  image VARCHAR(510),
  classification VARCHAR(255),
  species VARCHAR(255),
  height INTEGER,
  happiness INTEGER
);
