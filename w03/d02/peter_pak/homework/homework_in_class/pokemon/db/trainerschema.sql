DROP TABLE IF EXISTS trainers CASCADE;
DROP TABLE IF EXISTS pokemons_trainers CASCADE;

CREATE TABLE trainers (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  age INTEGER,
  hometown VARCHAR(255)
);

CREATE TABLE pokemons_trainers (
  pokemon_id INTEGER REFERENCES pokemons(id),
  trainer_id INTEGER REFERENCES trainers(id)
);
