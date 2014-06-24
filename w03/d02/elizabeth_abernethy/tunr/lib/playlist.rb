class Playlist < ActiveRecord::Base
  has_and_belongs_to_many :songs
end

=begin
song1 = Song.new
song1.name = "Ignition (Remix)"

sweet_jamz = Playlist.new
sweet_jamz.name = "Suite Jamz"

sweet_jamz.songs
# [song1, song2 ...]
sweet_jamz.song_ids
[3, 9, 12, 22]


# can use objects OR their ids
sweet_jamz.songs = [song1, song2]

sweet_jamz.song_ids = [88, 1001]

sweet_jamz.songs << song5

sweet_jamz.song_id << 65

# to active record, the id is a direct link to the object
=end
