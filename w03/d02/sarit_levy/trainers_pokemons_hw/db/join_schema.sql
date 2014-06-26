CREATE TABLE pokemons_trainers(
  trainer_id INTEGER REFERENCES trainers(id),
  pokemon_id INTEGER REFERENCES pokemons(id)
);
