DROP TABLE IF EXISTS pokemons;

CREATE TABLE pokemons(
  id SERIAL PRIMARY KEY,
  name varchar(255),
  hp Integer,
  attack Integer,
  defense Integer,
  speed Integer,
  moves varchar(255),
  image_url varchar(255),
  classification varchar(255),
  species varchar(255),
  height varchar(255),
  happiness Integer
);
