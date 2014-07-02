require 'active_record'
#require 'pry'

require_relative 'lib/song.rb'
require_relative 'lib/playlist.rb'

ActiveRecord::Base.establish_connection({
	database: 'tunr_db',
	adapter: 'postgresql'
})

s1 = Song.create(name: "I am soca")
s2 = Song.create(name: "Danza Kuduro")
s3 = Song.create(name: "Nwa Baby")
s4 = Song.create(name: "La Tortura")
s5 = Song.create(name: "Shake")

p1 = Playlist.create(name: "Soca")
p2 = Playlist.create(name: "Spanish")

p1.songs = [s1, s2, s3, s4]
p2.songs = [s2, s3, s4]
p2.songs << s5

song1 = Song.find_by(id: 4)
song2 = Song.find_by(id: 5)

song1.playlists
song2.playlists

p1.songs = p2.songs

p1.songs = []

#binding.pry

