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


# Get rid of all songs / playlists
Song.destroy_all
Playlist.destroy_all

# Create five songs.

s1 = Song.create({name: "Rude Boy"})
s2 = Song.create({name: "I Love Soca"})
s3 = Song.create({name: "OK Computer"})
s4 = Song.create({name: "GOT THEME"})
s5 = Song.create({name: "Paranoid Android"})

# Create 2 playlists.
p1 = Playlist.create({name: "My jamz"})
p2 = Playlist.create({name: "Screen Music"})

# Add at least 4 songs to your first playlist.
p1 = Playlist.all.order(:id).first
p1.songs = [s1, s2, s3, s4]           # 2 method calls

p1.songs << s1 << s2  << s3 << s4     # 5 method calls

p1.songs.<<(sl).<<(s2)    # calling a method and passing an argument
p1.songs << s1 << s2  << s3 << s4    # same as above (Syntactic sugar)

p1.songs.push(s3)


# Add 3 songs to your second playlist in one line.
p2 = Playlist.all.order({id: :asc})[1]
p2.songs = [s1, s2, s3]


# Add 1 more song to your second playlist.
p2.songs << s4
# Find two songs by id. Call them song1 and song2.

song1 = Playlist.find(2)
song2 = Playlist.find(3)


# For each song, list all playlists that song belongs to.
puts("Playlists for #{song1.name}")
song1.playlists.each do |playlist|
puts playlist.name
end

puts("Playlists for #{song2.name}")
# [playlist1, playlist2]
# [playlist1.name, playlist2.name]
# ["My Jamz", "Screen Music"]

list_of_playlists_names = puts song2.playlists.map do |playlist|
  playlist.name
end

puts lists_of_playlists_name.join("\n")



# In one line, set your first playlist to have the same songs as the second
   playlist
   p1.songs = p2.songs

# Clear your first playlist so it has no songs.

p1.songs = []
