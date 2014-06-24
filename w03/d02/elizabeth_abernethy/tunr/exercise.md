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


# add .explain to any SQL call, it will show you the explanation behind it

## You Do

# Get rid of all songs/playlists to ensure a clean slate
Song.destroy_all
Playlist.destroy_all

#1. Create five songs. X
s1 = Song.create({name: "Rude Boy"})
s2 = Song.create({name: "I Love Soca"})
s3 = Song.create({name: "Game of Thrones Theme Song"})
s4 = Song.create({name: "OK Computer"})
s5 = Song.create({name: "Regulate"})


#2. Create 2 playlists. X
Playlist.create({name: "My Jamz"})           --- it's smarter to catch these in variables
Playlist.create({name: "Screen Music"})

#3. Add at least 4 songs to your first playlist. X
p1 = Playlist.all.order({id: :asc}).first

#same result
p1.songs = [s1, s2, s3, s4]                 # 2 method calls

#equivalent options:
p1.songs << s1 << s2 << s3 << s4            # 5 method calls
p1.songs << s5
p1.songs.push(s5)

#4. Add 3 songs to your second playlist in one line.
p2 = Playlist.all.order({id: :asc})[1]
p2.songs = [s1, s2, s3]

#5. Add 1 more song to your second playlist. X
p2.songs << s5

#6. Find two songs by id. Call them song1 and song2.
song1 = Song.find(3)
song2 = Song.find(5)

#7 - For each song, list all playlists that song belongs to.
puts("Playlists for #{song1.name}")
song1.playlists.each do |playlist|
  puts playlist.name
  end

# [playlist1, playlist2]
# [playlist.name, playlist2.name]
# ["My Jamz, "Screen Music"]
puts("Playlists for #{song2.name}")
list_of_playlist_names = song2.playlists.each do |playlist|
  puts playlist.name
  end

  puts(list_of_playlist_names).join("\n")

#8. In one line, set your first playlist to have the same songs as the second
   playlist

#9. Clear your first playlist so it has no songs.
