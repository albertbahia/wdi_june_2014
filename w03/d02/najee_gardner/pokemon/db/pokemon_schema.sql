DROP TABLE IF EXISTS pokemons_trainers;
DROP TABLE IF EXISTS pokemons;
DROP TABLE IF EXISTS trainers;


CREATE TABLE pokemons (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  hp INTEGER,
  attack INTEGER,
  defense INTEGER,
  speed INTEGER,
  moves VARCHAR(8000),
  image_url VARCHAR(255),
  classification VARCHAR(255),
  species VARCHAR(255),
  height VARCHAR(255),
  happiness INTEGER
);

CREATE TABLE trainers (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  age INTEGER,
  hometown VARCHAR(255)
);

CREATE TABLE pokemons_trainers (
  trainer_id INTEGER REFERENCES trainers(id),
  pokemon_id INTEGER REFERENCES pokemons(id)
);
