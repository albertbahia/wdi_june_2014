DROP TABLE if exists playlists_songs CASCADE;
DROP TABLE if exists songs CASCADE;
DROP TABLE if exists playlists CASCADE;

CREATE TABLE songs(
  id serial primary key,
  name varchar(255)
);

CREATE TABLE playlist(
  id serial primary key,
  name varchar(255)
);

CREATE TABLE playlists_songs(
  song_id integer references songs(id),
  playlist_id integer references playlist(id)
);
