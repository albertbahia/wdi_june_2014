# Tun.r Exercise

## We Do

As a class we will:

1. Create the project structure
  * `tunr_songs_playlists`
    * `lib`
      * `song.rb`
      * `playlist.rb`
    * `db`
      * `schema.sql`
    * `playground.rb`
2. Create the schema.sql for this problem:
  * **songs** - id, name
  * **playlists** - id, name
  * **playlists_songs** - playlist_id, song_id
3. Create the ActiveRecord class files: `lib/song.rb`, `lib/playlist.rb`
4. Create the playground file (require statements, connect to db, active pry)


## You Do

1. Create five songs.
song1 = Song.create({name: 'Hey Hey My My'})

2. Create 2 playlists.
playlist1 = Playlist.create({name: 'Neil List One'})

3. Add at least 4 songs to your first playlist.
playlist1.songs << song4

4. Add 3 songs to your second playlist in one line.
playlist2.songs << [song1, song2, song3]

5. Add 1 more song to your second playlist.
playlist2.songs << song4

6. Find two songs by id. Call them song1 and song2.
Song.find(1).update(name: 'Song1')
Song.find(2).update(name: 'Song2')

7. For each song, list all playlists that song belongs to.
song3.playlists

song3.playlists

song3.playlists.each do |playlist| puts playlist.name end

8. In one line, set your first playlist to have the same songs as the second
   playlist

   playlist1.songs = playlist2.songs

9. Clear your first playlist so it has no songs.
playlist2.songs = []

playlist1.destroy.songs
