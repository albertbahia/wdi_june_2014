drop table if exists pokemons;
DROP TABLE IF EXISTS trainers;
DROP TABLE IF EXISTS pokemons_trainers;

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


CREATE TABLE trainers (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  age INTEGER,
  hometown VARCHAR(255)
);

CREATE TABLE pokemons_trainers(
  pokemon_id integer references pokemons(id),
  trainer_id integer references trainers(id)
);