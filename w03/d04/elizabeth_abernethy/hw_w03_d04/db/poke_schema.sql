DROP TABLE IF EXISTS pokemons_trainers CASCADE;
DROP TABLE IF EXISTS pokemons;
DROP TABLE IF EXISTS trainers;

create table pokemons(
  id serial primary key,
  name varchar(255) not null,
  hp integer not null,
  attack integer not null,
  defense integer not null,
  speed integer not null,
  moves varchar(255),
  img_url varchar(255),
  classification varchar(255),
  species varchar(255),
  height varchar(255),
  happiness integer
);

CREATE TABLE trainers(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  age INTEGER NOT NULL,
  hometown VARCHAR(255) NOT NULL
);

CREATE TABLE pokemons_trainers (
  pokemon_id INTEGER references pokemons(id),
  trainer_id INTEGER references trainers(id)
);
