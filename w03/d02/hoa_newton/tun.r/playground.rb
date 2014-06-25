require 'active_record'
require 'pry'
require 'active_record'
require_relative 'lib/song.rb'
require_relative 'lib/playlist.rb'

ActiveRecord::Base.establish_connection({
	database: 'tun.r',
	adapter: 'postgresql'
	})
s1 = Song.create({name: 'Telephone'})
s2 = Song.create({name: 'Little stars'})
s3 = Song.create({name: '1234'})
s4 = Song.create({name: 'Green papaya'})
s5 = Song.create({name: 'Love story'})

p1 = Playlist.create({name: 'Kids'})
p2 = Playlist.create({name: 'Adult'})
#p1 = Playlist.all.order(id: :asc).first

p1.songs = [s1, s2, s3, s4]
#p1.songs << s1 << s2 << s3 << s4
p2.songs = [s3, s4, s5]
p2.songs << s1

#find 2 songs by id
song1 = Song.find(3)
song2 = Song.find(5)

# For each song, list all playlists that song belongs to.
song1.playlists.each do |playlist|
	puts playlist.name
end
result_arr = song2.playlists.map do |playlist|
	playlist.name
end
puts result_arr.join("\n")

# In one line, set your first playlist to have the same songs as the second
p1.songs = p2.songs

# Clear your first playlist so it has no songs.
p1.songs = []

binding.pry

Song.destroy_all
Playlist.destroy_all