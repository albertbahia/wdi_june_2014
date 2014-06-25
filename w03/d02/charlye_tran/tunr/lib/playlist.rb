require 'active_record'

class Playlist < ActiveRecord::Base
  has_and_belongs_to_many :songs
end
# song1 = Song.new
# song1.name = "Ignition (remix)"

# sweet_jamz = Playlist.new
# sweet_jamz.name = "Suite Jamz"
# sweet_jamz.songs = [song1, song2, ..] #replaces
# sweet_jamz.songs << song5 #pushes song object
# sweet_james.song_id << song5

#changes array of songs - id('s') singular-plural
#can change by song object
  # sweet_jamz.songs = [song1, song2]
#can change by song object's specific id
  # sweet_jamz.song_ids = [88, 1001]
