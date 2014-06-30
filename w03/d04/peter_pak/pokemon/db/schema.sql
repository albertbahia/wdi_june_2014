DROP TABLE IF EXISTS pokemons;


CREATE TABLE pokemons (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  hp INTEGER,
  attack INTEGER,
  defense INTEGER,
  speed INTEGER,
  moves VARCHAR(255),
  img VARCHAR(1024),
  classification VARCHAR(255),
  type VARCHAR(255),
  height VARCHAR(255),
  happiness INTEGER
);


--
-- - All pokemon with a speed less than 25 and attack over 30
-- Pokemon.where("speed < '25' AND attack > '30'").map{ |poke| poke.name}
