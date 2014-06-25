DROP TABLE IF EXISTS pokemons_trainers CASCADE;
DROP TABLE IF EXISTS trainers CASCADE;
DROP TABLE IF EXISTS pokemons CASCADE;

CREATE TABLE pokemons(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  hp INTEGER,
  attack VARCHAR(255),
  defense VARCHAR(255),
  speed VARCHAR(255),
  moves VARCHAR(255),
  image_url VARCHAR(255),
  classification VARCHAR(255),
  species VARCHAR(255),
  height VARCHAR(255),
  happiness INTEGER
);

CREATE TABLE trainers(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  age INTEGER,
  hometown VARCHAR(255)
);

CREATE TABLE pokemons_trainers(
  pokemon_id INTEGER REFERENCES pokemons(id),
  trainer_id INTEGER REFERENCES trainers(id)
);
