DROP TABLE IF EXISTS wdinstagram CASCADE;

CREATE TABLE wdinstagram (
	id SERIAL PRIMARY KEY,
	author VARCHAR(255),
	image_url VARCHAR(255),
	date_posted TIMESTAMP,
	caption TEXT
);
