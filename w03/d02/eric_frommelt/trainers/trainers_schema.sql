DROP TABLE IF EXISTS pokemons_trainers CASCADE;
DROP TABLE IF EXISTS trainers CASCADE;

CREATE TABLE trainers (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  age VARCHAR(255),
  hometown VARCHAR(255)
);

CREATE TABLE pokemons_trainers (
  pokemon_id INTEGER references pokemons(id),
  trainer_id INTEGER references trainers(id)
);
