DROP TABLE IF EXISTS playlists_songs CASCADE; #this table is listed first because it depends on the next two so should be deleted first if it exists
DROP TABLE IF EXISTS songs CASCADE;  #cascade means if there are any tables that depend on it drop the dependant table first
DROP TABLE IF EXISTS playlists CASCADE;


CREATE TABLE songs(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE playlists(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255)
);


CREATE TABLE playlists_songs(
  song_id INTEGER REFERENCES songs(id),
  playlist_id INTEGER REFERENCES playlists(id)
);
