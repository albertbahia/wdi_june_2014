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

s1 = Song.create({name: "Song Name"})
x5

2. Create 2 playlists.

playlist1 = Playlist.create({name: "Playlist Name"})
x2

3. Add at least 4 songs to your first playlist.

--> find first playlist
p1 = Playlist.all.order({id: :asc}).first

p1.songs = [s1, s2, s3, s4]

4. Add 3 songs to your second playlist in one line.

p2 = Playlist.all.order({id: :asc})[1]

p2.songs[s2, s3, s4]

5. Add 1 more song to your second playlist.

p2.songs << s5

6. Find two songs by id. Call them song1 and song2.

song1 = Song.find(1)

song2 = Song.find(3)

7. For each song, list all playlists that song belongs to.
  puts "Playlists for #{song1.name}"
  song1.playlists.each do |playlist|
    puts playlist.name
  end

  puts "Playlists for #{song2.name}"
  list_playlists = song2.playlists.map do |playlist|
    playlist.name.join", "
  end
  puts list_playlists

8. In one line, set your first playlist to have the same songs as the second
   playlist

p1.songs = p2.songs

9. Clear your first playlist so it has no songs.

p1.songs = []
