DROP TABLE IF EXISTS trainers CASCADE;
DROP TABLE IF EXISTS trainers_pokemons CASCADE;

CREATE TABLE trainers (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  age INTEGER,
  hometown VARCHAR(255)
);

CREATE TABLE trainers_pokemons (
  pokemon_id INTEGER references pokemons(id),
  trainer_id INTEGER references trainers(id)
);
