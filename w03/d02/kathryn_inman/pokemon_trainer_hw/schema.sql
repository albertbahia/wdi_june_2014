DROP TABLE IF EXISTS pokemons_trainers;
DROP TABLE IF EXISTS trainers;
DROP TABLE IF EXISTS pokemons;

CREATE TABLE pokemons(
  id SERIAL PRIMARY KEY,
  name varchar(255),
  hp integer,
  attack integer,
  defense integer,
  speed integer,
  moves varchar(255),
  img varchar(255),
  classification varchar(255),
  species varchar(255),
  height integer,
  happiness integer
);


CREATE TABLE trainers(
  id SERIAL PRIMARY KEY,
  name varchar(255),
  age integer,
  hometown varchar(255)
);


CREATE TABLE pokemons_trainers(
  pokemon_id integer REFERENCES pokemons(id),
  trainer_id integer REFERENCES trainers(id)
);
