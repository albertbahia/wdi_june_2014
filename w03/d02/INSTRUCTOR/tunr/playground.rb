require 'active_record'
require 'pry'
require_relative 'lib/song'
require_relative 'lib/playlist'

ActiveRecord::Base.establish_connection({
  database: 'tunr_db',
  adapter: 'postgresql'
})

binding.pry

# Get rid of all songs/playlists to ensure a clean slate
Song.destroy_all
Playlist.destroy_all

# 1. Create five songs.
s1 = Song.create({name: "Rude Boy"})
s2 = Song.create({name: "I Love Soca"})
s3 = Song.create({name: "Game of Thrones Theme Song"})
s4 = Song.create({name: "OK Computer"})
s5 = Song.create({name: "Regulate"})

# 2. Create 2 playlists.
Playlist.create({name: "My Jamz"})
Playlist.create({name: "Screen Music"})

# 3. Add at least 4 songs to your first playlist.
p1 = Playlist.all.order({id: :asc}).first

# Same result
p1.songs = [s1, s2, s3, s4]          # 2 method  calls
# p1.songs << s1 << s2 << s3 << s4   # 5 method calls

# equivalent
# p1.songs << s5
# p1.songs.push(s5)

# 4. Add 3 songs to your second playlist in one line.
p2 = Playlist.all.order({id: :asc})[1]
p2.songs = [s1, s2, s3]

# 5. Add 1 more song to your second playlist.
p2.songs << s5

# 6. Find two songs by id. Call them song1 and song2.
song1 = Song.find(3)
song2 = Song.find(5)

# 7. For each song, list all playlists that song belongs to.
puts("Playlists for #{song1.name}")
song1.playlists.each do |playlist|
  puts playlist.name
end

puts("Playlists for #{song2.name}")
# [playlist1, playlist2]
# [playlist1.name, playlist2.name]
# ["My Jams", "Screen Music"]
result_array = song2.playlists.map do |playlist|
  playlist.name
end

# result_array => ["My Jams", "Screen Music"]
puts result_array.join("\n")

# 8. In one line, set your first playlist to have the same songs as the second
#    playlist
p1.songs = p2.songs

# 9. Clear your first playlist so it has no songs.
p1.songs = []
