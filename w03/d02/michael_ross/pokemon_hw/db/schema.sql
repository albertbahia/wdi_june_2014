drop table if exists pokemons cascade;
drop table if exists trainers cascade;
drop table if exists pokemons_trainers cascade;

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

create table trainers(
  id serial primary key,
  name varchar(255) not null,
  hometown varchar(255),
  age integer
);

create table pokemons_trainers(
  pokemon_id integer references pokemons(id),
  trainer_id integer references trainers(id)
);
