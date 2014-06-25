DROP TABLE IF EXISTS pokemon_trainers CASCADE;
DROP TABLE IF EXISTS trainers CASCADE;

CREATE TABLE trainers (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  age INTEGER,
  hometown VARCHAR(255)
);

CREATE TABLE pokemon_trainers (
  pokemon_id INTEGER references pokemons(id),
  trainer_id INTEGER references trainers(id)
);
