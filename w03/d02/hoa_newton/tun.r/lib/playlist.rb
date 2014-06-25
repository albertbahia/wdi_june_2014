
class Playlist < ActiveRecord::Base
	has_and_belongs_to_many :playlists
	# has_many: songs
end

# ActiveRecord::Base.establish_connection({
# 	database: 'tun.r',
# 	adapter: 'postgresql'
# 	})

# song1 = Song.new
# song1.name = 'Ignition (Remix)'

# sweet_jamz = Playlist.new
# sweet_jamz.name = 'Suite Jamz'

# sweet_jamz.song    => [song1, song2...]

# sweet_jamz.song_ids   => [2,3,4,5 ...]

# sweet_jamz.songs = [song1, song2] : over write the sweet_jamz.songs
# sweet_jamz.song_ids = [88, 299]  : over write the song_ids

# sweet_jamz.songs << song5  : add song5 into the array
# sweet_jamz.song_id << 65