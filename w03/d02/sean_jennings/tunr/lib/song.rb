
class Song < ActiveRecord::Base

  has_belongs_to_many: playlists

end
