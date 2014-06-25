DROP TABLE IF EXISTS pokemons_trainers;
DROP TABLE IF EXISTS trainers;
DROP TABLE IF EXISTS pokemons;

CREATE TABLE pokemons(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  img VARCHAR(512),
  hp INTEGER,
  attack INTEGER,
  defense INTEGER,
  speed INTEGER,
  moves TEXT,
  classification VARCHAR(255),
  species VARCHAR(255),
  height VARCHAR(255),
  happiness INTEGER
);
CREATE TABLE trainers (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  age INTEGER,
  hometown VARCHAR(255)
);

CREATE TABLE pokemons_trainers(
  pokemon_id INTEGER references pokemons(id),
  trainer_id INTEGER references trainers(id)
);
