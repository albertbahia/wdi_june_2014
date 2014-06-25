drop table if exists pokemons_trainers; 

drop table if exists trainers;

create table trainers(
  id serial primary key,
  name varchar(255) not null,
  age integer not null,
  hometown varchar(255)
);

CREATE TABLE pokemons_trainers (
	pokemon_id integer references pokemons(id),
	trainer_id integer references trainers(id)
);


