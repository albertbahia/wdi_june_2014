require 'active_record'
require 'pry'
require_relative 'lib/song'
require_relative 'lib/playlist'

ActiveRecord::Base.establish_connection({
  database: 'tunr_db',
  adapter: 'postgresql'
})

binding.pry



# song1 = Song.new
# song1.name = "Ignition (Remix)"
#
# sweet_jamz = Playlist.new
# sweet_jamz.name = "Suite Jamz"
#
# sweet_jamz.songs
# # [song1, song2, ...]
# sweet_jamz.song_ids
# [3, 9, 12, 22]
#
# sweet_jamz.songs = [song1, song2]
#
# sweet_jamz.song_ids = [88, 1001]
#
#
# sweet_jamz.songs << song5
# sweet_jamz.song_id << 65
