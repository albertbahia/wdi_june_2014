DROP TABLE IF EXISTS trainers CASCADE;
DROP TABLE IF EXISTS pokemons_trainers CASCADE;

CREATE TABLE trainers (
  id SERIAL PRIMARY Key,
  name varchar(255),
  age Integer,
  hometown varchar(255)
);

CREATE TABLE pokemons_trainers (
  pokemons_id Integer REFERENCES pokemons(id),
  trainers_id Integer REFERENCES trainers(id)
);
