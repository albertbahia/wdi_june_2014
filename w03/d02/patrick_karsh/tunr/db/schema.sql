DROP TABLE IF EXISTS playlists_songs;
DROP TABLE IF EXISTS songs;
DROP TABLE IF EXISTS playlist;


CREATE TABLE songs (
  id SERIAL PRIMARY KEY, 
  name varchar(255)
 	);

CREATE TABLE playlists (
  id SERIAL PRIMARY KEY, 
  name varchar(255)
 	); 
CREATE TABLE playlists_songs (
  song_id INTEGER references songs(id), 
  playlist_id INTEGER references playlists(id)   
 	); 