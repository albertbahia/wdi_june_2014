require_relative './lib/song'
require_relative './lib/playlist'
require 'pry'

ActiveRecord::Base.establish_connection({
  database: 'tunr_db',
  adapter: 'postgresql'
  })

  # 1. Create five songs.
  song1 = Song.create(name: 'Summertime Sadness')
  song2 = Song.create(name: 'One in a Million')
  song3 = Song.create(name: 'Titanium')

  # 2. Create 2 playlists.
  jamz = Playlist.create(name: 'Slow Jamz')
  jams = Playlist.create(name: 'Fast Jamz')

  # 3. Add at least 4 songs to your first playlist.
  p1 = Playlist.all.order(:id).first #guarantees lowest id, order has the database order

  # 4. Add 3 songs to your second playlist in one line.
  jamz.songs = [song1, song2, song3]     #faster 2 method calls
  jamz.songs << song1 << song2 << song3  #slower 5 method calls

  # 5. Add 1 more song to your second playlist.
  p2 = Playlist.all.order({id: :asc})[1]
  p2.songs << song4

  # 6. Find two songs by id. Call them song1 and song2.

  #2 options
  song1 = Song.find_by(id: 2)
  song1 = Song.find(1) #allows you to find by id

  song1.playlists.each do |playlist|
    puts playlist.name
  end

  song2 = Song.find(2)
  list_of_playlists = song2.playlists.map do |playlist|
    playlist.name #if you use puts here, the return value is nil
  end
  puts list_of_playlists.join{'\n'}

  # 7. For each song, list all playlists that song belongs to.
  song1.playlists

  # 8. In one line, set your first playlist to have the same songs as the second
  #    playlist
  jams.songs = jamz.songs

  # 9. Clear your first playlist so it has no songs.
  p1.songs = []

binding.pry
