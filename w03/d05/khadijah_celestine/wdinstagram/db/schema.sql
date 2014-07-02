DROP TABLE IF EXISTS images CASCADE;
DROP TABLE IF EXISTS users CASCADE;

CREATE TABLE users (
	id SERIAL PRIMARY KEY,
	username VARCHAR(255),
	full_name VARCHAR(255),
	birthday DATE
);

CREATE TABLE images (
	id SERIAL PRIMARY KEY,
	user_id INTEGER REFERENCES users(id),
	image_url VARCHAR(255),
	date_posted DATE,
	caption TEXT
);
