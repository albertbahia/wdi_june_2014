
DROP TABLE IF EXISTS playlists_songs CASCADE;
DROP TABLE IF EXISTS songs CASCADE;
DROP TABLE IF EXISTS playlists CASCADE;

CREATE TABLE songs (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);

CREATE TABLE playlists (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);

CREATE TABLE playlists_songs (
  song_id INTEGER references songs(id),
  playlist_id INTEGER references playlists(id)
)
