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
