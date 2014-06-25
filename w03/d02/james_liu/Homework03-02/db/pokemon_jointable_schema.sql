DROP TABLE IF EXISTS pokemons_trainers;

CREATE TABLE pokemons_trainers (
pokemon_id INTEGER REFERENCES pokemons(id),
trainer_id INTEGER REFERENCES trainers(id)
);
