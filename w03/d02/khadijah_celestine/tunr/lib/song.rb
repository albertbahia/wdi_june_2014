class Song < ActiveRecord::Base
	has_and_belongs_to_many :playlists
end
