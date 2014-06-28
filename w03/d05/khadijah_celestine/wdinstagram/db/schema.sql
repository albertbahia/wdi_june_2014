DROP TABLE IF EXISTS images CASCADE;

CREATE TABLE images (
	id SERIAL PRIMARY KEY,
	author VARCHAR(255),
	image_url VARCHAR(255),
	date_posted DATETIME NOT NULL,
	caption TEXT
);
