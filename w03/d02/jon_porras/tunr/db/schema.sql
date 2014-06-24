DROP TABLE IF EXISTS playlists_songs CASCADE;
DROP TABLE IF EXISTS songs CASCADE;
DROP TABLE IF EXISTS playlists CASCADE;


CREATE TABLE songs (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE playlists (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE playlists_songs (
  song_id INTEGER REFERENCES songs(id),
  playlist_id INTEGER REFERENCES playlists(id)
);
