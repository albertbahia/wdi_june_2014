drop table if exists pokemons;

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
