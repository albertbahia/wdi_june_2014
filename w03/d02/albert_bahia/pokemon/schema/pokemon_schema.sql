DROP TABLE IF EXISTS pokemons_trainers CASCADE;
DROP TABLE IF EXISTS pokemons CASCADE;
DROP TABLE IF EXISTS trainers CASCADE;



CREATE TABLE pokemons(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  img VARCHAR(512),
  species VARCHAR(255),
  hp INTEGER NOT NULL,
  attack INTEGER NOT NULL,
  defense INTEGER NOT NULL,
  speed INTEGER NOT NULL,
  moves VARCHAR(512),
  classification VARCHAR(255),
  height VARCHAR(255),
  happiness INTEGER
);

-- Stats: hp, attack, defense, speed => do INTEGER type instead.

CREATE TABLE trainers(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  age INTEGER NOT NULL,
  hometown VARCHAR(255) NOT NULL
);

CREATE TABLE pokemons_trainers(
  pokemon_id INTEGER REFERENCES pokemons(id),
  trainer_id INTEGER REFERENCES trainers(id)
);
