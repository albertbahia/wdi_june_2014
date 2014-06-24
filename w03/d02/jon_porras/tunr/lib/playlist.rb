require 'active_record'

class Playlist < ActiveRecord::Base
  has_and_belongs_to_many :songs
end


# sweet_jamz.songs
#
# sweet_jamz.songs = [song1, song2]
# sweet_jamz.songs_ids = [88, 1001]
#
# sweet_jamz.songs << song5
# sweet_jamz.song_id << 65
