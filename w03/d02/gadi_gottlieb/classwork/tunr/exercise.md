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

Song.destroy_all
Playlist.destroy_all


## You Do

1. Create five songs.
    s1 = Song.create({name: "Rude Boy"})
    s2 = Song.create({name: "I Love Soca"})
    s3 = Song.create({name: "Game of Thrones Theme Song"})
    s4 = Song.create({name: "OK Computer"})
    s5 = Song.create({name: "Regulate"})

2. Create 2 playlists.

    Playlist.create({name: "My Jamz"})
    Playlist.create({name: "Screen Music"})

3. Add at least 4 songs to your first playlist.

  p1 = Playlist.all.order({id: :asc}).first
  p1.songs = [s1, s2, s3, s4]
  # p1.songs << s1 << s2 << s3 << s4


4. Add 3 songs to your second playlist in one line.
5. Add 1 more song to your second playlist.
6. Find two songs by id. Call them song1 and song2.
7. For each song, list all playlists that song belongs to.
8. In one line, set your first playlist to have the same songs as the second
   playlist
9. Clear your first playlist so it has no songs.
