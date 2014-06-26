require 'active_record'
require 'pry'
require_relative 'lib/song'
require_relative 'lib/playlist'

ActiveRecord::Base.establish_connection({
  database: 'tunr_db',
  adapter: 'postgresql'
})

#To get rid of all songs/playlists to ensure a clean slate:
Song.destroy_all
Playlist.destroy_all

#Create five songs.
song1=Song.create({name: "You're the One That I Want"})

song2=Song.create({name: "Hey Jude"})

song3=Song.create({name: "White Wedding"})

song4=Song.create({name: "Dreams"})

song5=Song.create({name: "Halo"})

#Create 2 playlists.

playlist1=Playlist.create({name:"Subway Music"})

playlist2=Playlist.create({name:"Workout Music"})

#Add at least 4 songs to your first playlist.
    #can do this Playlist.all.order(:id).first but better to create variable for first playlist
playlist1=Playlist.all.order({:id :asc}).firts # can include .explain at end for a detail query text of what this is doing
    #order asks database to organize the data - databases/activerecord are quicker in getting this done
playlist1.songs = [song1, song2, song3, song4]  #this way is quicker cause has just 2 methods to call
  #can also do: playlist1.songs << song1 <<song2 <<song3 <<song4  #same as playlist1.songs.<<(song1).<<(song2) etc. -this is slower because it runs 4 to 5 methods on each .song and <<

#Add 3 songs to your second playlist in one line.
playlist2.songs = [song2, song3, song4]

#Add 1 more song to your second playlist.
playlist2.songs << song5

# Find two songs by id. Call them song1 and song2.
song1 = Song.find(3)
song2 = Song.find(5)

# For each song, list all playlists that song belongs to.
puts("Playlists for #{song1.name}")
song1.playlists.each do |playlist|
  puts playlist.name
end
#
# In one line, set your first playlist to have the same songs as the second
#    playlist
playlist1.songs = playlist2.songs

# Clear your first playlist so it has no songs.

playlist1.songs = []


binding.pry
