DROP TABLE IF EXISTS players;


CREATE TABLE players(
	id serial PRIMARY KEY,
	name varchar(255),
	team varchar(255),
	skill integer,
	playing boolean
);
