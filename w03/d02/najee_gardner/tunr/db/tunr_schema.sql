DROP TABLE IF EXISTS playlists CASCADE;
DROP TABLE IF EXISTS songs CASCADE;
DROP TABLE IF EXISTS playlists_songs CASCADE;

CREATE TABLE playlists(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE songs(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE playlists_songs(
  playlist_id INTEGER REFERENCES playlists(id),
  song_id INTEGER REFERENCES songs(id)
);
