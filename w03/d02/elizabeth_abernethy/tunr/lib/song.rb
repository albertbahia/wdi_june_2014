class Song < ActiveRecord::Base
  has_and_belongs_to_many :playlists
end

# ActiveRecord EXPECTS a table called playlists_songs to exist based on this relationship
