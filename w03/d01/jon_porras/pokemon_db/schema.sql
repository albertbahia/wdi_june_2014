DROP TABLE IF EXISTS pokemons;

CREATE TABLE pokemons (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  hp INTEGER,
  attack INTEGER,
  defense INTEGER,
  moves VARCHAR,
  img VARCHAR(255),
  speed INTEGER,
  classification VARCHAR(255),
  species VARCHAR(255),
  height INTEGER,
  happiness INTEGER
  );
