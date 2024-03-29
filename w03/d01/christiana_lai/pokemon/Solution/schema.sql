DROP TABLE IF EXISTS pokemons;

CREATE TABLE pokemons(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) not null,
  hp INTEGER not null,
  attack INTEGER not null,
  defense INTEGER not null,
  speed INTEGER not null,
  moves VARCHAR,
  img VARCHAR(512),
  classification VARCHAR(255),
  species VARCHAR(255),
  height VARCHAR(255),
  happiness INTEGER
);
