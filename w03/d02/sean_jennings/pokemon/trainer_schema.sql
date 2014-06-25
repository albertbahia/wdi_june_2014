DROP TABLE if exists trainers;
DROP TABLE if exists pokemons_trainers;

CREATE TABLE trainers(
  id serial PRIMARY KEY,
  name VARCHAR(255),
  age INTEGER,
  hometown VARCHAR(255)
);

CREATE TABLE pokemons_trainers(
  pokemon_id INTEGER references pokemons(id),
  trainer_id INTEGER references trainers(id)
);
