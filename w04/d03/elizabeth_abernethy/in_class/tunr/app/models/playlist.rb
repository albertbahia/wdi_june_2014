class Playlist < ActiveRecord::Base
  has_and_belongs_to_many :songs

  # Playlists should have a name
  validates(:name, { presence: true })

  # Two playlists should not have the same name
  validates(:name, { uniqueness: true })
  
end
