DROP TABLE IF EXISTS playlists_songs;
DROP TABLE IF EXISTS playlists;
DROP TABLE IF EXISTS songs;

CREATE TABLE playlists (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255)
	);

CREATE TABLE songs (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255)
	);

CREATE TABLE playlists_songs (
	playlist_id INTEGER REFERENCES playlists(id),
	song_id INTEGER REFERENCES songs(id)
	);