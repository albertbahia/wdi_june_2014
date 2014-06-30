DROP TABLE IF EXISTS play_lists_songs;
DROP TABLE IF EXISTS songs;
DROP TABLE IF EXISTS playlists;

CREATE TABLE songs(
  id SERIAL PRIMARY KEY,
  name varchar(255)
);


CREATE TABLE playlists(
  id SERIAL PRIMARY KEY,
  name varchar(255)
);


CREATE TABLE playlists_songs(
  song_id integer REFERENCES songs(id),
  playlist_id integer REFERENCES playlists(id)
);
