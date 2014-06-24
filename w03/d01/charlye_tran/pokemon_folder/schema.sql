DROP TABLE IF EXISTS pokemons;

CREATE TABLE pokemons(
id SERIAL PRIMARY KEY,
name VARCHAR(255),
hp INTEGER,
attack VARCHAR(255),
defense VARCHAR(255),
speed VARCHAR(255),
moves VARCHAR(255),
image_url VARCHAR(255),
classification VARCHAR(255),
species VARCHAR(255),
height VARCHAR(255),
happiness VARCHAR(255)
);