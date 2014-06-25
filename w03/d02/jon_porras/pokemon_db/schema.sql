DROP TABLE IF EXISTS pokemons_trainers CASCADE;
DROP TABLE IF EXISTS pokemons CASCADE;
DROP TABLE IF EXISTS trainers CASCADE;

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

CREATE TABLE trainers (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  age INTEGER,
  hometown VARCHAR(255)
);

CREATE TABLE pokemons_trainers (
  trainer_id INTEGER references trainers(id),
  pokemon_id INTEGER references pokemons(id)
);
